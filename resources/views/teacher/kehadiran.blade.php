@extends('layouts.app')
@section('title')
    Kehadiran
@endsection

@section('content')
<main>

    <div class="d-flex justify-content-between page-title mb-3">
        <h4 class="w-4">Kehadiran</h4>
    </div>

    <div class="card mb-3">
        <div class="card-header pb-4 pt-4 d-flex justify-content-between">
            <p class="mb-0">Data kehadiran peserta ujian</p>
            <div class="d-flex">
                <button onclick="hadir_semua();" class="btn btn-primary btn-sm mr-0">
                Hadirkan semua<i class="fas fa-users pl-3" aria-hidden="true"></i></button>
               
            </div>
        </div>
        <div class="card-body">
            <table id="tabel" class="table table-sm table-bordered tb-cs">
                <thead>
                    <tr>
                        <th class="text-center" scope="col">No</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Nomor peserta</th>
                        <th scope="col">Kehadiran</th>
                        <th scope="col">Status</th>
                        <th scope="col">Foto</th>
                        <th class="text-center" scope="col">Reset IP Adress</th>
                    </tr>
                </thead>
                <tbody>
                    {{-- <tr>
                        <th class="text-center">1</th>
                        <td>Zulkiplih</td>
                        <td>1529041031</td>
                        <td>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="1">
                                <label class="form-check-label" for="1">Tidak hadir</label>
                            </div>
                        </td>
                        <td>
                            <span class="badge badge-danger mt-2">
                                Belum ujian
                            </span>
                        </td>
                        <td>
                            <div class="d-flex justify-content-center">
                                <button type="button" class="btn btn-icon btn-icon-primary px-3"><i
                                        class="fas fa-redo-alt" aria-hidden="true"></i></button>
                            </div>
                        </td>
                    </tr>
                  --}}
                </tbody>
            </table>
        </div>
    </div>


    <div class="modal fade" id="lihat-foto" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">

        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Lihat foto</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row" style="padding-bottom: 7px;">
                        <div class="col-md-12 text-center" id="v-foto">
    
                        </div>
                    </div><br>
                </div>
                <div class="modal-footer">
                    <a type="button" class="btn btn-outline-primary waves-effect" data-dismiss="modal">Keluar</a>
    
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

        var table = $('#tabel').DataTable({
        processing: false,
        serverSide: true,
        paging:   false,
        ajax: "{{ url('/kehadiran') }}",
        columns: [
            {
                data: 'DT_RowIndex', 
                name: 'DT_RowIndex'
            },
            {data: 'nama', name: 'nama'},
            {data: 'username', name: 'username'},
            {data: 'kehadiran', name: 'kehadiran'},
            {data: 'status_ujian', name: 'status_ujian'},
            {data: 'lihat_foto', name: 'lihat_foto'},
            {data: 'reset', name: 'reset', orderable: false, searchable: false},

            ]});

        
    
    });

function hadir(id){
    $.ajax({
            type: "POST",
            data: ({
                       id

                    }),
            url: "{{ url('/hadir') }}",
            dataType:"json",
            success: function(data) {
               
                    var table = $('#tabel').DataTable();
                    table.row(this).remove().draw(false);
                    toastr.success("Berhasil...", 'Berhasil', {
                        timeOut: 5000
                    });
                    return false;

                
            },
            error: function(xhr){
                toastr.error("Gagal ..", 'Gagal', {
                        timeOut: 5000
                    });
                    return false;
            }

        });
}

function lihat_foto(username) {
        $.ajax({
            type: "POST",
            dataType: "json",
            data: ({
                username
            }),
            url: "{{url('lihat-foto')}}",
            success: function(data) {
                console.table(data.foto);
                $('#lihat-foto').modal('show');
                $('#v-foto').html(`<img src="{{ url('/file-peserta') }}/${data.foto}" style='width:250px;'>`);

            }
        })

    }

function reset_ip(username){
    $.ajax({
            type: "POST",
            data: ({
                username

                    }),
            url: "{{ url('/reset-ip') }}",
            dataType:"json",
            success: function(data) {
               
                    var table = $('#tabel').DataTable();
                    table.row(this).remove().draw(false);
                    toastr.success("Berhasil...", 'Berhasil', {
                        timeOut: 5000
                    });
                    return false;

                
            },
            error: function(xhr){
                toastr.error("Gagal ..", 'Gagal', {
                        timeOut: 5000
                    });
                    return false;
            }

        });
}

function hadir_semua(){
    $.ajax({
            type: "POST",
            url: "{{ url('/hadir-semua') }}",
            dataType:"json",
            success: function(data) {
               
                    var table = $('#tabel').DataTable();
                    table.row(this).remove().draw(false);
                    toastr.success("Proses hasil berhasil...", 'Berhasil', {
                        timeOut: 5000
                    });
                    return false;

                
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
