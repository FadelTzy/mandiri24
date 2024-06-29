@extends('layouts.app')
@section('title')
    Mulai Ujian
@endsection
@section('content')
<main>
    <div class="d-flex justify-content-between page-title mb-3">
        <h4 class="w-4">Ujian</h4>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">

                <li class="breadcrumb-item"><a href="#"> </i>CAT</a></li>
                <li class="breadcrumb-item active" aria-current="page">Login</li>
                <li class="breadcrumb-item active" aria-current="page">Ujian</li>
            </ol>
        </nav>
    </div>
    <div class="row">
        <div class="col-md-3">
            <div class="card">
                <div class="card-body">
                    <div class="text-center">
                        <!-- <i class="fas fa-user-tie icon-akun-ujian"></i> -->
                        @php
                            $foto = DB::table('students')->where('username',Auth::user()->username)->first();
                             $file_5 = 'file-peserta/' . $foto->foto;
                        @endphp
                        @if (is_file($file_5 ))
                        <img src="{{url('file-peserta')}}/{{$foto->foto}}"  width="50%" alt="">
                        @else
                        <img src="{{url('file-peserta')}}/default.jpg" width="50%" alt="">
                        @endif
                        <p class="w-5  mt-4 mb-2">
                            {{Auth::user()->name}}
                        </p>
                        <p class=" p-sm text-muted">
                            {{Auth::user()->username}}
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-9">
            <div class="row">
                <div class="col-md-6">
                    <div class="card ">
                        <div class="card-body">
                            <div class="text-center">
                                <img src="{{url('cat')}}/img/tutorial.png" width="200px" alt="">
                                <p class="mt-3 p-sm">
                                   Tutorial penggunaan aplikasi ketika ujian sedang berlangsung
                                </p>
                                <a href="{{url('tutorial-ujian')}}" type="button " class="btn btn-md  btn-amber">Tutorial
                                    Ujian</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card ">
                        <div class="card-body">
                            <div class="text-center">
                                <img src="{{url('cat')}}/img/icon-ujian.png" width="155px" alt="">
                                <p class="mt-3 p-sm">
                                    Untuk memulai ujian, jika anda belum mengetahui penggunaan aplikasi ujian, silahkan Anda mencoba Tutorial Ujian terlebih dahulu.
                                </p>

                            
                             <a href="{{url('token')}}" type="button " class="btn btn-md btn-block mb-2  btn-primary">Mulai Ujian</a>
                           

                                {{-- <a href="{{url('token')}}" type="button " class="btn btn-md btn-block mb-2  btn-primary">Ujian Akademik</a>
                                <a href="{{url('token')}}" type="button " class="btn btn-md btn-block mb-2  btn-primary">Ujian Kepribadian</a>
                                <a href="{{url('token')}}" type="button " class="btn btn-md btn-block  btn-primary">Ujian Minat</a> --}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>   
        </div>
    </div>
    <!-- Card -->
    
    <!-- Card -->

</main>


@endsection