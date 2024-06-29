@extends('layouts.app')

@section('title')
    Pengawas
@endsection

@section('content')


<main>
    <div class="row">
        <div class="col-md-10">
            
    <section class="mb-1">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#"> </i>CAT</a></li>
                <li class="breadcrumb-item active" aria-current="page">Pengawas</li>
            </ol>
        </nav>
    </section>

    <div class="card mt-3">
        <div class="card-header pb-4 pt-4 d-flex justify-content-between">
            <p class="mb-0">Data Pengawas</p>
            <div class="d-flex">
                <a href="{{url('user-pengawas')}}" class="btn btn-success btn-sm mr-0">
                    Aktifkan pengawas<i class="fas fa-users pl-3" aria-hidden="true"></i></a>
                <a href="#" class="btn btn-primary btn-sm mr-0 add" >
                Tambah Pengawas<i class="fas fa-users pl-3" aria-hidden="true"></i></a>
              
            </div>
        </div>
        <div class="card-body">
            <table id="tabel" class="table table-sm table-bordered tb-cs">
                <thead>
                    <tr>
                        <th class="text-center" scope="col">No</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Username</th>
                        <th scope="col">Ruangan</th>
                        <th scope="col">Sesi</th>
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
                <h5 class="modal-title w-5" id="status">Tambah pengawas</h5>
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
                        <small class="form-text text-muted mb-1">Ruangan</small>
                        <select  class="browser-default custom-select" id="kode_ruangan" name="kode_ruangan" >
                            <option value=""selected disabled>Pilih Ruangan</option>
                            <?php  $role =  DB::table('rooms')->get();?>
                            @foreach ($role as $r)
                            <option value='{{$r->kode_ruangan}}'>{{$r->nama_ruangan}}</option>
                            @endforeach
                        </select>
                   
                    </div>
                 
                    <div class="col">
                        <small class="form-text text-muted mb-1">Sesi</small>
                        <select  class="browser-default custom-select" id="kode_sesi" name="kode_sesi" >
                            <option value=""selected disabled>Pilih Sesi</option>
                            <?php  $role =  DB::table('sesis')->get();?>
                            @foreach ($role as $r)
                            <option value='{{$r->kode_sesi}}'>{{$r->nama_sesi}}</option>
                            @endforeach
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
        ajax: "{{ url('/pengawas') }}",
        columns: [
            {data: 'id', name: 'id', orderable: false, searchable: false},
            {data: 'nama', name: 'nama'},
            {data: 'username', name: 'username'},
            {data: 'room.nama_ruangan', name: 'room.nama_ruangan', orderable: false, searchable: false},
            {data: 'session.nama_sesi', name: 'session.nama_sesi', orderable: false, searchable: false},
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
        $('#status').html('Tambah Pengawas');
        $('.save').html('Tambah Pengawas');
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
            url: "{{ url('/pengawas') }}",
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
                        if (key=='kode_sesi' || key =='kode_ruangan' ) {
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
            form.find('#kode_ruangan').removeClass('is-invalid');
            form.find('#kode_sesi').removeClass('is-invalid');

        $.get("{{ url('pengawas') }}" +'/' + id +'/edit', function (data) {
            console.log(data);
            $('#input').modal('show');
            $('#kode').val(id);
            $('#nama').val(data.nama);
            $('#username').val(data.username);
            $('#username_old').val(data.username);
            $('#kode_ruangan').val(data.kode_ruangan);
            $('#kode_sesi').val(data.kode_sesi);

           
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
                    url: "{{ url('pengawas') }}"+'/'+id,
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