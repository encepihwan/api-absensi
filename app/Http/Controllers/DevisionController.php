<?php

namespace App\Http\Controllers;

use App\Http\Helpers\Json;
use App\Models\Devision;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class DevisionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        try {
            if (isset($request->limit)) {
                $data = $this->filter($request);
            } else {
                $data = Devision::all();
            }

            return Json::response($data);
        } catch (ValidationException $ex) {
            return redirect()->back()->withErrors($ex->errors());
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
                'name' => 'required|string',
            ]);
            if ($validator->fails()) {
                return response()->json($validator->errors()->toJson(), 400);
            }

            $user = Devision::create(array_merge(
                $validator->validated()
            ));

            return response()->json([
                'status' => 'success',
                'message' => 'success add data',
                // 'data' => $data,
            ]);
        } catch (ValidationException $ex) {
            return redirect()->back()->withErrors($ex->errors());
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

            $data = Devision::where('id', $id)->first();
            return response()->json([
                'status' => 'success',
                'message' => 'success',
                'data' => $data,
            ]);
        } catch (ValidationException $ex) {
            return redirect()->back()->withErrors($ex->errors());
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
                'name' => 'required|string',
            ]);
            if ($validator->fails()) {
                return response()->json($validator->errors()->toJson(), 400);
            }

            $data = Devision::where('id', $id)->update([
                'name' => $request->name
            ]);

            return response()->json([
                'status' => 'success',
                'message' => 'success update data',
                // 'data' => $data,
            ]);
        } catch (ValidationException $ex) {
            return redirect()->back()->withErrors($ex->errors());
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

            Devision::where('id', $id)->delete();
            return response()->json([
                'status' => 'success',
                'message' => 'success delete data',
                // 'data' => $data,
            ]);
        } catch (ValidationException $ex) {
            return redirect()->back()->withErrors($ex->errors());
        }
    }

    public function filter(Request $request)
    {
        $data = Devision::paginate($request->limit != "" ? $request->limit : 10);

        return $data;
    }
}
