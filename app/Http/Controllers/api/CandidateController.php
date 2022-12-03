<?php

namespace App\Http\Controllers\api;

use App\Helpers\ApiFormatter;
use App\Http\Controllers\Controller;
use App\Models\candidate;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Storage;
class CandidateController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $items = Candidate::all();

        if($items) {
            return ApiFormatter::createApi(200, 'Success', $items);
        }else{
            return ApiFormatter::createApi(400,'Failed');
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
        $request->validate([
            'name' => 'required|min:2',
            'education' => 'required',
            'birthday' => 'required',
            'experience' => 'required',
            'last_position' => 'required',
            'applied_position' => 'required',
            'top_skills' => 'required',
            'email' => 'required',
            'phone' => 'required|min:10|max:12',
            'resume' => 'required',
        ]);
        
        try {
            $resume = $request->file('resume');
            
            $path = $resume->storeAs('public',uniqid().'.'.$resume->extension());
            Candidate::create([
                'name'  => $request->name,
                'education' => $request->education,
                'birthday' => $request->birthday,
                'experience' => $request->experience,
                'last_position' => $request->last_position,
                'applied_position' => $request->applied_position,
                'top_skill' => $request->top_skills,
                'email' => $request->email,
                'phone' => $request->phone,
                'path_resume' => $path,
            ]);

            DB::commit();
            
            return ApiFormatter::createApi(200, 'Success');
        } catch (\Throwable $th) {
            DB::rollBack();

            return ApiFormatter::createApi(400, $th->getMessage());
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
        //
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
        $request->validate([
            'name' => 'required|min:2',
            'education' => 'required',
            'birthday' => 'required',
            'experience' => 'required',
            'last_position' => 'required',
            'applied_position' => 'required',
            'top_skills' => 'required',
            'email' => 'required',
            'phone' => 'required|min:10|max:12',
        ]);
        
        try {
            $resume = $request->file('resume');
            
            if($resume) {

                $fileDelete = Candidate::find($id);

                if(Storage::exists($fileDelete->path_resume)) {
                    Storage::delete($fileDelete->path_resume);
                }

                $resume = $request->file('resume');
                $path = $resume->storeAs('public',uniqid().'.'.$resume->extension());

                Candidate::where('id',$id)->update([
                    'name'  => $request->name,
                    'education' => $request->education,
                    'birthday' => $request->birthday,
                    'experience' => $request->experience,
                    'last_position' => $request->last_position,
                    'applied_position' => $request->applied_position,
                    'top_skill' => $request->top_skills,
                    'email' => $request->email,
                    'phone' => $request->phone,
                    'path_resume' => $path,
                ]);
            }else {
                Candidate::where('id',$id)->update([
                    'name'  => $request->name,
                    'education' => $request->education,
                    'birthday' => $request->birthday,
                    'experience' => $request->experience,
                    'last_position' => $request->last_position,
                    'applied_position' => $request->applied_position,
                    'top_skill' => $request->top_skills,
                    'email' => $request->email,
                    'phone' => $request->phone
                ]);
            }

            DB::commit();
            
            return ApiFormatter::createApi(200,'Success');
        } catch (\Throwable $th) {
            DB::rollBack();

            return $th->getMessage();
            // return ApiFormatter::createApi(400,'Failed');
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
        $items = candidate::find($id);
        
        if(!$items) {
            return response()->json([
                'status' => 'failed',
                'message' => 'Failed Delete ! Try Again'
            ], 400);

            die;
        }

        $items->delete();

        return response()->json([
            'status' => 'sucess',
            'message' => 'Deleted',
        ], 200);
    }
}
