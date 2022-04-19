<ul class="navbar-nav me-auto">
    @foreach ($items as $item)
        <li class="nav-item">
            <a class="nav-link active text-white" href="{{ $item->url }}">{{$item->title}} 
                <span class="visually-hidden">(current)</span>
            </a>
        </li>
    @endforeach
</ul>
