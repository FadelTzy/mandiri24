@extends('layouts.app')

@section('title')
    User
@endsection

@section('content')


<main>
    <div class="row">
        <div class="col-md-8">
            
    <section class="mb-1">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#"> </i>CAT</a></li>
                <li class="breadcrumb-item active" aria-current="page">User</li>
            </ol>
        </nav>
    </section>

    <div class="card mt-3">
        <div class="card-header pb-4 pt-4 d-flex justify-content-between">
            <p class="mb-0">Data User</p>
            <div class="d-flex">
                <a href="#" class="btn btn-info btn-sm mr-0 add" >
                Tambah User<i class="fas fa-users pl-3" aria-hidden="true"></i></a>
              
            </div>
        </div>
        <div class="card-body">
            <table id="tabel" class="table table-sm table-bordered tb-cs">
                <thead>
                    <tr>
                        <th class="text-center" scope="col">No</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Username</th>
                        <th scope="col">Role</th>
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
                <h5 class="modal-title w-5" id="status">Tambah user</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="form">
                    <input type="hidden" name="kode" id="kode">
                    <input type="hidden" name="rcstat" id="rcstat">

                
                        <div class="col">
                            <small class="form-text text-muted mb-1">Nama</small>
                            <input type="text" name="name" id="name" class="form-control">
                        </div>
                       
                  
                    <div class="col">
                        <small class="form-text text-muted mb-1">Username</small>
                        <input type="text" name="username" id="username" class="form-control">
                    </div>

                 
                    <div class="col">
                        <small class="form-text text-muted mb-1">Role</small>
                        <input type="text" name="role_id" name="role_id" value="Admin" readonly  class="form-control">
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
        ajax: "{{ url('/user') }}",
        columns: [
            {
                data: 'DT_RowIndex', 
                name: 'DT_RowIndex'
            },
            {data: 'name', name: 'name'},
            {data: 'username', name: 'username'},
            {data: 'name_role', name: 'name_role'},
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
        $('#status').html('Tambah User');
        $('.save').html('Tambah User');
    });


    $(".save").click(function() {
     
        var formData = new FormData($('#form')[0]);
        var form = $('#form');
            form.find('.invalid-feedback').remove();
            form.find('.form-control').removeClass('is-invalid');

       
        $.ajax({
            type: "POST",
            url: "{{ url('/user') }}",
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
        $('#status').html('Ubah User');
        $('.save').html('<i class="fa fa-save"></i> Simpan Perubahan');
        $('#kode').val(id);
        $('#rcstat').val('2');
        $('#edit_password').show();
        var form = $('#form');
            form.find('.invalid-feedback').remove();
            form.find('.form-control').removeClass('is-invalid');

        $.get("{{ url('user') }}" +'/' + id +'/edit', function (data) {
            $('#input').modal('show');
            $('#kode').val(id);
            $('#name').val(data.name);
            $('#username').val(data.username);

           
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
                    url: "{{ url('user') }}"+'/'+id,
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