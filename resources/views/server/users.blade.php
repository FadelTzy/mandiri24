@extends('layouts.app')
@section('title')
    Users
@endsection
@section('content')
<main>
    <div class="d-flex justify-content-between page-title mb-3">
        <h4 class="w-4">Users</h4>
    </div>

    <div class="card">
              <div class="card-header d-flex justify-content-between">
                <h3 class="card-title">Data user </h3>
                <!-- <div class="alert alert-success" role="alert">
  A simple success alert—check it out!
</div> -->
                {{-- <button type="submit" class="btn btn-primary waves-effect waves-light btn-sm" ><i class="fas fa-sync mr-2"></i>
                                        Sinkronisasi
                                    </button> --}}
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              <!-- status sinkronisasi -->
                {{-- <div class="alert alert-warning text-center" role="alert">
                    Data belum disinkronkan
                </div>
                <div class="alert alert-danger text-center" role="alert">
                    Data gagal disinkronkan
                </div>
                <div class="alert alert-success text-center" role="alert">
                    Data berhasil disinkronkan
                </div> --}}
              <!-- end status sinkronisasi -->
              <table id="tabel" class="table table-striped table-bordered table-md" cellspacing="0" width="100%">
                <thead>
                    <tr>
                    <th class="th-sm">Nama
                    </th>
                    <th class="th-sm">Ruangan
                    </th>
                    <th class="th-sm">Sesi
                    </th>
                    <th class="th-sm">Username
                    </th>
                    <th class="th-sm">Password
                    </th>
                   
                    </tr>
                </thead>
                <tbody>
                    {{-- <tr>
                    <td>Tiger Nixon</td>
                    <td>System Architect</td>
                    <td>Edinburgh</td>
                    <td>61</td>
                    <td>2011/04/25</td>
                   
                    </tr> --}}
                </tbody>
 
                </table>
              </div>
              <!-- /.card-body -->
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
   ajax: "{{ url('/pengawas-user') }}",
   columns: [
       
     
       {data: 'nama', name: 'nama'},
       {data: 'nama_ruangan', name: 'nama_ruangan'},
       {data: 'nama_sesi', name: 'nama_sesi'},
       {data: 'username', name: 'username'},
       {data: 'password', name: 'password'}
       
       ]});

});



</script>
@endpush