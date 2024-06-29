<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Jawab Soal</title>


    <link href="{{ url('cat') }}/css/fontawesome/css/all.css" rel="stylesheet">

    <link rel="stylesheet" href="{{ url('cat') }}/css/bootstrap.min.css">

    <link rel="stylesheet" href="{{ url('cat') }}/css/mdb.min.css">

    <link rel="stylesheet" href="{{ url('cat') }}/css/style.css">


    <style type="text/css">
        .ajax-loading {
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            z-index: 9999;
            background: #6f6464;
            opacity: 0.75;
            color: #fff;
            text-align: center;
            font-size: 25px;
            padding-top: 300px;
            display: none;
        }

        .hidden-opsi {
            display: none !important;
        }
    </style>

</head>

<body style="background-color: #ffffff;">
    <div class="container-fluid">
        <section>
            <nav class="navbar navbar-custom navbar-expand-lg fixed-top bg-body">
                <div class="row my-lg-0 ml-auto">
                    <div class="col-md-2 pl-0">
                        {{-- <h5 class="bold text-blue">CAT</h5>
                        <p class="mb-0" style="margin-top: -8px; font-size: 13px; font-weight: 400;">Universitas Negeri
                            Makassar
                        </p> --}}
                    </div>
                    <div class="col-md-10 pl-0">
                        <div class=" d-sm-flex align-items-center justify-content-between">
                            <div class="d-flex">
                                <div class="text-left " style="padding-left: 7px;">
                                    <p style=" font-size: 12px; margin-bottom: 0.5rem;">Nomor Soal
                                    </p>
                                    <h5 class="bold mb-0 nmr-soal" style="margin-top: -8px;"> </h5>
                                </div>
                                <div class="text-left ml-4">
                                    <p style=" font-size: 12px; margin-bottom: 0.5rem;">Sisa Waktu
                                    </p>
                                    <h5 class="bold mb-0" style="margin-top: -8px;" id="timer"> </h5>
                                </div>

                            </div>

                        </div>

                    </div>
                </div>
            </nav>
        </section>

        <div class="row">

            <div class="col-md-2 pl-0 pr-0" style="z-index: 1040;">
                <div class="bg-blue">
                    <div class="scrollable-pilihan scrollable thin">
                        <div class="card mb-3">
                            <div class="card-header text-center">
                                <img src="{{ url('logo.png') }}" height="70px">
                                <!-- <h1 class="mt-2">LOGO</h1> -->
                                {{-- <img src="{{url('logo.png')}}"> --}}
                            </div>
                            <div class="card-body text-center">
                                <!-- <i class="fas fa-user-tie icon-akun-ujian"></i> -->
                                @php
                                    $foto = DB::table('students')
                                        ->where('username', Auth::user()->username)
                                        ->first();
                                    $file_5 = 'file-peserta/' . $foto->foto;
                                @endphp
                                @if (is_file($file_5))
                                    <img src="{{ url('file-peserta') }}/{{ $foto->foto }}" width="50%"
                                        alt="">
                                @else
                                    <img src="{{ url('file-peserta') }}/default.jpg" width="50%" alt="">
                                @endif
                                <p class="w-5  mt-4 mb-2">
                                    {{ $student['nama'] }}
                                </p>
                                <p class=" p-sm text-muted">
                                    {{ $student['username'] }}
                                </p>
                            </div>
                        </div>

                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="text-center ">
                                    <h5 class="nama-ujian mb-0">{{ $data['course']->nama_kursus }}</h5>
                                    {{-- <p class="mt-0  ket">Amsterdam Institute</p> --}}
                                    <p class="mt-0  ket">{{ $exam['kode_kategori'] }}
                                    </p>
                                    <hr class="mt-0 ml-0 mr-0" style=" height: 1.5px; margin-top: 14px;">
                                    <div class="row text-center navigasi-soal ">
                                        {{-- <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor tombol-nomor-active">
                                                1
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                2
                                            </div>
        
                                        </div> --}}



                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-10 pl-0 pr-0 bg-body">
                <!-- Soal -->


                <div id="view_soal_full">

                </div>

                <section class="pilihan">
                    <form id="form">
                        <div id="opsi-jawaban">

                        </div>

                        <div class="d-flex flex-row justify-content-between" style="width: 1200px">
                            <div>
                            <a href="#" onclick="return back();" class="btn btn-bg-custom btn-sm mt-0 mb-0"
                                style="margin-left: -1px; font-weight: 700; font-size: 12px;  color: rgb(241, 241, 241);"><i
                                    class="fas fa-chevron-left pr-3" aria-hidden="true"></i>
                                Sebelumnya</a>
                            <a href="#" onclick="return next();" class="btn btn-bg-custom btn-sm mt-0 mb-0"
                                style="margin-left: -1px; font-weight: 700; font-size: 12px;  color: rgb(241, 241, 241);">
                                Selanjutnya<i class="fas fa-chevron-right pl-3" aria-hidden="true"></i></a>
                            </div>
                            <a href="#" onclick="return kirimjawapan();"
                                class="btn btn-danger btn-sm mt-0 mb-0"
                                style="margin-left: -1px; font-weight: 700; font-size: 12px;  color: rgb(241, 241, 241);">
                                Selesaikan Subtest<i class="fa fa-exclamation-triangle pl-3" aria-hidden="true"></i></a>
                        </div>
                    </form>

                </section>
            </div>

        </div>

    </div>

    <div class="nomor-soal-sekarang">

    </div>

    <form method="post" id="myForm" action="{{ url('/jawab-soal') }}">
        @csrf

    </form>



    <script type="text/javascript" src="{{ url('cat') }}/js/jquery.min.js"></script>

    <script type="text/javascript" src="{{ url('cat') }}/js/popper.min.js"></script>

    <script type="text/javascript" src="{{ url('cat') }}/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="{{ url('cat') }}/js/mdb.min.js"></script>

    <script type="text/javascript">
        const total_qustion = "{{ $data['jumlah_soal'] }}";
        const id_answer = "{{ $data['answer'] }}";
        setInterval(save_time, 60000);
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            get();
            buka(1);
        });

        // menampilkan timer dengan id timer
        document.getElementById('timer').innerHTML = " {{ $data['jam'] }}" + ":" + "{{ $data['menit'] }}" + ":" +
            "{{ $data['detik'] }}";
        // menjalankan timer
        startTimer();

        function kirimjawapan() {
            data = confirm("Klik ok untuk mengakhiri sesi ujian dan lanjut ke sesi berikutnya ");
            if (data) {
                $.ajax({
                type: "POST",
                dataType: "json",
                data: ({
                    time: 0,
                    id_answer,
                    kode_kategori: "{{ $exam['kode_kategori'] }}"

                }),
                url: "{{ url('save-time-finish') }}",
                beforeSend: function() {

                    $('.ajax-loading').show();
                }
            }).done(function(response) {

                $('.ajax-loading').hide();
                // jika nilainya true maka lanjut ke subtes berikutnya
                if (response.status == true) {
                    var url = "{{ url('subtes') }}/{{ $exam['kode_kategori'] }}";
                    var res_url = encodeURI(url);
                    window.location = res_url;
                } else {
                    // selesai dengan kembali ke url jawab soal->selesai
                    document.getElementById("myForm").submit();
                }


            });
            }
        
        }

        function startTimer() {
            var presentTime = document.getElementById('timer').innerHTML;
            var timeArray = presentTime.split(/[:]+/);

            var j = timeArray[0];
            var m = timeArray[1];
            var s = checkSecond((timeArray[2] - 1));
            if (s == 59) {
                if (m != 0) {
                    m = m - 1;
                }
            }
            if ((m == 0 && s == 1)) {
                if (j != 0) {
                    j = j - 1;
                    m = 59;
                    s = 59;
                }

            }

            document.getElementById('timer').innerHTML =
                j + ":" + m + ":" + s;
            setTimeout(startTimer, 1000);

            // menyimpan waktu telah selesai
            if (j == 0 && m == 0 && s == 0) {

                $.ajax({
                    type: "POST",
                    dataType: "json",
                    data: ({
                        time: 0,
                        id_answer,
                        kode_kategori: "{{ $exam['kode_kategori'] }}"

                    }),
                    url: "{{ url('save-time-finish') }}",
                    beforeSend: function() {

                        $('.ajax-loading').show();
                    }
                }).done(function(response) {

                    $('.ajax-loading').hide();
                    // jika nilainya true maka lanjut ke subtes berikutnya
                    if (response.status == true) {
                        var url = "{{ url('subtes') }}/{{ $exam['kode_kategori'] }}";
                        var res_url = encodeURI(url);
                        window.location = res_url;
                    } else {
                        // selesai dengan kembali ke url jawab soal->selesai
                        document.getElementById("myForm").submit();
                    }


                });
            }
        }

        // pengecekan waktu detiknya
        function checkSecond(sec) {
            if (sec < 10 && sec >= 0) {
                sec = "0" + sec
            };
            if (sec < 0) {
                sec = "59"
            };
            return sec;
        }


        // menampilkan soal dengan mengirimkan id soal
        function get(id_soal) {

            $.ajax({
                type: "POST",
                dataType: "json",
                data: ({
                    id: id_answer,
                    id_soal,

                }),
                url: "{{ url('/get-soal') }}",
                beforeSend: function() {
                    $('.ajax-loading').show();
                }
            }).done(function(response) {
                $('.ajax-loading').hide();
                // samping kiri
                $('.navigasi-soal').html(response.soal);
                // semua sial
                $('#view_soal_full').html(response._view_soal);
                // opsi soal
                $('#opsi-jawaban').html(response.opsi);
                // membuka soal soal dengan nomor soal buka id soal
                buka(response.nomor_1);


            });

        }



        function buka(soal) {

            $('.nomor-soal-sekarang').html(`<div  class="ambil-nomor" data-nomor="${soal}" ></div>`);
            // navigasi nomor
            $('.non-aktif').removeClass('tombol-nomor-active');
            $('#aktifkan' + soal).addClass('tombol-nomor-active');
            // soal
            $('.hidden-soal').hide();
            $('#_view_soal' + soal).show();
            // opsi
            $('.tambah-hidden-opsi').addClass('hidden-opsi');
            $('._view_opsi' + soal).removeClass('hidden-opsi');
            $('.nmr-soal').html(soal);


        }

        function next() {

            const nomor = $('.ambil-nomor').data('nomor') + 1;
            if (nomor <= total_qustion) {
                buka(nomor);
            }
            return false;
        }

        function back() {
            const nomor = $('.ambil-nomor').data('nomor') - 1;
            if (nomor != 0) {
                buka(nomor);
            }
            return false;
        }


        //  menyimpan jawaban satu
        function save(data) {
            var presentTime = document.getElementById('timer').innerHTML;
            var timeArray = presentTime.split(/[:]+/);
            var j = timeArray[0];
            var m = timeArray[1];
            var s = timeArray[2];
            var menit = 0;
            var detik = 0;
            if (j != 0) {
                menit = j * 60;
            }
            $.ajax({
                type: "POST",
                dataType: "json",
                data: ({
                    id_soal: data.split(",")[0],
                    opsi: data.split(",")[1],
                    id_answer,
                    menit: parseInt(m) + parseInt(menit),
                    detik: parseInt(s) + parseInt(detik),
                }),
                url: "{{ url('/save-answer') }}",
                success: function(data) {
                    get($('.ambil-nomor').data('nomor'));
                }
            })
        }

        // menyimpan waktu dalam kurung waktu  1 menit
        function save_time() {
            var presentTime = document.getElementById('timer').innerHTML;
            var timeArray = presentTime.split(/[:]+/);
            var j = timeArray[0];
            var m = timeArray[1];
            var s = timeArray[2];
            var menit = 0;
            var detik = 0;
            if (j != 0) {
                menit = j * 60;
            }
            $.ajax({
                type: "POST",
                dataType: "json",
                data: ({
                    id_answer,
                    menit: parseInt(m) + parseInt(menit),
                    detik: parseInt(s) + parseInt(detik),
                }),
                url: "{{ url('save-time') }}",
                success: function(data) {

                }
            })


        }
    </script>
</body>

</html>
