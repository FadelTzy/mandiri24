@extends('layouts.app')

@section('title')
    Kursus
@endsection

@section('content')
<main>

    <!-- Card -->
    <div class="row">
        <div class="col-md-5">

            <section class="mb-1">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#"> </i>CAT</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Kursus</li>
                    </ol>
                </nav>
            </section>

            <div class="card mt-3">
                <div class="card-header pb-4 pt-4 d-flex justify-content-between">
                    <p class="mb-0">Data Kursus</p>
                    <button class="btn btn-primary btn-sm mr-0 add" >
                        Tambah Kursus<i class="fas fa-plus-circle pl-3" aria-hidden="true"></i></button>
                </div>
                <div class="card-body">
                    <table id="tabel" class="table table-sm table-bordered tb-cs">
                        <thead>
                            <tr>
                                <th class="text-center" scope="col">No</th>
                                <th scope="col">Kode Kursus</th>
                                <th scope="col">Nama Kursus</th>
                                <th scope="col">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                          
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- end card -->

</main>


    <!-- modal tambah kursus-->
    <div class="modal fade" id="input" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title w-5" id="status">Tambah Kursus</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="form">
                        <input type="hidden" name="kode" id="kode">
                        <div class="row">
                            <div class="col">
                                <small class="form-text text-muted mb-1">Kode Kursus</small>
                                <input type="text" name="kode_kursus" id="kode_kursus" class="form-control">
                            </div>
                            <div class="col">
                                <small class="form-text text-muted mb-1">Nama Kursus</small>
                                <input type="text" name="nama_kursus" id="nama_kursus" class="form-control">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-sm btn-amber" data-dismiss="modal">Batal</button>
                    <button type="button" class="btn btn-sm btn-primary save">Simpan</button>

                </div>
            </div>
        </div>
    </div>

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
        ajax: "{{ url('/kursus') }}",
        columns: [
            {
                data: 'DT_RowIndex', 
                name: 'DT_RowIndex'
            },
            {data: 'kode_kursus', name: 'kode_kursus'},
            {data: 'nama_kursus', name: 'nama_kursus'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
            ]});
    
    });

    $(".add").click(function() {
        $('#form').each(function() {
            this.reset();
        });
        $('#kode').val('');
        var form = $('#form');
            form.find('.invalid-feedback').remove();
            form.find('.form-control').removeClass('is-invalid');
        $('#input').modal('show');
        $('#status').html('Tambah Kursus');
        $('.save').html('Tambah Kursus');
    });


    $(".save").click(function() {
        
        var formData = new FormData($('#form')[0]);
        var form = $('#form');
            form.find('.invalid-feedback').remove();
            form.find('.form-control').removeClass('is-invalid');
       
        $.ajax({
            type: "POST",
            url: "{{ url('/kursus') }}",
            data: formData,
            contentType: false,
            cache:false,
            processData: false,
            dataType:"json",
            success: function(data) {
                if (data.status == true) {
                    $('#input').modal('hide');
                    $('#form').each(function() {
                            this.reset();
                        });
                    var table = $('#tabel').DataTable();
                    table.row(this).remove().draw(false);
                    toastr.success("Data berhasil disimpan...", 'Berhasil', {
                        timeOut: 5000
                    });
                    return false;

                } 
            },
            error: function(xhr){
                let response = xhr.responseJSON
                if($.isEmptyObject(response)==false){
                    $.each(response.errors, (key, value)=>{
                    
                        $('#'+key)
                            .closest('.form-control')
                            .addClass('is-invalid')
                            .after('<div  class="invalid-feedback" >  '+ value +'</div>')
                    })
                }
            }

        });
    });
       
    function edit(id) {
        $('#status').html('Ubah Kursus');
        $('.save').html('<i class="fa fa-save"></i> Simpan Perubahan');
        $('#kode').val(id);
        var form = $('#form');
            form.find('.invalid-feedback').remove();
            form.find('.form-control').removeClass('is-invalid');
        $.get("{{ url('kursus') }}" +'/' + id +'/edit', function (data) {
            $('#input').modal('show');
            $('#kode_kursus').val(data.kode_kursus);
            $('#nama_kursus').val(data.nama_kursus);
           
        })
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
                    url: "{{ url('kursus') }}"+'/'+id,
                    success: function(response) {
                       if (response.status==true) {
                        toastr.success(response.message, 'Terhapus', {timeOut: 5000});
                        } else{
                        toastr.error(response.message, 'Gagal', {timeOut: 5000});

                        }
                         var table = $('#tabel').DataTable();
                             table.row(this).remove().draw(false);
                    
                    }
                });
            }


        })

    }
    </script>
@endpush