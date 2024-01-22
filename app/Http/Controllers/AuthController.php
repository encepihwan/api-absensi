<?php

namespace App\Http\Controllers;

use App\Http\Helpers\Json;
use App\Models\Profile;
use App\Models\RoleHasUser;
use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;



class AuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        $credentials = $request->only('email', 'password');

        // Cek apakah email sudah terdaftar
        $user = User::where('email', $credentials['email'])->entities('roles.role,profile.medias,divisions.division')->first();
        if (!$user) {
            return response()->json(['error' => 'Email not registered'], 401);
        }

        // Cek apakah password sesuai
        if (!auth()->attempt($credentials)) {
            return Json::exception("Invalid password");
        }

        $token = auth()->attempt($credentials);

        $data = [
            'token' => $token,
            'user' => $user
        ];

        return $this->createNewToken($data);
    }

    public function register(Request $request)
    {
        try {
            DB::beginTransaction();
            $validator = Validator::make($request->all(), [
                'name' => 'required|string|between:2,100',
                'userName' => 'required|string',
                'email' => 'required|string|email|max:100|unique:users',
                'password' => 'required|string|confirmed|min:6',
            ]);
            if ($validator->fails()) {
                return response()->json($validator->errors()->toJson(), 400);
            }
            $user = User::create(array_merge(
                $validator->validated(),
                ['password' => bcrypt($request->password)]
            ));

            $profile = Profile::create([
                'userId' => $user->id,
                'name' => $request->name,
            ]);

            foreach ($request->roleId as $value) {
                $roleHas = new RoleHasUser();
                $roleHas->userId = $user->id;
                $roleHas->roleId = $value;
                $roleHas->save();
            }

            DB::commit();

            $data = [
                'user' => $user,
                'profile' => $profile
            ];

            return Json::response($data);
            // return response()->json([
            //     'message' => 'User successfully registered',
            //     'user' => $user,
            //     'profile' => $profile
            // ], 200);
        } catch (ValidationException $ex) {
            DB::rollback();
            return redirect()->back()->withErrors($ex->errors());
        }
    }

    public function changePassword(Request $request)
    {
        try {

            $validator = Validator::make($request->all(), [
                'currentPassword' => 'required|string',
                'newPassword' => 'required|string',
            ]);

            if ($validator->fails()) {
                return response()->json($validator->errors()->toJson(), 400);
            }

            // $user = Auth::user();
            $user = auth()->user();
            if (Hash::check($request->currentPassword, $user->password)) {
                $user->update(['password' => bcrypt($request->newPassword)]);
                $user->profile;

                return Json::response([
                    'message' => 'Password successfully updated',
                    'user' => $user,
                ], 200);
            } else {
                return Json::exception(['error' => 'Current password is incorrect'], 400);
            }
        } catch (ValidationException $ex) {
            return response()->json(['error' => 'An error occurred while changing the password'], 500);
        }
    }

    public function logout()
    {
        auth()->logout();
        return Json::response();
        // return response()->json(['message' => 'User successfully signed out']);
    }

    public function refresh()
    {
        return $this->createNewToken(auth()->refresh());
    }

    public function userProfile(Request $request)
    {
        // $user = User::with(['profile', 'role'])->find($request->userId);

        // if (!$user) {
        //     return response()->json(['message' => 'User not found'], 404);
        // }

        // $responseData = [
        //     'name' => $user->name,
        //     'foto' => $user->profile->foto,
        //     'jabatan' => $user->profile->jabatan,
        //     'email' => $user->email,
        //     'roles' => $user->roles ? $user->roles->pluck('name') : [],
        // ];

        // return response()->json(['user' => $responseData]);

        $user = auth()->user();
        $user->load('profile', 'roles');

        $data = [
            'mediaId' => optional($user->profile)->mediaId,
            'jabatan' => optional($user->profile)->jabatan,
            'name' => $user->name,
            'userName' => $user->name,
            'email' => $user->email,
            'url' => optional(optional($user->profile)->medias)->url,
            'role' => $user->role,
        ];

        return Json::response($data);
    }

    protected function createNewToken($token)
    {

        $responses = [
            'access_token' => $token,
            'token_type' => 'bearer',
            'message' => 'Login Success',
            'status' => 'success',
            'expires_in' => auth()->factory()->getTTL() * 60,
        ];

        return Json::response($responses);
    }
}
