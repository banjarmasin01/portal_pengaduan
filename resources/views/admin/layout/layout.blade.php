<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta name="_token" content="{{ csrf_token() }}">    
    <title>@yield('title') : {{config('app.name')}}</title>
    <link href="{{asset('public/admin/css/app.min.css')}}" rel="stylesheet">	
	<link href="{{asset('public/admin/css/style.css')}}" rel="stylesheet" />    
    <link href="{{asset('public/admin/css/all-themes.css')}}" rel="stylesheet" />
    <style>
        .light .nav > li > a {
            color: #fff;
        }

        /* spinkit css */
        .sk-cube-grid {
        width: 40px;
        height: 40px;
        margin: 100px auto;
        }

        .sk-cube-grid .sk-cube {
        width: 33%;
        height: 33%;
        background-color: #333;
        float: left;
        -webkit-animation: sk-cubeGridScaleDelay 1.3s infinite ease-in-out;
                animation: sk-cubeGridScaleDelay 1.3s infinite ease-in-out; 
        }
        .sk-cube-grid .sk-cube1 {
        -webkit-animation-delay: 0.2s;
                animation-delay: 0.2s; }
        .sk-cube-grid .sk-cube2 {
        -webkit-animation-delay: 0.3s;
                animation-delay: 0.3s; }
        .sk-cube-grid .sk-cube3 {
        -webkit-animation-delay: 0.4s;
                animation-delay: 0.4s; }
        .sk-cube-grid .sk-cube4 {
        -webkit-animation-delay: 0.1s;
                animation-delay: 0.1s; }
        .sk-cube-grid .sk-cube5 {
        -webkit-animation-delay: 0.2s;
                animation-delay: 0.2s; }
        .sk-cube-grid .sk-cube6 {
        -webkit-animation-delay: 0.3s;
                animation-delay: 0.3s; }
        .sk-cube-grid .sk-cube7 {
        -webkit-animation-delay: 0s;
                animation-delay: 0s; }
        .sk-cube-grid .sk-cube8 {
        -webkit-animation-delay: 0.1s;
                animation-delay: 0.1s; }
        .sk-cube-grid .sk-cube9 {
        -webkit-animation-delay: 0.2s;
                animation-delay: 0.2s; }

        @-webkit-keyframes sk-cubeGridScaleDelay {
        0%, 70%, 100% {
            -webkit-transform: scale3D(1, 1, 1);
                    transform: scale3D(1, 1, 1);
        } 35% {
            -webkit-transform: scale3D(0, 0, 1);
                    transform: scale3D(0, 0, 1); 
        }
        }

        @keyframes sk-cubeGridScaleDelay {
        0%, 70%, 100% {
            -webkit-transform: scale3D(1, 1, 1);
                    transform: scale3D(1, 1, 1);
        } 35% {
            -webkit-transform: scale3D(0, 0, 1);
                    transform: scale3D(0, 0, 1);
        } 
        }
        /* spinkit css */
    </style>

    @yield('css-page')
</head>

<body class="light">        
    <div class="overlay"></div>    
    @include('admin.include.navbar')        
    <div>        
        @include('admin.include.sidebar')
    </div>
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                @yield('content')
            </div>
            <!-- Your content goes here  -->
        </div>
    </section>
    <script src="{{asset('public/assets/vendor/jquery/jquery.min.js')}}"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="{{asset('public/admin/js/app.min.js')}}"></script>    
    <script src="{{asset('public/admin/js/admin.js')}}"></script>
    @yield('js-page')
</body>

</html>