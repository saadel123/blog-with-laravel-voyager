@extends('master')

@section('title')
    {{setting('home.title')}}
@endsection

@section('sliders')
<div class="row">
    <div class="col-md-12">
        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                @foreach ($myPosts as $posts)
              <div class="carousel-item @if($loop->first) active @endif" data-bs-interval="4999">
                <img src="{{ asset('/storage/' . $posts->image) }}" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>{{ $posts->title }}</h5>
                  <p>{{ \Illuminate\Support\Str::limit($posts->excerpt, 100, '...') }}</p>
                </div>
              </div>
              @endforeach

            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
    </div>
</div> 
@endsection

@section('content')

<h1 class="text-center mb-3">Our Blogs</h1>
    <div class="row row-cols-1 row-cols-md-2 g-4 mb-5 ">
      
        @foreach ($myPosts as $posts)
            <div class="col-md-4 mt-20">
                <div class="card">
                    <img src="{{ asset('/storage/' . $posts->image) }}" class="card-img-top" alt="{{ $posts->title }}">
                    <div class="card-body">
                        <h5 class="card-title">{{ $posts->title }}</h5>
                        <p class="card-text">
                            {{ \Illuminate\Support\Str::limit($posts->excerpt, 100, '...') }}
                        </p>
                        <a href="{{ url('/details/' . $posts->slug) }}" class="btn btn-primary">Read More</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>

@endsection

<!--@section('javascripts')
    <script>
        $(document).ready(function() {
            $('.carousel').carousel()
        });
    </script>
@endsection-->
