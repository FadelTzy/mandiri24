@extends('layouts.app')
@section('title')
    Beranda
@endsection
@section('content')
    <main>

        <div class="d-flex justify-content-between page-title mb-3">
            <h4 class="w-4">Beranda</h4>
        </div>


        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between  ">
                            <div class="pr-5 tex">

                                <h5 class="w-5 mb-5">Selamat Datang Di </h5>
                                <h1 class="mb-3 font-weight-bold">Aplikasi CAT MANDIRI UNM TAHUN 2024</h1>
                            </div>
                            <img src="{{ url('cat') }}/img/icons.png" height="200px" alt="">

                        </div>

                    </div>
                    <div class="card-footer text-center bg-primary text-white">
                        <p class="mb-0">
                            SELEKSI CAT MANDIRI UNM TAHUN 2024
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">

                        <div class="alert alert-primary">
                            <h5 class="font-weight-bold mb-0" style="color: #004085;">Kelompok ujian pada Tes Potensi
                                Akademik ini dibagi menjadi:</h5>

                        </div>

                        <div class="alert alert-primary mb-0">
                            <ul style="list-style-type: numeric;">
                                <li>
                                    <p class="mb-1 mt-3">Tes Kemampuan Verbal <span class="font-weight-bold">( 25 Soal -
                                            Waktu 20 Menit )</span></p>
                                    <ul>
                                        <li>
                                            Persamaan kata (sinonim)
                                        </li>
                                        <li>
                                            Lawan kata (antonim)
                                        </li>
                                        <li>
                                            Analogi kata
                                        </li>
                                    </ul>
                                </li>
                                <hr>
                                <li>
                                    <p class="mb-1 mt-3">Tes Kemampuan Numerik <span class="font-weight-bold">( 25 Soal -
                                            Waktu 25 Menit )</span></p>
                                    <ul>
                                        <li>
                                            Deret angka
                                        </li>
                                        <li>
                                            Aljabar dan Aritmatika
                                        </li>
                                        <li>
                                            Geometrik
                                        </li>
                                    </ul>
                                </li>
                                <hr>
                                <li>
                                    <p class="mb-1 mt-3">Tes Kemampuan Penalaran Logis <span class="font-weight-bold">( 10
                                            Soal - Waktu 10 Menit )</span></p>
                                    <ul>
                                        <li>
                                            Penalaran logis
                                        </li>
                                        <li>
                                            Penalaran analitis
                                        </li>

                                    </ul>

                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </main>
@endsection

@push('addon-script')
@endpush
