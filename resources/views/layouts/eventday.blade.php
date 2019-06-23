<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="online marketplace for event and supplier, eventmarketplace, eventsupplier, venue, vendor, event service, artist hire, wedding car hire,  Carhire, Florist, Stage decoration, hiredj, venue search london, Cheap supplier, freelancer artist, Staff for event, create event">
    <meta name="keywords" content="Eventsupplier, weddingvenue, venuehire,weddingcar, eventticket, createevent, suppliers, main event, wedding cake,event vendor,
event staff,Artist hire,wedding videographer,photographer,freelancer,organizer,eventplanner,weddingplanner,venue decorator, events, eventbrite, eventhorizon, current event, event decor hire">
    <link href="{{ asset('assets/css/eventday/bootstrap.min.css') }}" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/eventday/style.css') }}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/eventday/mycss.css') }}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/eventday/font-awesome.css') }}" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

    <title>
    	@section('title')
        | Find Best event suppliers
        @show
    </title>

    <style>
        .fa_login {
            padding: 4px;
            font-size: 20px;
            width: 30px;
            text-align: center;
            text-decoration: none;
            margin: 3px 1px;
        }

        .fa_login:hover {
            opacity: 0.7;
        }

        .jingalala li{ display: inline-block; border-radius:50px; height: 60px; text-align: center; border: 2px solid #fff; margin: 0 5px;}

    </style>

    <!--page level css-->
    @yield('header_styles')
    <!--end of page level css-->

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-137268793-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-137268793-1');
	</script>
<meta name="msvalidate.01" content="CD1FC7F9F5DA97FC697B7D5CC177FDD9" />

</head>

<body>

    @include('layouts.modals')
    <!-- Header Start -->
    <header>
      <div class="headerTop">
        <div class="container">
          <div class="row">
            <div class="col-sm-7"><div class="newsHighlight"><span>News!</span> {{@$frontarray['onenews']->title}}</div></div>
            <div class="col-sm-5"><div class="topLogin"><a href="{!! route('create-event') !!}" > Create an Event</a> | <a href="{{url('ads')}}">List Your Business</a></div></div>

          <div id="creatEventPageModel" class="modal fade">
              <div class="modal-dialog" role="document">
                  <div class="modal-content modal-contentCreate">

                      <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">x</button>
                      <h3>Create an Event</h3>
                    </div>
                      <div class="modal-body">
                          <div class="row createEventPage">
                            <ul>
                              <li><a href="#">I want to Book Event</a></li>
                              <li><a href="{!! route('create-event') !!}">I Want to Create Event</a></li>
                            </ul>
                          </div>
                      </div>
                  </div><!-- /.modal-content -->
              </div><!-- /.modal-dialog -->
          </div>
          </div>
        </div>
      </div>
      <div class="navWapper">
        <div class="container">
          <div class="row">
            <nav class="navbar navbar-default">
              <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="{{ url('/')}}"><img src="{{ asset('assets/images/eventday/eventdayPlanner.png')}}" class="img-responsive"></a><span class="slogan">Help to find everything you need about your event</span>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav navbar-right">
                        @if(Sentinel::guest())
                          <li><a href="#" data-toggle="modal" data-target="#ModalSignupMenuForm">Sign Up</a></li>
                          <li><a href="#" data-toggle="modal" data-target="#ModalLoginForm">Login </a></li>
                       @else
                            <li {{ (Request::is('my-account') ? 'class=active' : '') }}><a href="{{ URL::to('my-account') }}">My Account</a>
                            </li>
                            <li><a href="{{ URL::to('logout') }}">Logout</a>
                            </li>
                        @endif

                        @foreach($frontarray['mainmenu'] as $menu)
                        <li><a href="{{ route('page',$menu->slug)}}">{{$menu->name}}</a></li>

                        @endforeach
                        <li>
                            <div class="dropdown">
                              <a onclick="myFunction()" class="dropbtn">Currency</a>
                              <div id="myDropdown" class="dropdown-content">
                                <a {{ (session('currency')=='USD' || session('currency')=='')?'class="selected"':"" }} href="{{ URL::to('currency','USD') }}">USD</a>
                                <a {{ (session('currency')=='EUR')?'class="selected"':"" }} href="{{ URL::to('currency','EUR') }}">EUR</a>
                                <a {{ (session('currency')=='GBP')?'class="selected"':"" }} href="{{ URL::to('currency','GBP') }}">GBP</a>
                              </div>
                            </div>
                        </li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
            </nav>
          </div>
        </div>
      </div>
    </header>
    <!-- //Header End -->
    @if ($errors->any())
<div class="alert alert-danger alert-dismissable ">
  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
  <strong>Error:</strong> Please check the form below for errors
</div>
@endif

@if ($message = Session::get('success'))
<div class="alert alert-success alert-dismissable">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong>Success:</strong> {{ $message }}
</div>
@endif

@if ($message = Session::get('error'))
<div class="alert alert-danger alert-dismissable">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong>Error:</strong> {{ $message }}
</div>
@endif

@if ($message = Session::get('warning'))
<div class="alert alert-warning alert-dismissable">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong>Warning:</strong> {{ $message }}
</div>
@endif

@if ($message = Session::get('info'))
<div class="alert alert-info alert-dismissable">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong>Info:</strong> {{ $message }}
</div>
@endif

    @yield('top')
    @yield('content')
    @include('layouts.footer')


{{--    @include('cookieConsent::index')--}}
<!--global js start-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="{{ asset('assets/js/eventday/bootstrap.min.js')}}"></script>

    <script src="{{ asset('assets/vendors/toastr/js/toastr.min.js') }}"></script>
    <script src="{{ asset('assets/vendors/toastr/js/pages/ui-toastr.js') }}"></script>
    <link href="{{ asset('assets/vendors/toastr/css/toastr.css') }}" rel="stylesheet" type="text/css"/>

    <script>

    toastr.options = {
        "closeButton": true,
        "debug": false,
        "positionClass": "toast-bottom-right",
        "onclick": null,
        "showDuration": "1000",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "swing",
        "showMethod": "slideDown",
        "hideMethod": "fadeOut"
    };

    @if (Session::has('app_info'))
    toastr.info("{{ Session::get('app_info') }}", "Message");
    @endif

    @if (Session::has('app_message'))
    toastr.success("{{ Session::get('app_message') }}", "Message");
    @endif

    @if (Session::has('app_warning'))
    toastr.warning("{{ Session::get('app_warning') }}", "Message");
    @endif

    @if (Session::has('app_error'))
    toastr.error("{{ Session::get('app_error') }}", "Message");
    @endif

/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}

$(function(){

    $('.signUpModal').on('change' , function () {
        status_checkbox = $(this);
        form_class = status_checkbox.attr('data-id');
        ischecked= status_checkbox.is(':checked');

        if (ischecked){
            $('#SignupMenuForm').hide('slow');
            $('#SignupFreelancerForm').hide('slow');
            $('#SignupBusinessForm').hide('slow');
            $('#SignupEventOrganizerForm').hide('slow');

            $('#'+form_class).show('slow');
        }

    });

});

</script>
    @yield('footer_scripts')
</body>
</html>
