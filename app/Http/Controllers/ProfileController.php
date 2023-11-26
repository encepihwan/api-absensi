<?php

namespace App\Http\Controllers;

use App\Models\Profile;
use App\Models\Medias;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

use function PHPSTORM_META\type;

class ProfileController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    public function edit(Request $request)
    {
        try {
            $data = Profile::where('userId', $request->userId)->first();

            $imageUrl = asset('profile/' . $data->pictures);

            $data->pictures = $imageUrl;

            return response()->json([
                'status' => 'success',
                'message' => 'success add data',
                'data' => $data
            ]);
        } catch (ValidationException $ex) {
            return redirect()->back()->withErrors($ex->errors());
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
                }else{
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

                return response()->json(['message' => 'Data berhasil diperbarui']);
            } else {
                return response()->json(['message' => 'Data tidak ditemukan'], 404);
            }
        } catch (ValidationException $ex) {
            return redirect()->back()->withErrors($ex->errors());
        }
    }
}
