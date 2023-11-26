<?php

namespace App\Http\Controllers;

use App\Models\Role;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct() {
        $this->middleware('auth:api');
    }

    public function index()
    {
        try{
            $data = Role::paginate(10);

            return response()->json([
                'status' => 'success',
                'message' => 'success',
                'data' => $data,
            ]);
        }catch(ValidationException $ex){
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
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try{
            Role::create($request->all());
            return response()->json([
                'status' => 'success',
                'message' => 'success add data',
            ]);
        }catch(ValidationException $ex){
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
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        try{
            $data = Role::find($id);
            
            return response()->json([
                'status' => 'success',
                'message' => 'success add data',
                'data' => $data
            ]);
        }catch(ValidationException $ex){
            return redirect()->back()->withErrors($ex->errors());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try{

            $data = Role::find($id);
            $data->update([
                'name' => $request->name,
            ]);
    
            return response()->json([
                'status' => 'success',
                'message' => 'success update data',
            ]);

        }catch(ValidationException $ex){
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
        try
        {
            $data = Role::find($id)->delete();  
            return response()->json([
                'status' => 'success',
                'message' => 'success delete data',
            ]);

        }catch(ValidationException $ex){
            return redirect()->back()->withErrors($ex->errors());
        }
    }
}
