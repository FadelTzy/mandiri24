@extends('layouts.app')

@section('title')
    Soal
@endsection


@push('addon-style')
<link rel="stylesheet" href="{{url('cat')}}/summernote/summernote-bs4.css">
@endpush

@section('content')
<main>

    <section class="mb-3">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
            
                <li class="breadcrumb-item"><a href="#"> </i>CAT</a></li>
                <li class="breadcrumb-item"><a href="{{url('kursus-soal')}}"> </i>Soal</a></li> 
                <li class="breadcrumb-item active" aria-current="page">Soal {{$course['nama_kursus']}}</li>
            </ol>
        </nav>
    </section>

    <div class="card mb-3" id="list" > 
        <div class="card-header pb-4 pt-4 d-flex justify-content-between">
            <p class="mb-0">Data Soal {{$course['nama_kursus']}}</p>
            <div class="d-flex">
                <button class="btn btn-info btn-sm mr-0" onclick="tambah(); return false;" >
                Tambah soal<i class="fas fa-users pl-3" aria-hidden="true"></i></button>
                <button class="btn btn-warning btn-sm mr-0" onclick="import_soal(); return false;" >
                Import Soal<i class="fas fa-users pl-3" aria-hidden="true"></i></button>

                <a href="{{url('/mapel-soal/upload-file')}}" class="btn btn-danger btn-sm mr-0" >Upload File Soal</a>

                <button class="btn btn-warning btn-sm mr-0" onclick="rollback_soal(); return false;" >
                    Kosongkan<i class="fas fa-trash pl-3" aria-hidden="true"></i></button>
               
            </div>
        </div>
        <div class="card-body">
           
            <table id="tabel" class="table table-sm table-bordered tb-cs">
                <thead>
                    <tr>
                        <th class="text-center" scope="col" width="10">No</th>
                        <th class="text-center" scope="col">Soal</th>
                        <th scope="col" width="30">Kategori soal</th>
                        <th scope="col" width="20">Action</th>
                    </tr>
                </thead>
                <tbody>
                    {{-- <tr>
                        <th class="text-center">1</th>
                        <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum expedita minus rerum hic dolores, quod, temporibus dignissimos, obcaecati sequi officia libero voluptates! Repellendus quae assumenda dolore laboriosam exercitationem non accusantium.</td>
                        <td>Matematika</td>
                        <td>mudah</td>
                        <td>
                            <div class="d-flex justify-content-center">
                                <button type="button" class="btn btn-icon btn-icon-primary px-3"><i
                                        class="fas fa-pen" aria-hidden="true"></i></button>
                                <button type="button" class="btn btn-icon btn-icon-danger px-3"><i
                                        class="fas fa-trash" aria-hidden="true"></i></button>
                            </div>
                        </td>
                    </tr> --}}
                </tbody>
            </table>
        </div>
    </div>

 @include('admin.soal.input-soal')

 <div class="code_course" data-code_course="{{$course['kode_kursus']}}"></div>
</main>



    <!-- modal tambah sesi-->
    <div class="modal fade" id="import-soal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title w-5" id="status">Import Soal</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="form-import">
                        <input type="hidden" name="kode" id="kode">
                        <input type="hidden" name="kode_kursus" value="{{Request::segment(3)}}" id="kode_kursus">
                        <div class="row">
                            <div class="col">
                                <input type="file" name="file" id="file" class="form-control">
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
    </div>



@endsection



@push('addon-script')
@include('admin.soal.script')
<script>
const code_course = $('.code_course').data('code_course');
$(document).ready(function () {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        
        var table = $('#tabel').DataTable({
        processing: false,
        serverSide: true,
        ajax: "{{ ('/mapel-soal/soal') }}" +'/' + code_course,
        columns: [
            {
                data: 'DT_RowIndex', 
                name: 'DT_RowIndex'
            },
            {data: 'pertanyaan', name: 'pertanyaan'},
            {data: 'kode_kursus', name: 'kode_kursus'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
            ]});
    
    });
      

    function import_soal(){
        $('#import-soal').modal('show');
    }

    $(".save").click(function() {
        var file = document.getElementById("file").files[0];
        var formData = new FormData($('#form-import')[0]);
        formData.append("file", file);
        var form = $('#form-import');
            form.find('.invalid-feedback').remove();
            form.find('.form-control').removeClass('is-invalid');
       
        $.ajax({
            type: "POST",
            url: "{{ url('/import-soal') }}",
            data: formData,
            contentType: false,
            cache:false,
            processData: false,
            dataType:"json",
            success: function(data) {
                if (data.status == true) {
                    $('#import-soal').modal('hide');
                    $('#form-import').each(function() {
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

   function simpan(){
    var file_soal = document.getElementById("file_soal").files[0];
    var file_1 = document.getElementById("file_1").files[0];
    var file_2 = document.getElementById("file_2").files[0];
    var file_3 = document.getElementById("file_3").files[0];
    var file_4 = document.getElementById("file_4").files[0];
    var file_5 = document.getElementById("file_5").files[0];
   
    var formData = new FormData($('#form')[0]);
    formData.append("file_soal", file_soal);
    formData.append("file_1", file_1);
    formData.append("file_2", file_2);
    formData.append("file_3", file_3);
    formData.append("file_4", file_4);
    formData.append("file_5", file_5);
        var form = $('#form');
            form.find('.invalid-feedback').remove();
            form.find('.form-control').removeClass('is-invalid');
           
       
        $.ajax({
            type: "POST",
            url: "{{ url('/question') }}",
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
                        $('#soal').summernote('code', '');
                        $('#opsi_1').summernote('code', '');
                        $('#opsi_2').summernote('code', '');
                        $('#opsi_3').summernote('code', '');
                        $('#opsi_4').summernote('code', '');
                        $('#opsi_5').summernote('code', '');
                    var table = $('#tabel').DataTable();
                    table.row(this).remove().draw(false);
                    batal()
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
                        if (key=='current_answer' ) {
                          $('#'+key).addClass('is-invalid')
                          .after('<div  class="invalid-feedback" >  '+ value +'</div>')
                        }
                        $('#'+key)
                            .closest('.form-control')
                            .addClass('is-invalid')
                            .after('<div  class="invalid-feedback" >  '+ value +'</div>')
                    })
                }
            }

        });
   }


    function edit(id) {
        $('#status').html('Ubah Soal');
        $('#simpan').html('<i class="fa fa-save"></i> Simpan Perubahan');
        $('#kode').val(id);
        var form = $('#form');
            form.find('.invalid-feedback').remove();
            form.find('.form-control').removeClass('is-invalid');
        $.get("{{ url('question') }}" +'/' + id +'/edit', function (data) {
            $('#soal').summernote('code', data.soal);
            $('#opsi_1').summernote('code', data.opsi_1);
            $('#poin_1').val(data.poin_1);
            $('#opsi_2').summernote('code', data.opsi_2);
            $('#poin_2').val(data.poin_2);
            $('#opsi_3').summernote('code', data.opsi_3);
            $('#poin_3').val(data.poin_3);
            $('#opsi_4').summernote('code', data.opsi_4);
            $('#poin_4').val(data.poin_4);
            $('#opsi_5').summernote('code', data.opsi_5);
            $('#poin_5').val(data.poin_5);
            $('#current_answer').val(data.current_answer);
            
          
          
            $('#input').show(300);
            $('#list').hide(300);
            
           
        })
    }
    function tambah() {
        $('#input').show(300);
        $('#list').hide(300);
       
    }

    function batal() {
        $('#input').hide(300);
        $('#list').show(300);
        $('#form').each(function() {
            this.reset();
        });

        $('#status').html('Tambah');
        $('#simpan').html('<i class="fa fa-save"></i> Simpan');
        $('#rcstat').val('1');
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
                    url: "{{ url('question') }}"+'/'+id,
                    success: function(response) {
                       if (response.status==true) {
                        toastr.success(response.message, 'Terhapus', {timeOut: 5000});
                        } else{
                        toastr.error(response.message, 'Gagal', {timeOut: 5000});

                        }
                         var table = $('#tabel').DataTable();
                             table.row(this).remove().draw(false);

                             batal();
                    
                    }
                });
            }


        })

    }

    function rollback_soal() {
   
   $.get("{{ url('rollback-kepribadian') }}" +'/' + code_course , function (data) {
       var table = $('#tabel').DataTable();
               table.row(this).remove().draw(false);
               toastr.success("Data berhasil dihapus...", 'Berhasil', {
                   timeOut: 5000
               });
               return false;
      
   })
}

</script>

    
@endpush