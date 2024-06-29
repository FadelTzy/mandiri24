@extends('layouts.app')

@section('title')
    Sesi
@endsection

@section('content')
<main>

    <!-- Card -->
    <div class="row">
        <div class="col-md-10">

            <section class="mb-1">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#"> </i>CAT</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Status Server</li>
                    </ol>
                </nav>
            </section>

            <div class="card mt-3">
                <div class="card-header pb-4 pt-4 d-flex justify-content-between">
                    <p class="mb-0">Data Hasil Server</p>
                </div>
                <div class="card-body">
                    <table id="tabel" class="table table-sm table-bordered tb-cs" width="100%">
                        <thead>
                            <tr>
                                <th class="text-center" scope="col">No</th>
                                <th scope="col">Server</th>
                                <th scope="col">Username</th>
                                <th scope="col">Nama ruangan</>
                                <th scope="col">Nama sesi</th>
                                <th scope="col">Jumlah Lokal</th>
                                <th scope="col">Jumlah Pusat</th>
                                <th scope="col">Jumlah Kehadiran</th>
                                <th scope="col">Tanggal Ujian</th>
                                <th scope="col">Status Memenuhi</th>
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
        ajax: "{{ url('/status-server') }}",
        columns: [
            {
                data: 'DT_RowIndex', 
                name: 'DT_RowIndex'
            },
            {data: 'server.nama', name: 'server.nama'},
            {data: 'username', name: 'username'},
            {data: 'ruangan.nama_ruangan', name: 'ruangan.nama_ruangan'},
            {data: 'sesi.nama_sesi', name: 'sesi.nama_sesi'},
          
            {data: 'jml_jwb_lokal', name: 'jml_jwb_lokal'},
            {data: 'jml_jwb_pusat', name: 'jml_jwb_pusat'},
            {data: 'jmh_kehadiran', name: 'jmh_kehadiran'},
            {data: 'tgl_ujian', name: 'tgl_ujian'},
            {data: 'status', name: 'status'},
           
            
            ]});
    
    });

   
    
    </script>
@endpush