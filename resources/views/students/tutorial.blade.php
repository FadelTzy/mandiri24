<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Tutorial</title>
    <!-- MDB icon -->
    <link rel="icon" href="{{'cat'}}/img/mdb-favicon.ico" type="image/x-icon">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="{{'cat'}}/css/bootstrap.min.css">
    <!-- Material Design Bootstrap -->
    <link rel="stylesheet" href="{{'cat'}}/css/mdb.min.css">
    <!-- Your custom styles (optional) -->
    <link rel="stylesheet" href="{{'cat'}}/css/style.css">
</head>

<body style="background-color: #ffffff;">

    <div class="kontent">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <div class="title-tutorial-1 fadeIn" id="titletutorial-1">
                        <div class="text-center">
                            <h1 class="text-w">Selamat Datang</h1>
                            <p>Berikut adalah tutorial dari penggunaan aplikasi ketika ujian sedang berlangsung</p>
                        </div>
                        <a type="button" onclick="btn1()"
                            class="btn btn-tutorial btn-outline-success btn-sm btn-rounded "
                            style="margin-left: 100px;">Next</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-8">
                    <div class="title-tutorial-3 fadeIn" id="titletutorial-3">
                        <p>Ini adalah nama paket ujian yang sedang berlangsung</p>
                        <button type="button" onclick="btn3()"
                            class="btn btn-tutorial btn-outline-success btn-sm btn-rounded">Next</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-8">
                    <div class="title-tutorial-2 fadeIn " id="titletutorial-2">
                        <p>Bagian ini berisi foto, nomor dan nama peserta yang sedang ujian</p>
                        <a href="#" type="button" onclick="btn2()"
                            class="btn btn-tutorial btn-outline-success btn-sm btn-rounded">Next</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-8">
                    <div class="title-tutorial-4 fadeIn" id="titletutorial-4">
                        <p>Bagian ini berisi daftar soal pada paket soal ini</p>
                        <a href="#" type="button" onclick="btn4()"
                            class="btn btn-tutorial btn-outline-success btn-sm btn-rounded">Next</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                </div>
                <div class="col-md-6">
                    <div class="title-tutorial-5 fadeIn" id="titletutorial-5">
                        <p>Ini adalah sisa waktu dari paket soal yang sedang berlangsung</p>
                        <a href="#" type="button" onclick="btn5()"
                            class="btn btn-tutorial btn-outline-success btn-sm btn-rounded">Next</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                </div>
                <div class="col-md-6">
                    <div class="title-tutorial-6 fadeIn" id="titletutorial-6">
                        <p>Bagian ini berisi informasi nomor soal yang sedang ditampilkan pada paket soal ini</p>
                        <a href="#" type="button" onclick="btn6()"
                            class="btn btn-tutorial btn-outline-success btn-sm btn-rounded">Next</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                </div>
                <div class="col-md-6">
                    <div class="title-tutorial-7 fadeIn" id="titletutorial-7">
                        <p>Ini adalah tombol pilihan untuk menjawab </p>
                        <a href="#" type="button" onclick="btn7()"
                            class="btn btn-tutorial btn-outline-success btn-sm btn-rounded">Next</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                </div>
                <div class="col-md-6">
                    <div class="title-tutorial-8 fadeIn" id="titletutorial-8">
                        <p>Tombol ini untuk menampilkan soal sebelumnya dan soal selanjutnya</p>
                        <a href="#" type="button" onclick="btn8()"
                            class="btn btn-tutorial btn-outline-success btn-sm btn-rounded">Next</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <div class="title-tutorial-9 fadeIn" id="titletutorial-9">
                        <div class="text-center">
                            <h1 class="text-w">SELESAI</h1>
                            <a type="button" href="{{url('mulai-ujian')}}"
                                class="btn btn-tutorial btn-outline-success btn-sm btn-rounded ">Finish</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="container-fluid">
        <section>
            <nav class="navbar navbar-custom navbar-expand-lg fixed-cs" style="background-color: transparent;">
                <div class="row my-lg-0 ml-auto">
                    <div class="col-md-2 pl-0">
                    </div>
                    <div class="col-md-10 pl-0">
                        <div class="tutorial-cs tutorial-6 fadeIn" id="tutorial-6">
                            <div class="card">
                                <div class="card-body card-body-cs">
                                    <div class="text-right">
                                        <p style=" font-size: 12px; margin-bottom: 0.5rem;">Nomor Soal
                                        </p>
                                        <h5 class="bold mb-0 nmr-soal" style="margin-top: -8px;">1</h5>
                                    </div>
                                </div>
                            </div>
                            <img src="{{'cat'}}/img/tl.png" alt="">
                        </div>
                        <div class="tutorial-cs tutorial-5 fadeIn" id="tutorial-5">
                            <div class="card">
                                <div class="card-body card-body-cs">
                                    <div class="text-left">

                                        <p style=" font-size: 12px; margin-bottom: 0.5rem;">Sisa Waktu
                                        </p>
                                        <h5 class="bold mb-0" style="margin-top: -8px;">00:33:04</h5>
                                    </div>
                                </div>
                            </div>
                            <img src="{{'cat'}}/img/tl.png" alt="">
                        </div>
                        <div class=" d-sm-flex align-items-center justify-content-between">
                            <div class="d-flex">
                                <div class="text-left " style="padding-left: 7px;">
                                    <p class="text-b" style=" font-size: 12px; margin-bottom: 0.5rem;" >Nomor Soal
                                    </p>
                                    <h5 class="bold mb-0 nmr-soal-cs text-b" style="margin-top: -8px;">1</h5>
                                </div>
                                <div class="text-left ml-4">
                                    <p class="text-b" style=" font-size: 12px; margin-bottom: 0.5rem;">Sisa Waktu
                                    </p>
                                    <h5 class="bold mb-0 text-b" style="margin-top: -8px;">00:33:04</h5>
                                </div>
                            </div>
                            <!-- <img class="mr-4" src="{{'cat'}}/img/lg-ams.png " class="ml-3" width="70px" alt=""> -->
                        </div>
                    </div>
                </div>
            </nav>
        </section>

        <div class="row">
            <div class="col-md-2 pl-0 pr-0" style="overflow: unset;">
                <div class="bg-blue">
                    <div class="scrollable-pilihan scrollable thin">
                        <div class="card mb-3" style="overflow: unset;" >
                            <div class="tutorial-cs tutorial-1 fadeIn text-center" id="tutorial-1">
                                <!-- <h1 class="mt-2 text-w">LOGO</h1>  -->
                                <img src="{{url('logo.png')}}" height="70px">
                                <img class="panah" src="{{'cat'}}/img/tl.png" alt="">
                            </div>
                            <div class="card-header text-center">
                                <!-- <img  src="{{'cat'}}/img/lg-simulasi.png" width="100%" alt=""> -->
                                <!-- <h1 class="mt-2">LOGO</h1> -->
                                <img src="{{url('logo.png')}}" height="70px">
                            </div>
                            <div class="card tutorial-2 fadeIn" id="tutorial-2">
                                <div class="card-body text-center">
                                    <i class="fas fa-user-tie icon-akun-ujian"></i>
                                    <p class="w-5  mt-4 mb-2">
                                        Nama peserta 
                                    </p>
                                    <p class=" p-sm text-muted">
                                        12392829029393
                                    </p>
                                </div>
                                <img class="img-line" src="{{'cat'}}/img/l.png" alt="">
                            </div>
                            <div class="card-body text-center">
                                <i class="fas fa-user-tie icon-akun-ujian"></i>
                                <p class="w-5  mt-4 mb-2">
                                    Nama peserta 
                                </p>
                                <p class=" p-sm text-muted">
                                    12392829029393
                                </p>
                            </div>
                        </div>
                      
                        
                        <div class="card mb-3 " style="overflow: unset;">
                            <div class="card tutorial-3 fadeIn" id="tutorial-3">
                                <div class="card-body text-center">
                                    <h5 class="nama-ujian mb-0">Akademik</h5>
                                    <p class="mt-0 mb-0 pb-0 ket">{{ config('app.name') }}</p>
                                </div>
                                <img src="{{'cat'}}/img/bl.png" alt="">
                            </div>
                            <div class="card tutorial-4 fadeIn" id="tutorial-4">
                                <div class="card-body">
                                    <div class="row text-center ">
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor tombol-nomor-active">
                                                1
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                2
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                3
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                4
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor ">
                                                5
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                6
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor tombol-nomor-active">
                                                7
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                8
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                9
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                10
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                11
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                12
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                13
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                14
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                15
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                16
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                17
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                18
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                19
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                20
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                21
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                22
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                23
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                24
                                            </div>
        
                                        </div>
                                       
        
        
                                    </div>
                                </div>
                                <img src="{{'cat'}}/img/bl.png" alt="">
    
                            </div>
                            <div class="card-body">
                                <div class="text-center ">
                                    <h5 class="nama-ujian mb-0">Akademik</h5>
                                    <p class="mt-0  ket">{{ config('app.name') }}</p>
                                    <hr class="mt-0 ml-0 mr-0" style=" height: 1.5px; margin-top: 14px;">
                                    <div class="row text-center ">
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor tombol-nomor-active">
                                                1
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                2
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                3
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                4
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor ">
                                                5
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                6
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor tombol-nomor-active">
                                                7
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                8
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                9
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                10
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                11
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                12
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                13
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                14
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                15
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                16
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                17
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                18
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                19
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                20
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                21
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                22
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                23
                                            </div>
        
                                        </div>
                                        <div class="col-md-3 pl-0 pr-0 mr-0 ml-0">
                                            <div class="tombol-nomor">
                                                24
                                            </div>
        
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-10 pl-0 pr-0 bg-body">
                <div class="scrollable">
                    <div class="card">
                        <div class="card-body">
                            <p class="text-justify soal-bold">Banyak ungkapan dalam dunia politik. Ungkapan itu
                                dipergunakan
                                untuk
                                menamai
                                atau memberi label.
                                Salah satu ungkapan yang masih sangat dikenali umum adalah politik sebagai panglima.
                                Ungkapan
                                ini memiliki konotasi yang negatif. Bahkan, ungkapan tersebut memiliki potensi
                                menakutkan
                                masyarakat. Konon, dahulu ungkapan itu mengandung ancaman, khususnya bagi pihak yang
                                tidak
                                sepaham dalam ideologi politik.</p>
                            <p class="text-justify soal-bold">Banyak ungkapan dalam dunia politik. Ungkapan itu
                                dipergunakan
                                untuk
                                menamai
                                atau memberi label.
                                Salah satu ungkapan yang masih sangat dikenali umum adalah politik sebagai panglima.
                                Ungkapan
                                ini memiliki konotasi yang negatif.</p>


                            <p class="soal-bold">Ide pokok bacaan di atas adalah ….</p>

                            <!-- <img src="img/gmbr.jpg" style="width: 50%; padding-bottom: 15px;" alt=""> -->

                            <ul class="soal-bold">
                                <li>
                                    politik sebagai panglima
                                </li>
                                <li>
                                    ungkapan dalam bidang politik
                                </li>
                                <li>
                                    ketakutan masyarakat terhadap ungkapan di bidang politik
                                </li>
                                <li>
                                    ketidak-sepahaman dalam memilih ideologi politik
                                </li>
                                <li>
                                    tujuan ungkapan di bidang politik
                                </li>
                            </ul>

                        </div>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>

                </div>
                <section class="pilihan-t">
                    <div class="tutorial-7 fadeIn" id="tutorial-7">
                        <div class="d-flex flex-row hidden">
                            <div class="tombol-jawaban active">
                                A
                            </div>
                            <div class="tombol-jawaban ">
                                B
                            </div>
                            <div class="tombol-jawaban">
                                C
                            </div>
                            <div class="tombol-jawaban">
                                D
                            </div>
                            <div class="tombol-jawaban cs">
                                E
                            </div>
                        </div>
                        <img src="{{'cat'}}/img/bl.png" alt="">
                    </div>
                    <div class="d-flex flex-row hidden mb-3">
                        <div class="tombol-jawaban active">
                            A
                        </div>
                        <div class="tombol-jawaban">
                            B
                        </div>
                        <div class="tombol-jawaban">
                            C
                        </div>
                        <div class="tombol-jawaban">
                            D
                        </div>
                        <div class="tombol-jawaban">
                            E
                        </div>
                    </div>
                    <div class="tutorial-8 fadeIn" id="tutorial-8">
                        <div class="d-flex flex-row">

                            <a href="#" class="btn btn-bg-custom btn-sm mt-0 mb-0"
                                style="margin-left: -1px; font-weight: 700; font-size: 12px;  color: rgb(241, 241, 241);"><i
                                    class="fas fa-chevron-left pr-3" aria-hidden="true"></i>
                                Sebelumnya</a>
                            <a href="selesai.html" class="btn btn-bg-custom btn-sm mt-0 mb-0"
                                style="margin-left: -1px;  margin-right: -1px; font-weight: 700; font-size: 12px;  color: rgb(241, 241, 241);">
                                Selanjutnya<i class="fas fa-chevron-right pl-3" aria-hidden="true"></i></a>

                        </div>
                        <img src="{{'cat'}}/img/bl.png" alt="">
                    </div>
                    <div class="d-flex flex-row">
                        <a href="landing_subtes.html" class="btn btn-bg-custom btn-sm mt-0 mb-0"
                            style="margin-left: -1px; font-weight: 700; font-size: 12px;  color: rgb(241, 241, 241);"><i
                                class="fas fa-chevron-left pr-3" aria-hidden="true"></i>
                            Sebelumnya</a>
                        <a href="selesai.html" class="btn btn-bg-custom btn-sm mt-0 mb-0"
                            style="margin-left: -1px; font-weight: 700; font-size: 12px;  color: rgb(241, 241, 241);">
                            Selanjutnya<i class="fas fa-chevron-right pl-3" aria-hidden="true"></i></a>

                    </div>

                </section>
            </div>

        </div>
    </div>


    
    <script>
        function btn1() {
            document.getElementById("titletutorial-1").style.display = "none";
            document.getElementById("tutorial-1").style.display = "none";
            document.getElementById("titletutorial-2").style.display = "block";
            document.getElementById("tutorial-2").style.display = "block";
        }

        function btn2() {
            document.getElementById("titletutorial-2").style.display = "none";
            document.getElementById("tutorial-2").style.display = "none";
            document.getElementById("titletutorial-3").style.display = "block";
            document.getElementById("tutorial-3").style.display = "block";

        }

        function btn3() {
            document.getElementById("titletutorial-3").style.display = "none";
            document.getElementById("tutorial-3").style.display = "none";
            document.getElementById("titletutorial-4").style.display = "block";
            document.getElementById("tutorial-4").style.display = "block";
        }

        function btn4() {
            document.getElementById("titletutorial-4").style.display = "none";
            document.getElementById("tutorial-4").style.display = "none";
            document.getElementById("titletutorial-5").style.display = "block";
            document.getElementById("tutorial-5").style.display = "block";
        }

        function btn5() {
            document.getElementById("titletutorial-5").style.display = "none";
            document.getElementById("tutorial-5").style.display = "none";
            document.getElementById("titletutorial-6").style.display = "block";
            document.getElementById("tutorial-6").style.display = "block";
        }

        function btn6() {
            document.getElementById("titletutorial-6").style.display = "none";
            document.getElementById("tutorial-6").style.display = "none";
            document.getElementById("titletutorial-7").style.display = "block";
            document.getElementById("tutorial-7").style.display = "block";
        }

        function btn7() {
            document.getElementById("titletutorial-7").style.display = "none";
            document.getElementById("tutorial-7").style.display = "none";
            document.getElementById("titletutorial-8").style.display = "block";
            document.getElementById("tutorial-8").style.display = "block";
        }

        function btn8() {
            document.getElementById("titletutorial-8").style.display = "none";
            document.getElementById("tutorial-8").style.display = "none";
            document.getElementById("titletutorial-9").style.display = "block";

        }
    </script>
    <!-- jQuery -->
    <script type="text/javascript" src="{{'cat'}}/js/jquery.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="{{'cat'}}/js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="{{'cat'}}/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="{{'cat'}}/js/mdb.min.js"></script>
    <!-- Your custom scripts (optional) -->
    <script type="text/javascript"></script>

</body>

</html>