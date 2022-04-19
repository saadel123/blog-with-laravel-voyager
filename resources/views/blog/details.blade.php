@extends('master')
@section('title',$posts->title)
@section('content')
    <div class="row">
        <div class="col-md-12 text-left">
            <a href="{{ url('/blog') }}">Return Back</a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h1>{{ $posts->title }}</h1>
            <img src="{{ asset('/storage/' . $posts->image) }}" alt="{{ $posts->title }}">
            <p>{!! $posts->body !!}</p>
        </div>
    </div>


@endsection
