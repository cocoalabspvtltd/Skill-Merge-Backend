<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- loader-->
    <link href="{{ asset('public/assets/css/pace.min.css') }}" rel="stylesheet" />
    <script src="{{ asset('public/assets/js/pace.min.js') }}"></script>
    <!--favicon-->
    <link rel="icon" href="{{ asset('public/assets/images/favicon.ico') }}" type="image/x-icon">
    <!-- Vector CSS -->
    <link href="{{ asset('public/assets/plugins/vectormap/jquery-jvectormap-2.0.2.css') }}" rel="stylesheet" />
    <!-- simplebar CSS-->
    <link href="{{ asset('public/assets/plugins/simplebar/css/simplebar.css') }}" rel="stylesheet" />
    <!-- Bootstrap core CSS-->
    <link href="{{ asset('public/assets/css/bootstrap.min.css') }}" rel="stylesheet" />
    <!-- animate CSS-->
    <link href="{{ asset('public/assets/css/animate.css') }}" rel="stylesheet" type="text/css" />
    <!-- Icons CSS-->
    <link href="{{ asset('public/assets/css/icons.css') }}" rel="stylesheet" type="text/css" />
    <!-- Sidebar CSS-->
    <link href="{{ asset('public/assets/css/sidebar-menu.css') }}" rel="stylesheet" />
    <!-- Custom Style-->
    <link href="{{ asset('public/assets/css/app-style.css') }}" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>

    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <!-- Styles -->
    @livewireStyles
</head>

<body class="bg-theme bg-theme1">
    <!-- Start wrapper-->
    <div id="wrapper">

        @livewire('sidebar-menu')

        @livewire('navigation-menu')


        <div class="clearfix"></div>

        <div class="content-wrapper">
            <div class="container-fluid">
                {{ $slot }}
            </div>
            <!-- End container-fluid-->
        </div><!--End content-wrapper-->

        @stack('modals')

        @livewireScripts

        <!-- Bootstrap core JavaScript-->
        <script src="{{ asset('public/assets/js/jquery.min.js')}}"></script>
        <script src="{{ asset('public/assets/js/popper.min.js')}}"></script>
        <script src="{{ asset('public/assets/js/bootstrap.min.js')}}"></script>

        <!-- simplebar js -->
        <script src="{{ asset('public/assets/plugins/simplebar/js/simplebar.js')}}"></script>
        <!-- sidebar-menu js -->
        <script src="{{ asset('public/assets/js/sidebar-menu.js')}}"></script>
        <!-- loader scripts -->
        <script src="{{ asset('public/assets/js/jquery.loading-indicator.js')}}"></script>
        <!-- Custom scripts -->
        <script src="{{ asset('public/assets/js/app-script.js')}}"></script>
        <!-- Chart js -->

        <script src="{{ asset('public/assets/plugins/Chart.js/Chart.min.js')}}"></script>

        <!-- Index js -->
        <script src="{{ asset('public/assets/js/index.js')}}"></script>

        <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>

        <script>
            $(document).ready(function() {
                $('#example').DataTable();
            });
          </script>
</body>

</html>
