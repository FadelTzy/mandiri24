@extends('layouts.app')
@section('title')
    Server
@endsection
@section('content')
<main>
    <!-- <div class="d-flex justify-content-between page-title mb-3">
        <h4 class="w-4">Soallllssss</h4>
    </div> -->
    

    <div class="row mb-3">
        <div class="col-md-5" id="tombol-soal" >
            <div class="card">
                <div class="card-body text-center">
                    <h5>
                        Download paket ujian
                    </h3>
                    <div class="mb-3">
                    <small style="font-weight: 300;">Periode CAT Mandiri 2025</small></div>
                    <div>
                        <button class="btn btn-success btn-sm m-0 mb-2"   type="button" onclick="download_soal(); return false;" data-mdb-ripple-color="dark">
                            <i class="fas fa-check mr-2"></i>Download
                    </button>
                    </div>
                    
                   
                    <small class="text-muted">{{date('d-M-Y')}} </small>
                    <hr/>
                    <div class="alert alert-dark mb-0">
                        <div>
                            <p class="mb-0">
                                Total Soal Server Pusat <span class="font-weight-bold text-danger" id="jumlah_soal_pusat"></span>
                            </p>
                        </div>
                        <div>
                            <p class="mb-0">
                                Berhasil didownload <span class="font-weight-bold">{{$soal}}</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     
        <div class="col-md-7" id="tombol-user">
            <div class="card">
                <div class="card-body text-center">
                    <h5>
                        Sinkronisasi User
                    </h3>
                    <div class="mb-3">
                    <small style="font-weight: 300;">Periode CAT Mandiri 2025</small></div>
                    <div>
                        <button onclick="sinkronisasi_user(); return false;" class="btn btn-primary btn-sm m-0 mb-2" type="button" id="button-addon2" data-mdb-ripple-color="dark">
                            <i class="fas fa-upload mr-2"></i></i>Sinkronisasi User
                    </button>
                    </div>
                   
                    <small class="text-muted">{{date('d-M-Y')}} </small>
                    <hr/>
                    <div class="row">
                        <div class="col-6">
                            <div class="alert alert-dark mb-0">
                               <div>
                                <p class="mb-0 ">
                                    Total Pengawas Server Pusat <span class="font-weight-bold text-danger" id="jumlah_pengawas_pusat"></span>
                                </p>
                               </div>
                               <div>
                                <p  class="mb-0">
                                    Sinkronisasi Pengawas <span class="font-weight-bold">{{$pengawas}}</span>
                                </p>
                               </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="alert alert-dark mb-0">
                                <div>
                                    <p class="mb-0">
                                        Total Peserta Server Pusat <span class="font-weight-bold text-danger" id="jumlah_peserta_pusat"></span>
                                    </p>
                                </div>
                                <div>
                                    <p class="mb-0">
                                        Sinkronisasi Peserta <span class="font-weight-bold">{{$peserta}}</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {{--  --}}

        @foreach ($ruangan as $ruang)
        <div class="col-md-12 mt-3">
            <div class="card">
                <div class="card-body">
                   <div class="row">
                       {{-- loop --}}
                       <div class="col-12">
                           <div class="alert alert-dark">
                               <h6 class="mb-0 font-weight-bold">
                               {{$ruang->nama_ruangan}}
                               </h6>
                           </div>
                       </div>
                       
                       @php
                          $jawaban = DB::table('view_pengawas_user_hari')
                            ->where('kode_ruangan', $ruang->kode_ruangan)
                            // ->where('kode_sesi', $ruang->kode_sesi)
                            ->whereDate('ujian_mulai', date('Y-m-d'))
                            ->get();
                        //    echo json_encode($jawaban);
                       @endphp

                       

                       @foreach ($jawaban as $ck)
                        <div class="col-md-4">
                            <div class="card"  style="border: 1px solid #d6d8d9 ">
                                <div class="card-body text-center" >
                                    <h5>
                                        Upload hasil ujian
                                    </h3>
                                    <div class="mb-3">
                                    <small style="font-weight: 300;">{{$ck->nama_sesi}}</small></div>
                                    <div>
                                        <button class="btn btn-primary btn-sm m-0 mb-2" type="button" id="button-addon2"  onclick="kirim_jawaban('{{$ck->kode_ruangan}}','{{$ck->kode_sesi}}','{{$ck->ujian_mulai}}'); return false;" data-mdb-ripple-color="dark">
                                            <i class="fas fa-upload mr-2"></i></i>Upload
                                    </button>
                                    </div>
                                
                                    <small class="text-muted">{{date('d-M-Y')}} </small>
                                    <hr/>
                                    <ol class="list-group list-group-numbered">
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                        <div class="ms-2 me-auto">
                                            Total hadir
                                        </div>
                                        <span class="badge bg-primary rounded-pill">@php
                                          $total =  DB::table('students')
                                                ->where('kode_ruangan', $ck->kode_ruangan)
                                                ->where('kode_sesi', $ck->kode_sesi)
                                                ->where('status', '1')
                                                ->count();
                                                echo $total;
                                        @endphp</span>
                                        </li>

                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="ms-2 me-auto">
                                                Total peserta menjawab
                                            </div>
                                            <span class="badge bg-warning rounded-pill">
                                                @php
                                            $total =  DB::table('kirim_jawaban')
                                                    ->where('kode_ruangan', $ck->kode_ruangan)
                                                    ->where('kode_sesi', $ck->kode_sesi)
                                                    ->count();
                                                    echo $total/3;
                                            @endphp
                                            </span>
                                        </li>
                                 
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="ms-2 me-auto">
                                                Total peserta
                                            </div>
                                            <span class="badge bg-primary rounded-pill">
                                                @php
                                            $total =  DB::table('students')
                                                    ->where('kode_ruangan', $ck->kode_ruangan)
                                                    ->where('kode_sesi', $ck->kode_sesi)
                                                    ->count();
                                                    echo $total;
                                            @endphp
                                            </span>
                                        </li>
                                       
                                        <li class="list-group-item d-flex justify-content-between align-items-start" style="background-color: #fed6dd">
                                            <div class="ms-2 me-auto text-danger">
                                                Total jawaban
                                            </div>
                                            <span class="badge bg-danger rounded-pill">
                                                @php
                                              $total =  DB::table('kirim_jawaban')
                                                    ->where('kode_ruangan', $ck->kode_ruangan)
                                                    ->where('kode_sesi', $ck->kode_sesi)
                                                    ->count();
                                                    echo $total;
                                            @endphp
                                            </span>
                                            </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start" style="background-color: #d6fed6">
                                        <div class="ms-2 me-auto">
                                            Berhasil diupload
                                        </div>
                                        <span class="badge bg-success rounded-pill" id="{{$ck->kode_ruangan}}{{$ck->kode_sesi}}" >0</span>
                                        
                                        </li>
                                      
                                    </ol>
                                    
                            
                                </div>
                            </div>
                    </div>
                       @endforeach
                     
                    
                       
                   </div>
                </div>
            </div>
        </div>
      
        @endforeach
      
     
    </div>
</main>




@endsection

@push('addon-script')
    <script>


        $(document).ready(function () {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
            $('#tombol-soal').hide();
            $('#tombol-user').hide();
            get_jumlah();
            jumlah_jawaban();
            
            
            });

            function get_jumlah() {
                $.get("{{ url('get-jumlah') }}"  , function (data) {
                    if (data.status=true) {
                        $('#jumlah_pengawas_pusat').html(data.jumlah_pengawas);
                        $('#jumlah_soal_pusat').html(data.jumlah_soal);
                        $('#jumlah_peserta_pusat').html(data.jumlah_peserta);
                        console.table(data)
                        if (data.is_active ==1) {
                            $('#tombol-soal').show();
                            $('#tombol-user').show();
                        }
                } 
                });
            }

            
            function jumlah_jawaban() {
                $.get("{{ url('total-jawaban') }}"  , function (data) {
                    if (data.status=true) {
                    data.total_jawaban.forEach(element => {
                        // console.log(element.kode_ruangan+element.kode_sesi);
                        $('#'+element.kode_ruangan+element.kode_sesi).html(element.jml_jwb_pusat);
                    });
                } 
                });
            }

            function kirim_jawaban(kode_ruangan,kode_sesi,ujian_mulai) {
                $.ajax({
                    type: "POST",
                    data: ({
                        kode_ruangan,
                        kode_sesi,
                        ujian_mulai
                            }),
                    url: "{{ url('/kirim-hasil-jawaban') }}",
                    dataType:"json",
                    success: function(data) {
                        console.log(data);
                     location.reload();
                    },
                    error: function(xhr){
                       console.log(xhr);
                    }

                });
            }


        function download_soal() {
            $.get("{{ url('download-soal') }}"  , function (data) {
                if (data.status=true) {
                    Swal.fire(
                        'Good job!',
                        data.message,
                        'success'
                        ).then(function(env) {
                            location.reload();
                        });
                } else{
                    Swal.fire(
                        'Gagal!',
                        data.message,
                        'error'
                        );
                }
        });
        }

        function sinkronisasi_user() {
            $.get("{{ url('sinkronisasi-user') }}"  , function (data) {
                if (data.status=true) {
                    Swal.fire(
                        'Good job!',
                        data.message,
                        'success'
                        ).then(function(env) {
                            location.reload();
                        });
                } else{
                    Swal.fire(
                        'Gagal!',
                        data.message,
                        'error'
                        );
                }
        });
        }
    </script>
@endpush