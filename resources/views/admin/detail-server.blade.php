@extends('layouts.app')

@section('title')
    Server
@endsection

@section('content')


<main>
    <div class="row">
        <div class="col-12">
            <section class="mb-1">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#"> </i>CAT</a></li>
                        <li class="breadcrumb-item"><a href="#"> </i>Server</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{$server['nama']}}</li>
                    </ol>
                </nav>
            </section>
        </div>
        
       <div class="col-md-6">
        <div class="card  mt-3">
            <div class="card-header font-weight-bold">
                {{$server['nama']}}
            </div>
            <div class="card-body">
                <table class="table table-sm table-bordered tb-cs" id="data-pengawas-server" >
                    <thead>
                        <tr>
                            <th class="text-center font-weight-bold" scope="col">Nama pengawas</th>
                            <th scope="col" class="text-center font-weight-bold">Ruangan</th>
                            <th scope="col" class="text-center font-weight-bold">Action</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        {{-- <tr>
                            <th class="text-center pt-3 ">asdar</th>
                            <th  class=" pt-3 text-center">Tekom 11</th>
                            <th scope="col" class="text-center">
                                <button type="button" class="btn btn-icon btn-icon-danger px-3"><i class="fas fa-trash" aria-hidden="true"></i></button>
                            </th>
                            
                        </tr> --}}
                    
                    </tbody>
                </table>
            </div>
        </div>
       </div>
       <div class="col-md-6">
        <div class="card  mt-3">
            <div class="card-header font-weight-bold text-primary">
                Data pengawas MANDIRI 2025
            </div>
            <div class="card-body">
                <table class="table table-sm table-bordered tb-cs" id="semua-data-pengawas" >
                    <thead>
                        <tr>
                            <th class="text-center font-weight-bold" scope="col">Nama pengawas</th>
                            <th scope="col" class="font-weight-bold">Ruangan</th>
                            <th scope="col" class="font-weight-bold">Action</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        {{-- <tr>
                            <th class="text-center pt-3 ">asdar</th>
                            <th  class=" pt-3 text-center">Tekom 11</th>
                            <th scope="col" class="text-center">
                                <button type="button" class="btn btn-icon btn-icon-primary px-3"><i class="fas fa-plus" aria-hidden="true"></i></button>
                            </th>
                            
                            
                        </tr> --}}
                    
                    </tbody>
                </table>
            </div>
        </div>
       </div>
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
        var table = $('#data-pengawas-server').DataTable({
        processing: false,
        serverSide: true,
        ajax: "{{ url('/data-pengawas-server') }}" +'/'+ "{{$server['username']}}",
        columns: [
            {data: 'nama', name: 'nama'},
            {data: 'ruangan', name: 'ruangan'},
            {data: 'action', name: 'action'},
           
            ]});


        var table = $('#semua-data-pengawas').DataTable({
        processing: false,
        serverSide: true,
        ajax: "{{ url('/semua-data-pengawas') }}",
        columns: [
         
            {data: 'nama', name: 'nama'},
            {data: 'ruangan', name: 'ruangan'},
            {data: 'action', name: 'action'},
           
            ]});
    
    });

    function tambah(username_pengawas) {
        $.ajax({
            type: "POST",
            url: "{{url('tambah-pengawas-server')}}",
            data: {
                username_server:"{{$server['username']}}",
                username_pengawas
            },
            dataType:"json",
            success: function(data) {
                var table = $('#data-pengawas-server').DataTable();
                    table.row(this).remove().draw(false);
                var table1 = $('#semua-data-pengawas').DataTable();
                    table1.row(this).remove().draw(false);
                
            },


        });
    }


    function hapus(id) {
        Swal.fire({
            title: 'Apakah anda yakin?',
            text: "",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#f00',
            cancelButtonText: 'Batal',
            cancelButtonColor: '#D0D0D0',
            confirmButtonText: 'Ya'
        }).then((result) => {
            if (result.value) {
                    $.ajax({
                    type: "DELETE",
                    url: "{{ url('/hapus-pengawas-server') }}"+'/'+id,
                    success: function(response) {
                       if (response.status==true) {
                        toastr.success(response.message, 'Terhapus', {timeOut: 5000});
                        } else{
                        toastr.error(response.message, 'Gagal', {timeOut: 5000});

                        }
                         var table = $('#data-pengawas-server').DataTable();
                             table.row(this).remove().draw(false);
                         var table1 = $('#semua-data-pengawas').DataTable();
                             table1.row(this).remove().draw(false);
                    
                    }
                });
            }


        })

    }


   
       
  

    

    </script>
@endpush