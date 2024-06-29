@extends('layouts.app')

@section('title')
    Token
@endsection 

@section('content')
<main>

        
    <!-- Card -->
    <section class="mb-1">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#"> </i>CAT</a></li>
                <li class="breadcrumb-item active" aria-current="page">Mulai Ujian</li>
            </ol>
        </nav>
    </section>

    {{-- <section>
        <div class="alert alert-judul text-center">
            Sesi Ujian Coba Ke-1 (Pagi)
        </div>
    </section> --}}
    
    <section>
        <div class="card mb-3">
            <div class="card-body">
                <div class="text-center">
                    <h5 style="color: #0058bd; font-weight: 700;">
                      
                        {{$exam['kode_kategori']}}
                      

                     
                    </h5>
                </div>
                <hr>
                <table class="table table-bordered">
                    <thead class="mulai-ujian">
                        <tr>
                            <th scope="col">Nama subtes</th>
                            <th scope="col">Jumlah soal</th>
                            <th scope="col">Durasi</th>
                            <th scope="col">Sisa waktu</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($course as $course)
                        <tr>
                            <th scope="row">{{$course->course['nama_kursus']}}</th>
                            <th>{{$course->total_question}}</th>
                            <th>{{$course->working_time}}</th>
                            @php
                                $data =  DB::table('answers')->where('exam_id', $course->exam_id)->where('kode_kursus', $course->kode_kursus)->where('username',  Auth::user()->username)->first();
                            @endphp
                            @if($data)
                            <th style="color: rgb(255, 62, 4);">{{$data->remaining_time_minute}} Menit {{$data->remaining_time_second}} detik</th>
                            @else
                            <th style="color: rgb(7, 202, 40);">{{$course->working_time}} Menit</th>
                            @endif
                            
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </section>
    <section>
        <div class="card">
            <div class="card-body">
                <div id="alert-token"></div>
                
              
                <div class="text-center">
                    <h5 style="color: #0058bd; font-weight: 700;">
                        Token Ujian
                    </h5>
                </div>
              



                <hr>
                <div class="row">
                    <div class="col-md-3 pl-0 pr-0">
                        <div class="col">
                            <a href="{{url('mulai-ujian')}}" type="button" class="btn btn-outline-primary btn-block"><i
                                    class="fas fa-chevron-left pr-2" aria-hidden="true"></i>Kembali</a>
                        </div>
                    </div>
                    <div class="col-md-3">

                    </div>
                
                    <div class="col-md-3 pr-0 pr-0 text-center">
                       
                            <input type="text" id="token" name="token" class="form-control form-control-lg mb-4"
                                placeholder="Token">
                               
                        </div>
                    <div class="col-md-3 pl-0 pr-0 ">
                        <div class="col">
                            <a  type="button" class="btn btn-primary btn-block save"><i
                                    class="fas fa-sign-in-alt pr-2" aria-hidden="true"></i>Login</a>
                        </div>
                    </div>
                </div>
               
                <div class="alert-sm text-center">
                    Diisi sesuai dengan Token Ujian yang diberikan oleh pengawas
                </div>
               
            </div>
        </div>
    </section>

</main>

<form  method="post" id="myForm" action="{{url('/jawab-soal')}}">
    @csrf
    @if ($category)
    <input type="hidden"  name="kode_kategori" id="kode_kategori" value="{{$category->kode_kategori}}" >
    @endif
</form>
@endsection

@push('addon-script')
<script>
    
       $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
           
        });
      $(".save").click(function() {
        $('#alert-token').html('');
        var token = $('#token').val();
        var kode_kategori = $('#kode_kategori').val();
      
        $.ajax({
            type: "POST",
            url: "{{ url('/token') }}",
            data: ({
                      token,
                      kode_kategori
                    }),
           
            dataType:"json",
            success: function(data) {
                console.log(data);
                if (data.status == true) {
                    
                    document.getElementById("myForm").submit(); 
                } else{
                    $('#alert-token').html(`
                    <div class="alert alert-danger">
                    <h5>
                        <strong>
                            Perhatian
                        </strong>
                    </h5>
                    <p> ` + data.message +` </p>
                </div>
                    
                    `);
                }
            },
           

        });
    });
</script>
@endpush