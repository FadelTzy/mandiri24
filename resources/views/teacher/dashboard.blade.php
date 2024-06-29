@extends('layouts.app')
@section('title')
    Beranda
@endsection
@section('content')
<main>

     <!-- dashboard pengawas -->
     <div class="d-flex justify-content-between page-title mb-3">
        <h4 class="w-4">Beranda</h4>
    </div>

    <div class="row">
        <div class="col-6">
            <div class="card">
                <div class="card-body p-0">
                    <table class="table table-bordered mb-0">       
                        <tbody>
                            {{-- <tr>
                                <th class="grey lighten-5 font-weight-bold" scope="row">Tanggal Sesi</th>
                                <th scope="row">05-07-2021 <span>08.00</span></th>
                            </tr> --}}
                           
                            <tr>
                                <th class=" grey lighten-5 font-weight-bold" scope="row">Nama Ruangan</th>
                                <th scope="row">{{$pengawas->nama}}</th>
                            </tr>
                            <tr>
                                <th class=" grey lighten-5 font-weight-bold" scope="row">Peserta Ujian</th>
                                <th scope="row">{{$jumlah}}</th>
                            </tr>
                            <tr>
                                <th class=" grey lighten-5 font-weight-bold" scope="row">Sesi</th>
                                <th scope="row">Sesi - {{$pengawas->kode_sesi}}</th>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</main>

@endsection