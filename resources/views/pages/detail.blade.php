@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card mt-5">
                {{-- <div class="card-header">{{ __('Candidate Detail Form Submit') }}</div> --}}

                <div class="card-body">
                    <div class="col-md-12">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Name</th>
                                <th scope="col">Education</th>
                                <th scope="col">Birthday</th>
                                <th scope="col">Experience</th>
                                <th scope="col">Last Position</th>
                                <th scope="col">Applied Position</th>
                                <th scope="col">Top 5 Skill</th>
                                <th scope="col">Email</th>
                                <th scope="col">Phone</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>{{$items->name}}</td>
                                <td>{{$items->education}}</td>
                                <td>{{$items->birthday}}</td>
                                <td>{{$items->experience}}</td>
                                <td>{{$items->last_position}}</td>
                                <td>{{$items->applied_position}}</td>
                                <td>{{$items->top_skill}}</td>
                                <td>{{$items->email}}</td>
                                <td>{{$items->phone}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection