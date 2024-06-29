@extends('layouts.app')
@section('title')
    Check
@endsection
@section('content')
<form method="post" id="myForm" action="{{url('/jawab-soal')}}">
    @csrf
   
</form>
@endsection

@push('addon-script')
    <script>
         document.getElementById("myForm").submit();
    </script>
@endpush