@extends('layouts.app')

@section('title')
    Jadwal Ujian
@endsection

@section('content')
<main>

    <section class="mb-3">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#"> </i>CAT</a></li>
                <li class="breadcrumb-item active" aria-current="page">Jadwal ujian</li>
            </ol>
        </nav>
    </section>

    <div class="card mb-3">
        <div class="card-header pb-4 pt-4 d-flex justify-content-between">
            <p class="mb-0">Data jadwal ujian</p>
            <div class="d-flex">
               
                <button  class="btn btn-info btn-sm mr-0 add">
                Tambah jadwal<i class="fas fa-users pl-3" aria-hidden="true"></i></button>
              
             
            </div>
        </div>
        <div class="card-body">
            <table id="tabel" class="table table-sm table-bordered tb-cs">
                <thead>
                    <tr>
                        <th class="text-center" scope="col">No</th>
                        <th scope="col">Kategori</th>
                        <th class="text-right" scope="col">Mapel</th>
                        <th scope="col">Jadwal mulai</th>
                        <th scope="col">Jadwal selesai</th>
                        <th scope="col">Token</th>
                        <th scope="col">Ruangan</th>
                        <th scope="col">Sesi</th>
                        <th scope="col">Minat/Kep</th>
                        <th class="text-center" scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                   
                  
                </tbody>
            </table>
        </div>
    </div>


    <div class="modal fade" id="input" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title w-5" id="status">Tambah Sesi</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="form">
                        <input type="hidden" name="kode" id="kode">
                        <div class="row mb-3">
                            <div class="col-6">
                                <small class="form-text text-muted mb-1">Nama Ujian</small>
                                <input type="text" name="nama_ujian" id="nama_ujian" placeholder="Nama Ujian" class="form-control">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-6">
                                <div class="form-group ">
                                    <small class="form-text text-muted mb-1">Tanggal mulai</small>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="inputGroupPrepend21"><i
                                                    class="far fa-calendar-alt"></i></span>
                                        </div>
                                        <input type="text" class="form-control  datepicker" name="tanggal_mulai" id="tanggal_mulai" >
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group ">
                                    <small class="form-text text-muted mb-1">Jam mulai</small>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="inputGroupPrepend21"><i
                                                    class="far fa-clock"></i></span>
                                        </div>
                                        <input type="text" class="form-control  timepicker" name="waktu_mulai" id="waktu_mulai" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-6">
                                <div class="form-group ">
                                    <small class="form-text text-muted mb-1">Tanggal selesai</small>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="inputGroupPrepend21"><i
                                                    class="far fa-calendar-alt"></i></span>
                                        </div>
                                        <input type="text" class="form-control  datepicker" name="tanggal_selesai" id="tanggal_selesai" >
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group ">
                                    <small class="form-text text-muted mb-1">Jam selesai</small>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="inputGroupPrepend21"><i
                                                    class="far fa-clock"></i></span>
                                        </div>
                                        <input type="text" class="form-control  timepicker" name="waktu_selesai" id="waktu_selesai" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-6">
                                <small class="form-text text-muted mb-1">Ruangan</small>
                                <select class="browser-default custom-select " id="kode_ruangan" name="kode_ruangan">
                                    <option value="" selected>Pilih Kategori</option>
                                    @php $data =  DB::table('rooms')->get(); @endphp  
                                    @foreach ($data as $r)
                                    <option value='{{$r->kode_ruangan}}'>{{$r->nama_ruangan}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-6">
                                <small class="form-text text-muted mb-1">Sesi</small>
                                <select class="browser-default custom-select " id="kode_sesi" name="kode_sesi">
                                    <option value="" selected>Pilih Sesi</option>
                                    @php $data =  DB::table('sesis')->get(); @endphp  
                                    @foreach ($data as $r)
                                    <option value='{{$r->kode_sesi}}'>{{$r->nama_sesi}}</option>
                                    @endforeach
                                </select>
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



</main>

@endsection

@push('addon-script')
<script>
    $(document).ready(function () {
        $('#tanggal_mulai').pickadate({
            format: 'dd/m/yyyy',
            min:true
        });
        $('#waktu_mulai').pickatime({});
        $('#tanggal_selesai').pickadate({
            format: 'dd/m/yyyy',
            min:true
        });
        $('#waktu_selesai').pickatime({});

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

   var table = $('#tabel').DataTable({
   processing: false,
   serverSide: true,
   ajax: "{{ ('/jadwal-ujian') }}",
   columns: [
    //    {
    //        data: 'DT_RowIndex', 
    //        name: 'DT_RowIndex'
    //    },
       {data: 'id', name: 'id', orderable: false, searchable: false},
       {data: 'kode_kategori', name: 'kode_kategori'},
       {data: 'mapel', name: 'mapel'},
       {data: 'waktu_mulai', name: 'waktu_mulai'},
       {data: 'waktu_selesai', name: 'waktu_selesai'},
       {data: 'token', name: 'token'},
       {data: 'room.nama_ruangan', name: 'room.nama_ruangan', orderable: false, searchable: false},
       {data: 'session.nama_sesi', name: 'session.nama_sesi', orderable: false, searchable: false},
       {data: 'minat', name: 'minat', orderable: false, searchable: false},
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
   $('#status').html('Tambah Jadwal Ujian');
   $('.save').html('Tambah Jadwal Ujian');
});


$(".save").click(function() {
   
   var formData = new FormData($('#form')[0]);
   var form = $('#form');
       form.find('.invalid-feedback').remove();
       form.find('.form-control').removeClass('is-invalid');
  
   $.ajax({
       type: "POST",
       url: "{{ url('/jadwal-ujian') }}",
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
   $('#status').html('Ubah Jadwal Ujian');
   $('.save').html('<i class="fa fa-save"></i> Simpan Perubahan');
   $('#kode').val(id);
   var form = $('#form');
       form.find('.invalid-feedback').remove();
       form.find('.form-control').removeClass('is-invalid');
   $.get("{{ url('jadwal-ujian') }}" +'/' + id +'/edit', function (data) {
       $('#input').modal('show');
       $('#tanggal_mulai').val(data.tanggal_mulai);
       $('#tanggal_selesai').val(data.tanggal_selesai);
       $('#waktu_mulai').val(data.waktu_mulai);
       $('#waktu_selesai').val(data.waktu_selesai);
       $('#nama_ujian').val(data.kode_kategori);
       $('#kode_ruangan').val(data.kode_ruangan);
       $('#kode_sesi').val(data.kode_sesi);
       $('#status').val(data.status);
    
      
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
               url: "{{ url('jadwal-ujian') }}"+'/'+id,
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


function minat(id){
    $.get("{{ url('minat') }}" +'/' + id , function (data) {
      
        var table = $('#tabel').DataTable();
                        table.row(this).remove().draw(false);
   })
}
</script>
@endpush