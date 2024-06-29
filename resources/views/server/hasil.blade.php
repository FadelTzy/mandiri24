@extends('layouts.app')
@section('title')
    Soal
@endsection
@section('content')
<main>
    <div class="d-flex justify-content-between page-title mb-3">
        <h4 class="w-4">Soal</h4>
    </div>

    <div class="card">
              <div class="card-header d-flex justify-content-between">
                <h3 class="card-title">Soal ujian </h3>
                <button type="submit" class="btn btn-primary waves-effect waves-light btn-sm" ><i class="fas fa-sync mr-2"></i>
                                        Sinkronisasi
                                    </button>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              <table id="dtBasicExample" class="table table-striped table-bordered table-md" cellspacing="0" width="100%">
                <thead>
                    <tr>
                    <th class="th-sm">Kategori ujian
                    </th>
                    <th class="th-sm">Mata pelajaran
                    </th>
                    <th class="th-sm">Total soal
                    </th>
                    
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>SAINTEK</td>
                        <td>Matematika</td>
                        <td>50</td>
                        
                    </tr>
                    
                </table>
              </div>
              <!-- /.card-body -->
            </div>

    
</main>

@endsection

@push('addon-script')
    
@endpush