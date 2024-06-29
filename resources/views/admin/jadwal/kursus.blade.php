@extends('layouts.app')

@section('title')
    Kategori Kursus
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
                        <li class="breadcrumb-item"><a href="{{url('jadwal-ujian')}}"> </i>Jadwal Ujian</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Data Soal Ujian</li>
                    </ol>
                </nav>
            </section>

            <div class="card mt-3">
                <div class="card-header pb-4 pt-4 d-flex justify-content-between">
                    <p class="mb-0">Data Soal Ujian</p>
                    <button class="btn btn-info btn-sm mr-0 add" >
                        Tambah Kursus<i class="fas fa-plus-circle pl-3" aria-hidden="true"></i></button>
                </div>
                <div class="card-body">
                    <table id="tabel" class="table table-sm table-bordered tb-cs">
                        <thead>
                            <tr>
                                <th scope="col">Kursus</th>
                                <th scope="col">Jumlah Soal</th>
                                <th scope="col">Waktu(menit)</th>
                                <th scope="col">Random</th>
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


    <!-- modal tambah sesi-->
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
                        <input type="hidden" name="exam_id" id="exam_id" value="{{Request::segment(3)}}">
                        <div class="row">
                            <div class="col">
                                <small class="form-text text-muted">Pilih Kursus</small>
                                <select class="browser-default custom-select " id="kode_kursus" name="kode_kursus"  onchange="get_jumlah_soal(); return false;">
                                    <option value="" selected>Pilih Kursus</option>
                                    @php $data =  DB::table('courses')->where('kep', 0)->get(); @endphp  
                                    @foreach ($data as $r)
                                    <option value='{{$r->kode_kursus}}'>{{$r->kode_kursus}}-{{$r->nama_kursus}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col">
                                <small class="form-text text-muted">ACAK</small>
                                <select  class="browser-default custom-select"  name="random" id="random" >
                                    <option value='0'>Tidak Aktif</option>
                                    <option value='1'>Aktif</option>
                           
                                </select>
                            </div>
                            
                        </div>
                        <div class="row">
                        
                            <div class="col">
                                <small class="form-text text-muted ">Jumlah Soal</small>
                                <input type="text" name="total_question" id="total_question" class="form-control">
                                <div id="jumlah-soal"></div>
                            </div>
                            <div class="col">
                                <small class="form-text text-muted ">Waktu</small>
                                <input type="text" name="working_time" id="working_time" placeholder="menit" class="form-control">
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

    <div class="kode_kursus" data-kode_kursus="{{Request::segment(3)}}"></div>
@endsection


@push('addon-script')
    <script>
        const kode_kursus = $('.kode_kursus').data('kode_kursus');
         $(document).ready(function () {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        var table = $('#tabel').DataTable({
        processing: false,
        serverSide: true,
        ajax: "{{ ('/jadwal-ujian/mapel') }}" +'/' + kode_kursus,
        columns: [

            {data: 'kursus', name: 'kursus'},
            {data: 'total_question', name: 'total_question'},
            {data: 'working_time', name: 'working_time'},
            {data: 'acak', name: 'acak'},
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
            url: "{{ url('/category') }}",
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
        $.get("{{ url('category') }}" +'/' + id +'/edit', function (data) {
            $('#input').modal('show');
            $('#kode_kursus').val(data.kode_kursus);
            $('#total_question').val(data.total_question);
            $('#working_time').val(data.working_time);
            $('#random').val(data.random);
           
        })
    }

    function get_jumlah_soal() {
        const id = $('#kode_kursus').val();

        $.get("{{ url('jumlah-soal') }}" +'/' + id , function (data) {
           $('#jumlah-soal').html('<small class="text-danger" > Jumlah soal '+data+'</small>');
           
        })



    };

    

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
                    url: "{{ url('category') }}"+'/'+id,
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