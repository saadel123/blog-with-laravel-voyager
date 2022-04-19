<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Elghanemy saad">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{ asset('assests/css/'.setting('site.theme').'.min.css') }}">
    <!-- kandiro had stylesheet bach lkan chi theme spesific kayban ghir fchi page spesific kanapplikiwh sinnon mkaykbanch-->
    @yield('stylesheet')
    <title>@yield('title')</title>
</head>
<body>

    @include('partials.navbar')
    @yield('sliders')
    
    <div class="container mt-4">
        @yield('content')
    </div>

    @include('partials.footer')
    @yield('javascripts')
    <script src="{{ asset('assests/js/jquery.min.js') }}"></script>
    <script src="{{ asset('assests/js/bootstrap.min.js') }}"></script>
</body>

</html>
