<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Subtes</title>


    <link href="{{url('cat')}}/css/fontawesome/css/all.css" rel="stylesheet">
  
    <link rel="stylesheet" href="{{url('cat')}}/css/bootstrap.min.css">

    <link rel="stylesheet" href="{{url('cat')}}/css/mdb.min.css">

    <link rel="stylesheet" href="{{url('cat')}}/css/style.css">
    <script type="text/javascript" src="{{url('cat')}}/js/jquery.min.js"></script>
</head>

<body style="background-color: rgb(224, 224, 224);">
    <main>
        <div style="height: 100vh" style="background-color: black;">
            <div class="flex-center flex-column ">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-6">
                            <div class="card ">
                               
                                <h5 class="w-5 pt-4 text-center">
                                    Computer Assisted Test (CAT) </h5>
                                <p class=" text-center mb-4">Versi 1.0.0</p>
                                <div class="card-logo text-center mb-4" style="color: #fff;">
                                    <h5 class="text-w" style="font-weight: 500; font-size: 18px;">
                                        Silahkan tunggu untuk subtes berikutnya
                                    </h5>
                                    <h1 class="pb-0 mb-0 text-w" style="font-size: 70px;  font-weight: 500;" id="timer">
                                        
                                    </h1>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>


    <form  method="post" id="myForm" action="{{url('/jawab-soal')}}">
        @csrf
        <input type="hidden"  name="kode_kategori" value="{{Request::segment(2)}}" >
    </form>
    <script type="text/javascript" src="{{url('cat')}}/js/popper.min.js"></script>

    <script type="text/javascript" src="{{url('cat')}}/js/mdb.min.js"></script>

    <script type="text/javascript" src="{{url('cat')}}/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            get();
        });
            document.getElementById('timer').innerHTML =
                "00" + ":" + "00" + ":" + 31;
            startTimer();

            function startTimer() {
                var presentTime = document.getElementById('timer').innerHTML;
                var timeArray = presentTime.split(/[:]+/);

                var s = checkSecond((timeArray[2] - 1));

                document.getElementById('timer').innerHTML =
                    "00" + ":" + "00" + ":" + s;
                setTimeout(startTimer, 1000);

                if (s == 0) {
                    document.getElementById("myForm").submit(); 
                }
            }

            function checkSecond(sec) {
                if (sec < 10 && sec >= 0) {
                    sec = "0" + sec
                };
                if (sec < 0) {
                    sec = "59"
                };
                return sec;
            }
    </script>
  

</body>

</html>