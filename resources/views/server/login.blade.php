<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Login</title>


    <link href="{{url('cat')}}/css/fontawesome/css/all.css" rel="stylesheet">

    <link rel="stylesheet" href="{{url('cat')}}/css/bootstrap.min.css">
    
    <link rel="stylesheet" href="{{url('cat')}}/css/mdb.min.css">
    
    <link rel="stylesheet" href="{{url('cat')}}/css/style.css">

    <style type="text/css">
        .ajax-loading {
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            z-index: 9999;
            background: #6f6464;
            opacity: 0.75;
            color: #fff;
            text-align: center;
            font-size: 25px;
            padding-top: 300px;
            display: none;
        }



    </style>

</head>

<header>
    <!-- <nav class="navbar navbar-dark fixed-top text-center">
        <span class="navbar-text text-center ">
        <img src="{{url('logo.png')}}" width="120px"></div>
        </span>
      </nav> -->
</header>

<body style="background-color: #f0f3f6 ">
 <div style="height: 100vh">
    <div class="flex-center flex-column">
        
     <div class="container-fluid">
         <div class="row">
             <div class="col-md-4 offset-4">
                 <div>
                     <img src="{{url('logo.png')}}" width="130px"></div>
                       
                 <div class="card">
                     <div class="card-body py-5 px-5">
                       <div class="text-center">
                          
                            <h4 class="font-weight-bolder">Login Server Lokal</h4>
                       </div>  
                       <form class="pt-4" id="form" method="POST" action="{{ route('login') }}">
                        @csrf
                            <div class="form-group mb-3">
                                <label for="username">Username</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text input-group-text-cs" id="inputGroupPrepend21"><i
                                                class="fas fa-user"></i></span>
                                    </div>
                                    <input type="text" class="form-control @error('username') is-invalid @enderror" name="username" id="username" value="{{ old('username') }}" required autocomplete="username" autofocus>
                                    
                                    @error('username')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-group mb-4">
                                <label for="exampleInputEmail1">Password</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text input-group-text-cs" onclick="myFunction()">
                                            <i id="hide1" class="fas fa-eye"></i>
                                            <i id="hide2" class="fas fa-eye-slash "></i>
                                        </span>
                                    </div>
                                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                                    @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                </div>
                            </div>
                            <button onclick="login(); return false;" type="submit" class="btn btn-block btn-sm-cs btn-primary" style="font-size: 16px; font-weight:600; padding-top: 7px;  padding-bottom: 7px">Login</button>
                        </form>
                     </div>
                 </div>
             </div>
         </div>
     </div>
    </div>
  </div>

  <div class="ajax-loading"><i class="fa fa-spin fa-spinner"></i> Loading ...</div>


  <script type="text/javascript" src="{{url('cat')}}/js/jquery.min.js"></script>

    <script type="text/javascript" src="{{url('cat')}}/js/popper.min.js"></script>

    <script type="text/javascript" src="{{url('cat')}}/js/mdb.min.js"></script>

    <script type="text/javascript" src="{{url('cat')}}/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="{{url('cat')}}/sweertalert/sweetalert2.all.min.js"></script>


    <!-- Your custom scripts (optional) -->
    <script type="text/javascript">
       
        function myFunction() {
            var x = document.getElementById("password");
            var y = document.getElementById("hide1");
            var z = document.getElementById("hide2");

            if (x.type === 'password') {
                x.type = "text";
                y.style.display = "block";
                z.style.display = "none";
            } else {
                x.type = "password";
                y.style.display = "none";
                z.style.display = "block";
            }
        }

        function login() {
           
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });


        var form = $('#form');
            form.find('.invalid-feedback').remove();
            form.find('.form-control').removeClass('is-invalid');
            // var username = $('#username').val();
       
        $.ajax({
            type: "POST",
            url: "{{url('login-server')}}",
            data: {
                username:$('#username').val(),
                password:$('#password').val()
            },
            dataType:"json",
            beforeSend: function () {
                    $('.ajax-loading').show();
                    
                },
            success: function(data) {
                $('.ajax-loading').hide();
                console.log(data);
                if (data.meta.code == 200) {
                 document.getElementById("form").submit();

                } else {
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: data.meta.message,
                        //footer: '<a href="">Why do I have this issue?</a>'
                     });
                }
                
            },
            error: function(xhr){
                $('.ajax-loading').hide();
                let response = xhr.responseJSON
                if($.isEmptyObject(response)==false){
                    $.each(response.errors, (key, value)=>{
                    
                        $('#'+key)
                            .closest('.form-control')
                            .addClass('is-invalid')
                            .after('<div  class="invalid-feedback" >  '+ value +'</div>')
                    })
                }
            }

        });
        }


    </script>

</body>

</html>














