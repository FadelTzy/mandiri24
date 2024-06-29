@extends('layouts.app')
@section('title')
    Upload File Soal
@endsection

@push('addon-style')
        
<link rel="stylesheet" href="{{url('cat')}}/dropzone/dropzone.css">
<script src="{{url('cat')}}/dropzone/dropzone.js"></script>
@endpush

@section('content')
<main>

    <section class="mb-1">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">

                <li class="breadcrumb-item"><a href="#"> </i>CAT</a></li>
                {{-- <li class="breadcrumb-item"> <a href="<?= base_url('soal') ?>.html"> </i>Soal</a></li> --}}
                <li class="breadcrumb-item active" aria-current="page"> Tambah File Soal</li>
            </ol>
        </nav>
    </section>

    <div class="card">
        <form method="post" action="{{url('image/upload/store')}}" enctype="multipart/form-data" 
        class="dropzone" id="dropzone">
        @csrf
        </form>



    </div>



</main>

@endsection

@push('addon-script')
<script type="text/javascript">
    Dropzone.options.dropzone =
     {
        // maxFilesize: 12,
        renameFile: function(file) {
            var dt = new Date();
            var time = dt.getTime();
           return file.name;
        },
        acceptedFiles: ".jpeg,.jpg,.png,.gif",
        addRemoveLinks: true,
        timeout: 5000,
        success: function(file, response) 
        {
            console.log(response);
        },
        error: function(file, response)
        {
           return false;
        }
};
</script>
@endpush