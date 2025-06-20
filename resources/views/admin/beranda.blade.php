@extends('layouts.app')
@section('title')
    Beranda
@endsection
@section('content')
    <main>

        <!-- dashboard admin lokal -->
        <div class="d-flex justify-content-between page-title mb-3">
            <h4 class="w-4">Beranda (admin lokal)</h4>
        </div>

        <div class="row">
            <div class="col-6">
                <div class="card mb-3">
                    <div class="card-body p-0 ">
                        <table class="table table-bordered mb-0">
                            <tbody>
                                <tr>
                                    <th class="grey lighten-5 font-weight-bold" scope="row">Tanggal Sesi</th>
                                    <th scope="row">05-07-2025</th>
                                </tr>
                                <tr>
                                    <th class=" grey lighten-5 font-weight-bold" scope="row">Total Pengawas</th>
                                    <th scope="row">2</th>
                                </tr>
                                <tr>
                                    <th class=" grey lighten-5 font-weight-bold" scope="row"> Total Ruangan</th>
                                    <th scope="row">Tekom 10, Tekom 11</th>
                                </tr>
                                <tr>
                                    <th class=" grey lighten-5 font-weight-bold" scope="row">Total Peserta</th>
                                    <th scope="row">30</th>
                                </tr>
                                <tr>
                                    <th class=" grey lighten-5 font-weight-bold" scope="row">Lokasi Ujian</th>
                                    <th scope="row">Phinisi Lt 2</th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>



        <!-- dashboard pengawas -->
        <div class="d-flex justify-content-between page-title mb-3">
            <h4 class="w-4">Beranda (pengawas)</h4>
        </div>

        <div class="row">
            <div class="col-6">
                <div class="card">
                    <div class="card-body p-0">
                        <table class="table table-bordered mb-0">
                            <tbody>
                                <tr>
                                    <th class="grey lighten-5 font-weight-bold" scope="row">Tanggal Sesi</th>
                                    <th scope="row">05-07-2025 <span>08.00</span></th>
                                </tr>
                                <tr>
                                    <th class=" grey lighten-5 font-weight-bold" scope="row">Nama Pengawas</th>
                                    <th scope="row">Jumadi mabe parenreng</th>
                                </tr>
                                <tr>
                                    <th class=" grey lighten-5 font-weight-bold" scope="row">Nama Ruangan</th>
                                    <th scope="row">Tekom 10</th>
                                </tr>
                                <tr>
                                    <th class=" grey lighten-5 font-weight-bold" scope="row">Peserta Ujian</th>
                                    <th scope="row">15</th>
                                </tr>
                                <tr>
                                    <th class=" grey lighten-5 font-weight-bold" scope="row">Lokasi Ujian</th>
                                    <th scope="row">Phinisi UNM LT 2</th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>


    </main>
@endsection

@push('addon-script')
@endpush
