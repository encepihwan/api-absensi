<?php

namespace App\Http\Controllers;

use App\Http\Helpers\Json;
use App\Models\Attendance;
use App\Models\Medias;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class AttendacesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    public function Attendances(Request $request)
    {
        try {

            DB::beginTransaction();

            $validator = Validator::make($request->all(), [
                'proofOfWork' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
                'attendances' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
                'latitude' => 'required',
                'longtitude' => 'required'
            ]);
            
            if ($validator->fails()) {
                return response()->json($validator->errors()->toJson(), 400);
            }

            // Simpan ofWork ke dalam Medias
            $ofWorkImage = $this->saveImage($request->file('proofOfWork'), 'proofOfWork');

            // Simpan attendances ke dalam Medias
            $attendancesImage = $this->saveImage($request->file('attendances'), 'attendances');

            $data = Attendance::create([
                'userId' => $request->userId,
                'mediaAttendaceId' => $attendancesImage->id,
                'mediaOfWorkId' => $ofWorkImage->id,
                'projectId' => $request->projectId,
                'latitude' => $request->latitude,
                'longtitude' => $request->longtitude,
                'date' => Carbon::now(),
                'type' => $request->action,
                'time' => Carbon::now()->toTimeString()
            ]);

            // dd($attendance);

            DB::commit();

            return Json::response($data);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            DB::rollBack();
            return Json::exception('Error Model ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\Illuminate\Database\QueryException $e) {
            return Json::exception('Error Query ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\ErrorException $e) {
            return Json::exception('Error Exception ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        }
    }

    private function saveImage($file, $type)
    {
        $imageName = time() . '.' . $file->getClientOriginalExtension();
        $file->move(public_path('attendances'), $imageName);

        $media = Medias::create([
            'url' => url('attendances/' . $imageName),
            'type' => $type,
        ]);

        return $media;
    }
}
