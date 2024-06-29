@extends('layouts.app')

@section('title')
    Kursus Soal
@endsection

@section('content')
<main>

    <!-- Card -->
    <div class="row">
        <div class="col-md-8">

            <section class="mb-1">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#"> </i>CAT</a></li> 
                        <li class="breadcrumb-item active" aria-current="page">Kursus Soal</li>
                    </ol>
                </nav>
            </section>

            <div class="card mt-3">
                <div class="card-header pb-4 pt-4 d-flex justify-content-between">
                    <p class="mb-0">Data kursus Soal</p>
                <a class="btn btn-info btn-sm mr-0" type="button" href="{{url('kursus')}}"  >
                        Tambah Kursus</a>
                </div>
                <div class="card-body">
                    <table id="tabel" class="table table-sm table-bordered tb-cs">
                        <thead>
                            <tr>
                                <th class="text-center" width="10" scope="col">No</th>
                                <th scope="col">Nama Mata Pelajaran</th>
                                <th scope="col">Jumlah Soal</th>
                                <th scope="col">Aksi</th>
                            
                            </tr>
                        </thead>
                        <tbody>

                           @foreach ($course as $course)
                               <tr>
                               <td>{{$loop->iteration}}</td>
                               <td>{{$course->nama_kursus}}</td>
                               <td>
                                  @php
                                      echo DB::table('questions')->where('kode_kursus', $course->kode_kursus)->count();
                                  @endphp
                               </td>
                               <td>
                                <div class="d-flex justify-content-center">
                                    <a type="button" href="{{url('mapel-soal/soal')}}/{{$course->kode_kursus}}" class="btn btn-icon btn-icon-primary px-3"><i
                                            class="fas fa-eye btn-icon-primary" aria-hidden="true"></i></a>
                                   
                                </div>
                               
                               </td>
                               </tr>
                           @endforeach
                          
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

  
    </div>
    <!-- end card -->

    <div class="col-md-8"> <hr style="background-color: #6610f2;  height: 1px;"> </div>


     <!-- Card kepribadian -->
     <div class="row">
        <div class="col-md-8">

    
            <div class="card mt-2">
                <div class="card-header pb-4 pt-4 d-flex justify-content-between">
                    <p class="mb-0">Data Soal Kepribadian & Minat</p>
            
                </div>
                <div class="card-body">
                    <table id="tabel" class="table table-sm table-bordered tb-cs">
                        <thead>
                            <tr>
                                <th class="text-center" width="10" scope="col">No</th>
                                <th scope="col">Nama Instrumen</th>
                                <th scope="col">Jumlah Soal</th>
                                <th scope="col">Aksi</th>
                            
                            </tr>
                        </thead>
                        <tbody>

                       
                            @foreach ($kep as $kep)
                            <tr>
                            <td>{{$loop->iteration}}</td>
                            <td>{{$kep->nama_kursus}}</td>
                            <td>
                               @php
                                   echo DB::table('questions')->where('kode_kursus', $kep->kode_kursus)->count();
                               @endphp
                            </td>
                            <td>
                             <div class="d-flex justify-content-center">
                                 <a type="button" href="{{url('kepribadian/soal')}}/{{$kep->kode_kursus}}" class="btn btn-icon btn-icon-primary px-3"><i
                                         class="fas fa-eye btn-icon-primary" aria-hidden="true"></i></a>
                                
                             </div>
                            
                            </td>
                            </tr>
                        @endforeach
                        
                          
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- end card -->

    
</main>



@endsection

