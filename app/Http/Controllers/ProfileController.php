<?php

namespace App\Http\Controllers;

use App\Http\Helpers\Json;
use App\Models\Profile;
use App\Models\Medias;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\DB;

use function PHPSTORM_META\type;

class ProfileController extends Controller
{
    public function me(Request $request)
    {
        try {
            $user = auth()->user();

            $me = User::entities($request->entities)
                ->findOrFail($user->id);
            return Json::response($me);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return Json::exception('Error Model ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\Illuminate\Database\QueryException $e) {
            return Json::exception('Error Query ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\ErrorException $e) {
            return Json::exception('Error Exception ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        }
    }
    public function edit(Request $request)
    {
        try {
            $data = Profile::where('userId', $request->userId)->first();

            $imageUrl = asset('profile/' . $data->pictures);

            $data->pictures = $imageUrl;

            return Json::response($data);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return Json::exception('Error Model ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\Illuminate\Database\QueryException $e) {
            return Json::exception('Error Query ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\ErrorException $e) {
            return Json::exception('Error Exception ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        }
    }

    public function update(Request $request)
    {
        try {

            $request->validate([
                'pictures' => 'image|mimes:jpeg,png,jpg,gif|max:2048', // Validasi gambar
            ]);

            $data = Profile::find($request->userId);

            if ($data) {
                $medias = null;

                if ($data->mediaId) {
                    $medias = Medias::find($data->mediaId);
                }

                $url = $medias ? $medias->url : null;

                if ($request->pictures != null) {
                    $image = $request->file('pictures');
                    $imageName = time() . '.' . $image->getClientOriginalExtension();
                    $image->move(public_path('profile'), $imageName);


                    // Hapus gambar lama jika ada
                    if ($data->pictures) {
                        unlink(public_path('profile') . '/' . $data->pictures);
                    }
                    // Setel URL gambar baru
                    $url = url('profile/' . $imageName);
                } else {
                    $url = $medias->url;
                }

                if ($medias) {
                    $medias->update([
                        'url' => $url,
                        'type' => $medias->type
                    ]);
                } else {
                    $medias = Medias::create([
                        'url' => $url,
                        'type' => 'profile'
                    ]);
                }

                // dd($request->phoneNumber);
                $data->update([
                    'phoneNumber' => "687567567",
                    'userId' => $request->userId,
                    'jabatan' => $request->jabatan,
                    'name' => $request->name,
                    'mediaId' => $medias->id,
                    'gender' => $request->gender,
                    'address' => $request->address,
                ]);

                return Json::response($data);
            } else {
                return Json::exception($message = 'Data tidak ditemukan');
            }
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            DB::rollBack();
            return Json::exception('Error Model ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\Illuminate\Database\QueryException $e) {
            return Json::exception('Error Query ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\ErrorException $e) {
            return Json::exception('Error Exception ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        }
    }
}
