<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title')</title>

   {{-- style --}}
   @stack('prepend-style')

   @include('includes.style') 

   @stack('addon-style')
</head>

<body class="fixed-sn bg-content light-blue-skin">
  {{-- sidebar --}}
  @include('includes.sidebar')

  {{-- Page Content --}}
 @yield('content')

 {{-- Footer --}}
 @include('includes.footer')
   
 

  
 <div class="modal2">

    <!-- Place at bottom of paIge -->
</div>


    {{-- Script --}}
    @stack('prepend-script')

    @include('includes.script')
    
    @stack('addon-script')
</body>

</html>