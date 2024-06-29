@extends('layouts.app')
@section('title')
    Reset
@endsection
@section('content')
<main>

    <div class="d-flex justify-content-between page-title mb-3">
        <h4 class="w-4">Reset IP</h4>
    </div>


 
    <div class="row">
                <div class="col-7">
                <div class="card mt-3">
                    <div class="card-body">
                    <div class="alert alert-danger text-center mb-0" role="alert">
                    <div class="row">
                        <div class="col-md-2 d-flex align-items-center justify-content-center">
                            <h1 class="mb-0 text-danger">
                            <i class="fas fa-exclamation-triangle"></i> 
                            </h1>
                        </div>
                        <div class="col-md-10">
                        <p><strong>Login gagal</strong></p>
                            <p class="mb-0">Akun sedang aktif di IP Komputer lain, silahkan melapor ke pengawas untuk reset IP
                            </p>
                        </div>
                    </div>
                           
                        </div>
    
                    </div>
                </div></div>
            </div>

</main>

@endsection

@push('addon-script')
    
@endpush