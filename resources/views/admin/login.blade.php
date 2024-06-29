<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login</title>


    <link href="{{url('cat')}}/css/fontawesome/css/all.css" rel="stylesheet">

    <link rel="stylesheet" href="{{url('cat')}}/css/bootstrap.min.css">
    
    <link rel="stylesheet" href="{{url('cat')}}/css/mdb.min.css">
    
    <link rel="stylesheet" href="{{url('cat')}}/css/style.css">
   

</head>
<!-- 
<header>
    <nav class="navbar navbar-dark fixed-top">
        <span class="navbar-text text-center ">
        <img src="{{url('logo.png')}}" width="120px"></div>
        </span>
      </nav>
</header> -->

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
                          
                            <h4 class="font-weight-bolder">Login Pengawas</h4>
                       </div>  
                       <form class="pt-4" method="POST" action="{{ route('login') }}">
                        @csrf
                            <div class="form-group mb-3">
                                <label for="username">Username</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text input-group-text-cs" id="inputGroupPrepend21"><i
                                                class="fas fa-user"></i></span>
                                    </div>
                                    <input type="text" class="form-control @error('username') is-invalid @enderror" name="username" value="{{ old('username') }}" required autocomplete="username" autofocus>
                                    
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
                            <button type="submit" class="btn btn-block btn-sm-cs btn-primary" style="font-size: 16px; font-weight:600; padding-top: 7px;  padding-bottom: 7px">Login</button>
                        </form>
                     </div>
                 </div>
             </div>
         </div>
     </div>
    </div>
  </div>


  <script type="text/javascript" src="{{url('cat')}}/js/jquery.min.js"></script>

    <script type="text/javascript" src="{{url('cat')}}/js/popper.min.js"></script>

    <script type="text/javascript" src="{{url('cat')}}/js/mdb.min.js"></script>

    <script type="text/javascript" src="{{url('cat')}}/js/bootstrap.min.js"></script>



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
    </script>

</body>

</html>














