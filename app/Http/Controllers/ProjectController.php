<?php

namespace App\Http\Controllers;

use App\Models\Profile;
use App\Models\Project;
use App\Http\Helpers\Json;
use App\Models\Attendance;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        try {
            $project = Project::filterByField('devisionId', $request->division_id)
                ->entities($request->entities)
                ->filterByField('status', $request->status)
                ->paginate($request->input('paginate', 10));

            return Json::response($project);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return Json::exception('Error Model ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\Illuminate\Database\QueryException $e) {
            return Json::exception('Error Query ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\ErrorException $e) {
            return Json::exception('Error Exception ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'devisionId' => 'required|integer',
                'userId' => 'required|integer',
                'projectNo' => 'required|string',
                'startdate' => 'required|date',
                'targetdate' => 'required|date',
                'cost' => 'required|integer',
                'status' => 'required|string',
                'rowStatus' => 'required|boolean',
                'address' => 'required|string',
                'latitude' => 'required|string',
                'longtitude' => 'required|string',
                'name' => 'required|string',
            ]);

            if ($validator->fails()) {
                return Json::response($validator->errors()->toJson(), 400);
            }

            $data = Project::create(array_merge(
                $validator->validated()
            ));
            return Json::response($data);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return Json::exception('Error Model ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\Illuminate\Database\QueryException $e) {
            return Json::exception('Error Query ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\ErrorException $e) {
            return Json::exception('Error Exception ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try {
            $data = Project::where('id', $id)->first();
            return Json::response($data);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return Json::exception('Error Model ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\Illuminate\Database\QueryException $e) {
            return Json::exception('Error Query ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\ErrorException $e) {
            return Json::exception('Error Exception ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $validator = Validator::make($request->all(), [
                'devisionId' => 'required|integer',
                'userId' => 'required|integer',
                'projectNo' => 'required|string',
                'startdate' => 'required|date',
                'targetdate' => 'required|date',
                'cost' => 'required|integer',
                'status' => 'required|string',
                'rowStatus' => 'required|boolean',
                'address' => 'required|string',
                'latitude' => 'required|string',
                'longtitude' => 'required|string'
            ]);

            if ($validator->fails()) {
                return Json::exception($validator->errors()->toJson(), 400);
            }

            $data = Project::findOrFail($id);
            $data->name = $request->input('name', $data->name);
            $data->startdate = $request->input('startdate', $data->startdate);
            $data->targetdate = $request->input('targetdate', $data->targetdate);
            $data->cost = $request->input('cost', $data->cost);
            $data->status = $request->input('status', $data->status);
            $data->rowStatus = $request->input('rowStatus', $data->rowStatus);
            $data->address = $request->input('address', $data->address);
            $data->latitude = $request->input('latitude', $data->latitude);
            $data->longtitude = $request->input('longtitude', $data->longtitude);


            return Json::response($data);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return Json::exception('Error Model ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\Illuminate\Database\QueryException $e) {
            return Json::exception('Error Query ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\ErrorException $e) {
            return Json::exception('Error Exception ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            Project::where('id', $id)->delete();
            return Json::response();
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return Json::exception('Error Model ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\Illuminate\Database\QueryException $e) {
            return Json::exception('Error Query ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\ErrorException $e) {
            return Json::exception('Error Exception ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        }
    }

    public function filter(Request $request)
    {
        $data = Project::paginate($request->limit != "" ? $request->limit : 10);

        return $data;
    }

    public function global_function(Request $request)
    {
        try {
            $data = Project::where('devisionId', $request->devisionId)->get();
            return Json::response($data);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return Json::exception('Error Model ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\Illuminate\Database\QueryException $e) {
            return Json::exception('Error Query ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\ErrorException $e) {
            return Json::exception('Error Exception ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        }
    }

    public function detailProject(Request $request)
    {
        try {
            $dateNow = Carbon::now()->toDateString();
            $project = Project::where('id', $request->projectId)->first();
            $userId = $project->userId;
            // dd($userId, $dateNow);
            $attendance = Attendance::where('date', $dateNow)
                ->where('userId', $userId)
                ->get();

            $data = [
                'project' => $project,
                'attendance' => $attendance
            ];

            return Json::response($data);
        } catch (\Illuminate\Database\Eloquent\ModelNotFoundException $e) {
            return Json::exception('Error Model ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\Illuminate\Database\QueryException $e) {
            return Json::exception('Error Query ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        } catch (\ErrorException $e) {
            return Json::exception('Error Exception ' . $debug = env('APP_DEBUG', false) == true ? $e : '');
        }
    }
}
