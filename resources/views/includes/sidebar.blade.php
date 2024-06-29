<header>

    <!--Navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar double-nav">
        <div class="float-left">
            <a href="#" data-activates="slide-out" class="button-collapse">
                <i class="fa fa-bars"></i>
            </a>
        </div>
        <div class="breadcrumb-dn pl-2">
            <p class="font-weight-bolder"><strong>CAT </strong> - Computer Assisted Test</p>
        </div>
        <ul class="navbar-nav ml-auto">
        </ul>
    </nav>
    <!-- end navbar -->




    
    @guest

        <!-- sidebar -->
        <div id="slide-out" class="side-nav fixed">
            <ul class="custom-scrollbar">
                <li class="logo-sn waves-effect">
                    <div class=" text-center">
               <div>
                    <img src="{{url('logo.png')}}"></div>
                        <!-- <a href="#" class="pl-0"> -->
                             <!-- <img width="100px" src="{{url('logo.png')}}"> -->
                            {{-- <h1>LOGO</h1> --}}
                        <!-- </a> -->
                    </div>
                </li>
                <li>
                    <ul class="collapsible collapsible-accordion  ">
                        <li><a href="{{url('/')}}" class="collapsible-header waves-effect arrow-r {{ (request()->is('beranda')) ? 'active' : '' }}"><i
                                    class="fas fa-home"></i><span>Beranda</span> </a>
                    </ul>
                    <ul class="collapsible collapsible-accordion ">
                        <li><a href="{{url('/petunjuk')}}" class="collapsible-header waves-effect arrow-r  {{ (request()->is('petunjuk')) ? 'active' : '' }}"><i
                                    class="fas fa-pen"></i><span>Petunjuk & Tata Tertib</span> </a>
                    </ul>
                    <ul class="collapsible collapsible-accordion ">
                        <li><a href="{{url('login')}}" class="collapsible-header waves-effect arrow-r {{ (request()->is('login')) ? 'active' : '' }} "><i
                                    class="fas fa-sign-in-alt"></i><span>Login Peserta</span> </a>
                    </ul>
                </li>
            </ul>
            <div class="sidenav-bg rgba-blue-strong"></div>
        </div>
        <!-- end sidebar -->

    @else
      <!-- sidebar -->
      <div id="slide-out" class="side-nav fixed">
        <ul class="custom-scrollbar">
            <!-- Logo -->
            <li class="logo-sn waves-effect">
                <div class=" text-center">
                    <a href="#" class="pl-0">
                        <img src="{{url('logo.png')}}">
                    </a>
                </div>
            </li>
           
            <li>
                <?php
                $role_id = Auth::user()->role_id; 
                $menu =  DB::table('menus')
                ->join('access_menus', 'menus.id', '=', 'access_menus.menu_id')
                ->where('role_id',$role_id)
                ->where('is_active',1)
                ->select('menus.*')
                ->orderBy('urut', 'ASC')
                ->get(); 
                
            
                ?>
                <!-- Menu -->
                @foreach ($menu as $m)
            
                    <?php 
                    $menuId =$m->id;
                
                    $sub_menu =  DB::table('sub_menus')
                    ->join('menus', 'sub_menus.menu_id', '=', 'menus.id')
                    ->join('access_sub_menus', 'sub_menus.id', '=', 'access_sub_menus.sub_menu_id')
                    // ->where('sub_menus.menu_id', '=', $menuId)
                    // ->where('access_sub_menus.sub_role_id', '=', $role_id)
                    // ->where('sub_menus.is_active', '=', 1)
                    ->where('sub_menus.menu_id',$menuId)
                    ->where('access_sub_menus.sub_role_id',$role_id)
                    ->where('sub_menus.is_active',1)
                    ->orderBy('urut_sub', 'ASC')
                    ->get(); 
                
            
                
                    ?>

                  
                @if( $m->url == "" )

                <ul class="collapsible collapsible-accordion">
                    <li><a onclick="return false;" href="#" class="collapsible-header waves-effect arrow-r @foreach ($sub_menu as $sm) {{ (request()->is($sm->sub_url)) ? 'active' : '' }}  @endforeach ">
                        <i class="{{$m->icon}}"></i>
                        {{$m->menu}}<i class="fas fa-angle-down rotate-icon"></i></a>
                        <div class="collapsible-body ml-3" >
                            <ul>
                                @foreach ($sub_menu as $sm)
                                <li><a href="{{url('/')}}/{{$sm->sub_url}}" class="waves-effect  {{ (request()->is($sm->sub_url)) ? 'active' : '' }}"><i class="far fa-circle"></i>{{$sm->sub}}</a>
                                </li>
                                
                                @endforeach
                            </ul>
                        </div>
                    </li>

                </ul>

            
                @else

                <ul class="collapsible collapsible-accordion ">
                    <li><a href="{{url('/')}}/{{$m->url}}" class="collapsible-header waves-effect arrow-r  {{ Request::segment(1) == $m->url ? 'active' : '' }} "> 
                        <i class="{{$m->icon}}"> </i>{{$m->menu}}</i> </a>
                </ul>
                @endif

                @endforeach

                   
                <ul class="collapsible collapsible-accordion ">
                    
                    <li><a   href="{{ route('logout') }}"  onclick="event.preventDefault();
                        document.getElementById('logout-form').submit();" class="collapsible-header waves-effect arrow-r "> <i
                                class="fas  fa-sign-out-alt"> </i>Keluar</i> </a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                </ul>
            </li>
        </ul>
        <div class="sidenav-bg rgba-blue-strong"></div>
    </div>
    <!-- end sidebar -->
    @endguest

{{--     
    <!-- sidebar -->
    <div id="slide-out" class="side-nav fixed">
        <ul class="custom-scrollbar">
            <!-- Logo -->
            <li class="logo-sn waves-effect">
                <div class=" text-center">
                    <a href="#" class="pl-0">
                        <!-- <img src="../../img/logocat.png"> -->
                        <h1>LOGO</h1>
                    </a>
                </div>
            </li>
            <li>
                <ul class="collapsible collapsible-accordion  ">
                    <li><a href="index.html" class="collapsible-header waves-effect arrow-r active"> <i
                                class="fas fa-home"></i><span>Beranda</span> </a>
                </ul>
                <ul class="collapsible collapsible-accordion">
                    <li><a class="collapsible-header waves-effect arrow-r"><i
                                class="fas fa-layer-group"></i><span>Master</span><i
                                class="fas fa-angle-down rotate-icon"></i></a>
                        <div class="collapsible-body">
                            <ul>
                                <li><a href="sesi.html" class="waves-effect"><i
                                            class="far fa-circle"></i><span>Sesi</span></a>
                                </li>
                                <li><a href="ruangan.html" class="waves-effect"><i
                                            class="far fa-circle"></i><span>Ruangan</span></a>
                                </li>

                                <li><a href="peserta.html" class="waves-effect"><i
                                            class="far fa-circle"></i><span>Peserta</span></a>
                                </li>

                                <li><a href="pengawas.html" class="waves-effect"><i
                                            class="far fa-circle"></i><span>Pengawas</span></a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
                <ul class="collapsible collapsible-accordion ">
                    <li><a href="kategori.html" class="collapsible-header waves-effect arrow-r "><i
                                class="fab fa-trello"></i><span>Kategori</span> </a>
                </ul>
                <ul class="collapsible collapsible-accordion ">
                    <li><a href="soal.html" class="collapsible-header waves-effect arrow-r "><i
                                class="fas fa-book"></i><span>Soal</span></a>
                </ul>
                <ul class="collapsible collapsible-accordion ">
                    <li><a href="jadwal.html" class="collapsible-header waves-effect arrow-r"> <i
                                class="fas fa-calendar-day"></i><span>Jadwal Ujian</span></a>
                </ul>
                <ul class="collapsible collapsible-accordion ">
                    <li><a href="#" class="collapsible-header waves-effect arrow-r "> <i
                                class="fas fa-file-alt"></i><span>Hasil Ujian</span> </a>
                </ul>
                <ul class="collapsible collapsible-accordion ">
                    <li><a href="#" class="collapsible-header waves-effect arrow-r "> <i
                                class="fas fa-sign-out-alt"></i><span>Keluar</span></a>
                </ul>
            </li>
        </ul>
        <div class="sidenav-bg rgba-blue-strong"></div>
    </div>
    <!-- end sidebar --> --}}

</header>
