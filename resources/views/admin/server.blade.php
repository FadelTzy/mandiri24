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
                        <li class="breadcrumb-item active" aria-current="page">Server</li>
                    </ol>
                </nav>
            </section>
        </div>
        <div class="col-md-7">
            
           

            <div class="card mt-3">
                <div class="card-header pb-4 pt-4 d-flex justify-content-between">
                    <p class="mb-0">Data Server</p>
                    <div class="d-flex">
                        <a href="{{url('user-server')}}" class="btn btn-success btn-sm mr-0">
                            Aktifkan Server<i class="fas fa-users pl-3" aria-hidden="true"></i></a>
                        <a href="#" class="btn btn-primary btn-sm mr-0 add" >
                        Tambah Server<i class="fas fa-users pl-3" aria-hidden="true"></i></a>
                    
                    </div>
                </div>
                <div class="card-body">
                    <table id="tabel" class="table table-sm table-bordered tb-cs">
                        <thead>
                            <tr>
                                <th class="text-center" scope="col">No</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Username</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
 
    </div>

</main>


<div class="modal fade" id="input" tabindex="-1" aria-labelledby="status" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title w-5" id="status">Tambah Server</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="form">
                    <input type="hidden" name="kode" id="kode">
                    <input type="hidden" name="rcstat" id="rcstat">
                    <input type="hidden" name="username_old" id="username_old">

                
                        <div class="col">
                            <small class="form-text text-muted mb-1">Nama</small>
                            <input type="text" name="nama" id="nama" class="form-control">
                        </div>
                       
                  
                    <div class="col">
                        <small class="form-text text-muted mb-1">Username</small>
                        <input type="text" name="username" id="username" class="form-control">
                    </div>

                 
                    <div class="col">
                        <small class="form-text text-muted mb-1">Status</small>
                        <select  class="browser-default custom-select" id="is_active" name="is_active" >
                            <option value=""selected disabled>Pilih Status</option>
                            <option value='0'>Tidak Aktif</option>
                            <option value='1'>Aktif</option>
                         
                        </select>
                       
                    </div>
                    
                    <div class="col">
                        <small class="form-text text-muted mb-1">Password</small>
                        <input type="text" id="password" name="password" class="form-control">
                        <small class="text-danger" id="edit_password" > * Kosongkan, jika tidak ingin mengubah password </small>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-sm btn-amber " data-dismiss="modal">Batal</button>
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
        ajax: "{{ url('/server') }}",
        columns: [
            {data: 'id', name: 'id', orderable: false, searchable: false},
            {data: 'nama', name: 'nama'},
            {data: 'username', name: 'username'},
            {data: 'status', name: 'status', orderable: false, searchable: false},
            {data: 'action', name: 'action', orderable: false, searchable: false},
            ]});
    
    });

    $(".add").click(function() {
        $('.password').show();
        $('#form').each(function() {
            this.reset();
        });
        $('#kode').val('');
        $('#edit_password').hide();
        var form = $('#form');
            form.find('.invalid-feedback').remove();
            form.find('.form-control').removeClass('is-invalid');
        $('#rcstat').val(1);
        $('#input').modal('show');
        $('#status').html('Tambah Server');
        $('.save').html('Tambah Server');
    });


    $(".save").click(function() {
     
        var formData = new FormData($('#form')[0]);
        var form = $('#form');
            form.find('.invalid-feedback').remove();
            form.find('.form-control').removeClass('is-invalid');
            form.find('#kode_ruangan').removeClass('is-invalid');
            form.find('#kode_ruangan').removeClass('is-invalid');

       
        $.ajax({
            type: "POST",
            url: "{{ url('/server') }}",
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
                        if (key=='is_active' ) {
                          $('#'+key).addClass('is-invalid')
                          .after('<div  class="invalid-feedback" >  '+ value +'</div>')
                        //   $('.valid-session').html( '<div  class="invalid-feedback" style="display:block;" >  '+ value +'</div>');
                        //   $('.valid-room').html( '<div  class="invalid-feedback" style="display:block;" >  '+ value +'</div>');
                      }
               
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
        $('#status').html('Ubah Pengawas');
        $('.save').html('<i class="fa fa-save"></i> Simpan Perubahan');
        $('#kode').val(id);
        $('#rcstat').val('2');
        $('#edit_password').show();
        var form = $('#form');
            form.find('.invalid-feedback').remove();
            form.find('.form-control').removeClass('is-invalid');
            form.find('#is_active').removeClass('is-invalid');
           

        $.get("{{ url('/server') }}" +'/' + id +'/edit', function (data) {
            console.log(data);
            $('#input').modal('show');
            $('#kode').val(id);
            $('#nama').val(data.nama);
            $('#username').val(data.username);
            $('#username_old').val(data.username);
            $('#is_active').val(data.is_active);

           
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
                    url: "{{ url('/server') }}"+'/'+id,
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