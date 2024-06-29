


    <script type="text/javascript" src="{{url('cat')}}/js/popper.min.js"></script>
 
    <script type="text/javascript" src="{{url('cat')}}/js/mdb.min.js"></script>

    <script type="text/javascript" src="{{url('cat')}}/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="{{url('cat')}}/js/addons/datatables.min.js"></script>

    
    <script type="text/javascript" src="{{url('cat')}}/sweertalert/sweetalert2.all.min.js"></script>


    <script type="text/javascript">
        $(document).ready(function () {
            // SideNav Default Options
            $('.button-collapse').sideNav({
                edge: 'left', // Choose the horizontal origin
                closeOnClick: false, // Closes side-nav on &lt;a&gt; clicks, useful for Angular/Meteor
                breakpoint: 1440, // Breakpoint for button collapse
                menuWidth: 240, // Width for sidenav
                timeDurationOpen: 300, // Time duration open menu
                timeDurationClose: 200, // Time duration open menu
                timeDurationOverlayOpen: 50, // Time duration open overlay
                timeDurationOverlayClose: 200, // Time duration close overlay
                easingOpen: 'easeOutQuad', // Open animation
                easingClose: 'easeOutCubic', // Close animation
                showOverlay: true, // Display overflay
                showCloseButton: false // Append close button into siednav
            });
        });




        $body = $("body");
            $(document).on({
                ajaxStart: function() {
                    $body.addClass("loading");

                },
                ajaxStop: function() {
                    $body.removeClass("loading");
                }

            });
            function logout() {
           $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
        Swal.fire({
            title: 'Apakah anda yakin?',
            text: "",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#f00',
            cancelButtonText: 'Batal',
            cancelButtonColor: '#D0D0D0',
            confirmButtonText: 'Ya'
        }).then((result) => {
            if (result.value) {
                if (result.value) {
                     $.ajax({
                        type: "POST",
                        url: "{{ url('logout') }}",
                        success: function(data) {
                           location.href = "{{url('/')}}";
                        }

                        
                    });
                }
            }


        })

    }
    </script>
