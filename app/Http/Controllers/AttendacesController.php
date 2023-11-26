<?php

namespace App\Http\Controllers;

use App\Models\Attendance;
use App\Models\Medias;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
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
            
            // $request->validate([
            //     'proofOfWork' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            //     'attendances' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            //     'latitude' => 'required',
            //     'langtitude' => 'required'
            // ]);
            // dd($request->userId);
            
            
            // Simpan ofWork ke dalam Medias
            $ofWorkImage = $this->saveImage($request->file('proofOfWork'), 'proofOfWork');

            // Simpan attendances ke dalam Medias
            $attendancesImage = $this->saveImage($request->file('attendances'), 'attendances');
            
            $attendance = Attendance::create([
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
                       
            return response()->json([
                'message' => 'User successfully Attendances',
                'status' => 'success',
                'data' => $attendance
            ], 200);

        } catch (ValidationException $ex) {
            DB::rollback();
            return redirect()->back()->withErrors($ex->errors());
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
