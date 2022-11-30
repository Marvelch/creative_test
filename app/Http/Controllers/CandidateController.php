<?php

namespace App\Http\Controllers;

use App\Models\candidate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use PhpParser\Node\Stmt\TryCatch;
use DB;
use Illuminate\Support\Facades\Storage;
Use Alert;

class CandidateController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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

    public function download($id) 
    {
        $items = Candidate::where('id',$id)->first();

        $check = Storage::disk('local')->exists($items->path_resume);

        if($check == false) {
            return redirect()->back();
        }

        return response()->download(storage_path('app/'.$items->path_resume));
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
            Alert::success('Success', 'Success Add New Data');
            return redirect('/home');
        } catch (\Throwable $th) {
            DB::rollBack();
            Alert::error('Error Submit', 'Try Again');
            return redirect()->back();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\candidate  $candidate
     * @return \Illuminate\Http\Response
     */
    public function show(candidate $candidate, $id)
    {
        $items = Candidate::find(decrypt($id));

        return view('pages.detail',compact('items',$items));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\candidate  $candidate
     * @return \Illuminate\Http\Response
     */
    public function edit(candidate $candidate, $id)
    {
        $items = Candidate::find(decrypt($id));

        return view('pages.edit',compact('items',$items));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\candidate  $candidate
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, candidate $candidate, $id)
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

                $fileDelete = Candidate::find(decrypt($id));

                if(Storage::exists($fileDelete->path_resume)) {
                    Storage::delete($fileDelete->path_resume);
                }

                $resume = $request->file('resume');
                $path = $resume->storeAs('public',uniqid().'.'.$resume->extension());

                Candidate::where('id',decrypt($id))->update([
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
                Candidate::where('id',decrypt($id))->update([
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
            Alert::success('Success', 'Success Update Information');
            return redirect('/home');
        } catch (\Throwable $th) {
            DB::rollBack();
            Alert::error('Error Submit', 'Try Again');
            return redirect()->back();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\candidate  $candidate
     * @return \Illuminate\Http\Response
     */
    public function destroy(candidate $candidate)
    {
        //
    }
}
