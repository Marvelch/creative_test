@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="d-flex justify-content-end m-2"><a class="btn btn-primary" href="{{url('/submit')}}"><i class="fas fa-plus"></i> New Entry</a></div>
            <div class="card mt-3">

                <div class="card-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col"></th>
                                <th scope="col">Name</th>
                                <th scope="col">Education</th>
                                <th scope="col">Birthday</th>
                                <th scope="col">Experience</th>
                                <th scope="col">Tools</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($items as $item)
                            <tr>
                                <th scope="row">{{$item->id}}</th>
                                <td>{{$item->name}}</td>
                                <td>{{$item->education}}</td>
                                <td>{{$item->birthday}}</td>
                                <td>{{$item->experience}}</td>
                                <td>
                                    @if(Auth::user()->role == 'hrd') 
                                        <a href="{{url('candidate/detail/'.encrypt($item->id))}}" class="btn btn-secondary text-sm m-1"><i class="fas fa-eye"></i></a>
                                    @else
                                        <a href="{!! url('download', $item->id) !!}" class="btn btn-primary text-sm m-1"><i class="fa-solid fa-download"></i></a><a href="{{url('edit/'.encrypt($item->id))}}" class="btn btn-danger text-sm"><i class="fa-solid fa-pen-to-square"></i></a></td>
                                    @endif
                                    
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection