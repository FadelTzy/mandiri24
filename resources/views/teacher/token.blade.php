@extends('layouts.app')

@section('title')
    Token
@endsection 
@section('content')
<main>

    <div class="d-flex justify-content-between page-title mb-3">
        <h4 class="w-4">Token Ujian</h4>
    </div>

    <div class="card mb-3">
        <div class="card-header pb-4 pt-4 d-flex justify-content-between">
            <p class="mb-0">Token ujian</p>
           
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6 text-center">
                    <img class="mb-4" src="{{url('cat')}}/img/icon-ujian.png" width="200px" alt="">
                    <h6 class="mb-4">Silahkan tekan tombol dibawah untuk menampilkan token</h6>
                    <a href="#" class="btn btn-primary btn-sm mr-0" onclick="tampil();">
                        Tampilkan token <svg viewBox="0 0 24 24" width="19" height="19" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="icon-dual"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="9" y1="15" x2="15" y2="15"></line></svg></i></a>
                </div>
                <div class="col-md-6">
                    <p class="text-muted">
                        Token ujian
                    </p>
                    <h1 id="token" style="font-size: 120px;">{{$token}}</h1>
                </div>
            </div>
        </div>
    </div>


</main>

@endsection

@push('addon-script')
    
<script>
     $('#token').hide();
    function tampil() {
        $('#token').show();
    }

    function tutup() {
        $('#token').hide();
    }
    setInterval(tutup, 90000);
</script>
@endpush