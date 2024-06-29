@extends('layouts.app')

@section('title')
    Hasil Ujian
@endsection
@section('content')
<main>
    <section class="mb-3">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#"> </i>CAT</a></li>
                <li class="breadcrumb-item active" aria-current="page">Hasil ujian</li>
            </ol>
        </nav>
    </section>
    <div class="card mb-3">
        <div class="card-header pb-1 pt-1 d-flex justify-content-end">
            <div class="d-flex">
                <button class="btn btn-primary btn-sm mr-0" > <i class="fas fa-spinner"></i> Proses Hasil</button>
                <a href="#" class="btn btn-info btn-sm mr-0" data-toggle="modal" data-target="#Modaltambahjadwal">
                    Print<i class="fas fa-print pl-3" aria-hidden="true"></i></a>
                <a href="#" class="btn btn-success btn-sm mr-0" data-toggle="modal" data-target="#Modalimport">
                    Download Excel<i class="fas fa-download pl-3" aria-hidden="true"></i></a>

            </div>
        </div>
        <div class="card-body">
            <table id="table" class="table table-md table-striped table-bordered tb-cs">
                <thead>
                    <tr>
                        <th class="text-center" scope="col">No</th>
                        <th scope="col">NIS</th>
                        <th class="text-center" scope="col">Nama</th>
                        <th scope="col">Kelas</th>
                        <th scope="col">Score</th>
                        <th class="text-center" scope="col">Ket</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="text-center">1</td>
                        <td>003213123123</td>
                        <td>Abdi rabil izzah</td>
                        <td>SAINTEK</td>
                        <td>0.00</td>
                        <td>500</td>
                        <td>--</td>

                    </tr>
                </tbody>
            </table>
        </div>
    </div>



</main>

@endsection



@push('addon-script')
<script>

</script>
    
@endpush