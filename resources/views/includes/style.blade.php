
    
    <link href="{{url('cat')}}/css/fontawesome/css/all.css" rel="stylesheet">
  
    <link rel="stylesheet" href="{{url('cat')}}/css/bootstrap.min.css">
    
    <link rel="stylesheet" href="{{url('cat')}}/css/mdb.min.css">
 
    <link rel="stylesheet" href="{{url('cat')}}/css/style.css">
  
    
    <link href="{{url('cat')}}/css/addons/datatables.min.css" rel="stylesheet">

    <style>
        /* loading */
        .modal2 {
            display: none;
            position: fixed;
            z-index: 1000;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background: rgba(255, 255, 255, .8) url('<?= url('cat') ?>/loading/loading.gif') 50% 50% no-repeat;
        }
    
        /* When the body has the loading class, we turn
             the scrollbar off with overflow:hidden */
        body.loading {
            overflow: hidden;
        }
    
        /* Anytime the body has the loading class, our
             modal element will be visible */
        body.loading .modal2 {
            display: block;
        }
    </style>

    <script type="text/javascript" src="{{url('cat')}}/js/jquery.min.js"></script>
