<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Selesai</title>


    <link href="{{url('cat')}}/css/fontawesome/css/all.css" rel="stylesheet">

    <link rel="stylesheet" href="{{url('cat')}}/css/bootstrap.min.css">

    <link rel="stylesheet" href="{{url('cat')}}/css/mdb.min.css">

    <link rel="stylesheet" href="{{url('cat')}}/css/style.css">

    <script type="text/javascript" src="{{url('cat')}}/js/jquery.min.js"></script>
</head>

<body style="background-color: black;">
    <main>
        <div style="height: 100vh" style="background-color: black;">
            <div class="flex-center flex-column ">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-6">
                            <div class="card card-custom">
                                <h5 class="card-header font-weight-bold text-center">
                                    Perhatian</h5>
                                <div class="card-body text-center">
                                    <p>Waktu ujian telah habis
                                    </p>
                                    <hr>
                                    <div class="d-flex justify-content-end">
                                        <a href="{{ route('logout') }}"   onclick="event.preventDefault();
                                        document.getElementById('logout-form').submit();" type="button"
                                            class="btn btn-custom btn-sm mt-0 mb-0">OK</a>
                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                                @csrf
                                            </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

   
    <script type="text/javascript" src="{{url('cat')}}/js/popper.min.js"></script>
 
    <script type="text/javascript" src="{{url('cat')}}/js/mdb.min.js"></script>

    <script type="text/javascript" src="{{url('cat')}}/js/bootstrap.min.js"></script>



</body>

</html>