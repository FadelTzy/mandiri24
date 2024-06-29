
@extends('layouts.app')

@section('title')
    Hasil Ujian Minat
@endsection
@section('content')
<main>
    <section class="mb-3">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#"> </i>CAT</a></li>
                <li class="breadcrumb-item active" aria-current="page">Hasil ujian minat</li>
            </ol>
        </nav>
    </section>
    <div class="card mb-3">
        <div class="card-header pb-1 pt-1 d-flex justify-content-end">
            <div class="d-flex">
                <button class="btn btn-primary btn-sm mr-0 " onclick="minat();" > <i class="fas fa-spinner"></i> Proses Hasil</button>
                <a href="#" class="btn btn-info btn-sm mr-0" data-toggle="modal" data-target="#Modaltambahjadwal">
                    Print<i class="fas fa-print pl-3" aria-hidden="true"></i></a>
                <a href="#" class="btn btn-success btn-sm mr-0" data-toggle="modal" data-target="#Modalimport">
                    Download Excel<i class="fas fa-download pl-3" aria-hidden="true"></i></a>

            </div>
        </div>
        <div class="card-body">
            <table id="tabel" class="table table-md table-striped table-bordered tb-cs">
                <thead>
                    <tr>
                        <th class="text-center" scope="col">No</th>
                        <th class="text-center" scope="col">Nama</th>
                        <th scope="col">Username</th>
                        <th scope="col">Fakultas</th>
                        <th class="text-center" scope="col">Jurusan</th>
                        <th class="text-center" scope="col">Skor</th>
                    </tr>
                </thead>
                <tbody>
                   
                 
                  
                </tbody>
            </table>
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

        var table = $('#tabel').DataTable({
        processing: false,
        serverSide: true,
        ajax: "{{ ('/minat') }}",
        columns: [
            {
                data: 'DT_RowIndex', 
                name: 'DT_RowIndex'
            },
            {data: 'nama', name: 'nama'},
            {data: 'username', name: 'username'},
            {data: 'nama_fakultas', name: 'nama_fakultas', orderable: false, searchable: false},
            {data: 'nama_jurusan', name: 'nama_jurusan'},
            {data: 'score', name: 'score'},
            ]});

        
    
    });

function minat(){
    $.ajax({
            type: "POST",
            url: "{{ url('/proses-minat') }}",
            dataType:"json",
            success: function(data) {
                if (data.status == true) {
                    var table = $('#tabel').DataTable();
                    table.row(this).remove().draw(false);
                    toastr.success("Proses hasil berhasil...", 'Berhasil', {
                        timeOut: 5000
                    });
                    return false;

                } 
            },
            error: function(xhr){
                toastr.error("Gagal proses hasil...", 'Gagal', {
                        timeOut: 5000
                    });
                    return false;
            }

        });
}
        
        
    
</script>
    
@endpush
