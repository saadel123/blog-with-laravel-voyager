@extends('master')

@section('title')
    {{setting('blog.title')}}
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3 mt-4">
                <h3 class="text-center mb-2">Our categories</h3>
                <div id="list-example" class="list-group">
                    <a class="list-group-item d-flex justify-content-between align-items-center  @if (!$id) active @endif"
                        href="{{ url('/blog') }}">All
                        <span class="badge bg-danger rounded-pill ">{{ $myCategories->count() }} categories</span></a>
                    @foreach ($myCategories as $categories)
                        <a class="list-group-item d-flex justify-content-between align-items-center @if ($categories->id == $id) active @endif"
                            href="{{ url('/blog', $categories->id) }}">{{ $categories->name }}
                            <span class="badge bg-danger rounded-pill ">{{ $categories->posts->count() }}
                                @if ($categories->posts->count() > 1)posts @else post @endif</span></a>
                    @endforeach
                </div>
            </div>
            <div class="col-sm-9 mt-4">
               <!-- <h1 class="text-center">List Of Blogs</h1>-->
                @foreach ($myPosts as $posts)
                    <div>
                        <a href="{{ url('/details/' . $posts->slug) }}">
                            <img src="{{ asset('/storage/' . $posts->image) }}" class="img-fluid rounded"
                                alt="{{ $posts->title }}">
                        </a>
                    </div>
                    <div class="mt-2">
                        <div class="card-body">
                            <a href="{{ url('/details/' . $posts->slug) }}">
                                <h5 class="card-title">{{ $posts->title }}</h5>
                            </a>
                            <p class="card-text">{{ \Illuminate\Support\Str::limit($posts->excerpt, 104, '...') }}
                            </p>
                            <p class="card-text"><small class="text-muted">Created At
                                    {{ $posts->created_at }}</small>
                            </p>
                            <a href="{{ url('/blog', $posts->category_id) }}"><span
                                    class="badge rounded-pill bg-secondary">{{ $posts->category->name}}</span></a><br><br>
                            <div class="btn-group mb-4">
                                <a href="blog-single-post.html" class="btn btn-primary">READ MORE</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center mt-3">
            <li class="page-item">
                {!! $myPosts->links() !!}
            </li>
        </ul>
    </nav>


@endsection
