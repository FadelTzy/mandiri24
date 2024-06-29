@extends('layouts.app')
@section('title')
    Beranda
@endsection
@section('content')
<main>
    <div class="d-flex justify-content-between page-title mb-3">
        <h4 class="w-4">Beranda</h4>
    </div>

    <div class="row">
        <div class="col-md-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="d-flex align-items-center">
                            <div class="bg-icon">
                                <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor"
                                    stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round"
                                    class="css-i6dzq1">
                                    <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                    <circle cx="9" cy="7" r="4"></circle>
                                    <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                    <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="text-right">
                            <h2 class="">100</h2>
                            <p class="mb-0">Lorem ipsum</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="d-flex align-items-center">
                            <div class="bg-icon">
                                <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor"
                                    stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round"
                                    class="css-i6dzq1">
                                    <path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                    <circle cx="8.5" cy="7" r="4"></circle>
                                    <polyline points="17 11 19 13 23 9"></polyline>
                                </svg> </div>
                        </div>
                        <div class="text-right">
                            <h2 class="">100</h2>
                            <p class="mb-0">Lorem ipsum</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="d-flex align-items-center">
                            <div class="bg-icon">
                                <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor"
                                    stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round"
                                    class="css-i6dzq1">
                                    <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                                    <polyline points="14 2 14 8 20 8"></polyline>
                                    <line x1="16" y1="13" x2="8" y2="13"></line>
                                    <line x1="16" y1="17" x2="8" y2="17"></line>
                                    <polyline points="10 9 9 9 8 9"></polyline>
                                </svg> </div>
                        </div>
                        <div class="text-right">
                            <h2 class="">100</h2>
                            <p class="mb-0">Lorem ipsum</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="d-flex align-items-center">
                            <div class="bg-icon">
                                <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor"
                                    stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round"
                                    class="css-i6dzq1">
                                    <path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path>
                                    <path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path>
                                </svg> </div>
                        </div>
                        <div class="text-right">
                            <h2 class="">100</h2>
                            <p class="mb-0">Lorem ipsum</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="d-flex justify-content-center"  >
        <button class="btn btn-danger" onclick="roll();" id="tombol-rollback">roolback</button>
        <input type="hidden" id="value_rollback">
    </div>

</main>

@endsection

@push('addon-script')
    <script>
           $(document).ready(function () {
                // $.ajaxSetup({
                //     headers: {
                //         'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                //     }
                // });
            $('#tombol-rollback').hide();
            get_rollback();
            });

            function get_rollback() {
                $.get("{{ url('get-rollback') }}"  , function (data) {
                    if (data.status=true) {
                        console.table(data)
                        if (data.is_active ==1) {
                            $('#value_rollback').val(data.aksi);
                            $('#tombol-rollback').show();
                        }
                } 
                });


            }

    function roll() {
        var aksi=  $('#value_rollback').val();

         $.get("{{ url('rollback') }}" +'/' + aksi, function (data) {
            if (data.status=true) {
                    Swal.fire(
                        'Good job!',
                        data.message,
                        'success'
                        );
                }
            })

        }
    </script>
@endpush