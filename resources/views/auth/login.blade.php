@extends('layouts.app')


@section('title')
    Login
@endsection

@section('content')


<main>
    <div class="d-flex justify-content-between page-title mb-3">
        <h4 class="w-4">Login Peserta</h4>
    </div>


    <div class="row">

        <div class="col-md-12">
            <div class="card">



                <!-- Card content -->
                <div class="card-body">

                    <div class="row mt-5">
                        <div class="col-md-6 d-flex align-items-end">
                            <img src="{{url('cat')}}/img/icons2.png" width="100%" alt="">

                        </div>
                        <div class="col-md-5">
                            <form method="POST" action="{{ route('login') }}">
                                @csrf
                                <div class="col-md-12 mb-5">
                                    <label class="w-5">Nomor Peserta</label>
                                   
                               
                                    <input type="text" class="form-control @error('username') is-invalid @enderror" name="username" value="{{ old('username') }}" required autocomplete="username" autofocus
                                        class="form-control text-center"
                                        placeholder="Nomor Peserta">
                                        @error('username')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                    <small><span style="color: brown;">*</span> Diisi sesuai dengan nomor peserta
                                        pada kartu tanda peserta ujian</small>
                                </div>
                                <div class="col-md-12 mb-5">
                                    <label class="w-5">PIN Peserta</label>
                                    <input  type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password"
                                        class="form-control text-center" placeholder="PIN Peserta">
                                    <small><span style="color: brown;">*</span> Gunakan 5 digit terakhir nomor peserta sebagai PIN
                                        peserta</small>
                                </div>
                                <div class="col-md-12 mb-3">
                                    <button type="submit" class="btn btn-primary btn-block"
                                    style="margin-left: -1px; font-weight: 700; font-size: 12px;  color: rgb(241, 241, 241);"><i
                                    class="fas fa-sign-in-alt pr-3" aria-hidden="true"></i>
                                        {{ __('Login') }}
                                    </button>
                                    {{-- <a href="persetujuan.html" class="btn btn-primary btn-block"
                                        style="margin-left: -1px; font-weight: 700; font-size: 12px;  color: rgb(241, 241, 241);"><i
                                            class="fas fa-sign-in-alt pr-3" aria-hidden="true"></i>
                                        Login</a> --}}

                                </div>
                            </form>
                        </div>

                    </div>

                </div>

            </div>
        </div>

    </div>

</main>


@endsection

@push('addon-script')
    
@endpush
