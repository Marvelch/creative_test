@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Form Candidate') }}</div>

                <div class="card-body">
                    <div class="row form-candidate mb-5">
                        <div class="col-md-6">
                            <img src="https://static.vecteezy.com/system/resources/previews/004/578/780/original/girl-putting-up-sign-for-plan-schedule-free-vector.jpg"
                                class="img-fluid" alt="" srcset="">
                        </div>
                        <div class="col-md-6">
                            <form action="{{URL('candidate')}}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" class="form-control" placeholder="Smith" value="{{ old('name') }}">
                                    {{-- Error message --}}
                                    @if($errors->has('name'))
                                    {{ $errors->first('name') }}
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="">Education</label>
                                    <input type="text" name="education" class="form-control" placeholder="UGM" value="{{ old('education') }}">
                                    {{-- Error message --}}
                                    @if($errors->has('education'))
                                    {{ $errors->first('education') }}
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="">Birthday</label>
                                    <input type="date" name="birthday" id="" class="form-control"
                                        value="{{date('Y-m-d')}}" value="{{ old('experience') }}">
                                    {{-- Error message --}}
                                    @if($errors->has('birthday'))
                                    {{ $errors->first('birthday') }}
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="">Experience</label>
                                    <input type="text" name="experience" class="form-control" placeholder="5 Year" value="{{ old('experience') }}">
                                    {{-- Error message --}}
                                    @if($errors->has('experience'))
                                    {{ $errors->first('experience') }}
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="">Last Position</label>
                                    <input type="text" name="last_position" class="form-control" placeholder="CEO" value="{{ old('last_position') }}">
                                    {{-- Error message --}}
                                    @if($errors->has('last_position'))
                                    {{ $errors->first('last_position') }}
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="">Applied Position</label>
                                    <input type="text" name="applied_position" class="form-control"
                                        placeholder="Senior PHP Developer" value="{{ old('applied_position') }}">
                                    {{-- Error message --}}
                                    @if($errors->has('applied_position'))
                                    {{ $errors->first('applied_position') }}
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="">Top 5 Skills</label>
                                    <input type="text" name="top_skills" class="form-control"
                                        placeholder="Laravel, Mysql, PostgreSQL, Codeigniter, Java" value="{{ old('top_skills') }}">
                                    {{-- Error message --}}
                                    @if($errors->has('top_skills'))
                                    {{ $errors->first('top_skills') }}
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="">Email</label>
                                    <input type="text" name="email" class="form-control" placeholder="smith@gmail.com" value="{{ old('email') }}">
                                    {{-- Error message --}}
                                    @if($errors->has('email'))
                                    {{ $errors->first('email') }}
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="">Phone</label>
                                    <input type="text" name="phone" class="form-control" placeholder="085123456789" value="{{ old('phone') }}">
                                    {{-- Error message --}}
                                    @if($errors->has('phone'))
                                    {{ $errors->first('phone') }}
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="">Resume</label>
                                    <input type="file" name="resume" class="form-control">
                                    {{-- Error message --}}
                                    @if($errors->has('resume'))
                                    {{ $errors->first('resume') }}
                                    @endif
                                </div>
                                <div class="form-group mt-2">
                                    <button type="submit" class="btn btn-primary">Submit Candidate</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection