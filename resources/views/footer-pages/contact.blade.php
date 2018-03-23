@extends('layouts.eventday')

{{-- Page title --}}
@section('title')
Contact
@parent
@stop

{{-- page level styles --}}
@section('header_styles')
    <!--page level css starts-->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/frontend/contact.css') }}">
    <!--end of page level css-->
@stop

{{-- breadcrumb --}}
@section('top')
    <div class="breadcum">
        <div class="container">
            <ol class="breadcrumb">
                <li>
                    <a href="{{ route('home') }}"> <i class="livicon icon3 icon4" data-name="home" data-size="18" data-loop="true" data-c="#3d3d3d" data-hc="#3d3d3d"></i>Dashboard
                    </a>
                </li>
                <li class="hidden-xs">
                    <i class="livicon icon3" data-name="angle-double-right" data-size="18" data-loop="true" data-c="#01bc8c" data-hc="#01bc8c"></i>
                    <a href="#">Contact</a>
                </li>
            </ol>
        </div>
    </div>
@stop


{{-- Page content --}}
@section('content')
    <!-- Map Section Start -->
    <div class="">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6759.039608889927!2d72.65009212667256!3d32.10926146244241!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x392176f3c21fabed%3A0x7fceccc42306c7d5!2sAziz+Bhatti+Town%2C+Sargodha%2C+Pakistan!5e0!3m2!1sen!2s!4v1521829256965" width="100%" height="400px"  frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>
    <!-- //map Section End -->
    <!-- Container Section Start -->
    <div class="container">
        <div class="row">
            <!-- Contact form Section Start -->
            <div class="col-md-6">
                <h2>Contact Form</h2>
                <!-- Notifications -->
                @include('notifications')

                <form class="contact" id="contact" action="#" method="POST">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                    <div class="form-group">
                        <input type="text" name="contact-name" class="form-control input-lg" placeholder="Your name" required>
                    </div>
                    <div class="form-group">
                        <input type="email" name="contact-email" class="form-control input-lg" placeholder="Your email address" required>
                    </div>
                    <div class="form-group">
                        <textarea name="contact-msg" class="form-control input-lg no-resize" rows="6" placeholder="Your comment" required></textarea>
                    </div>
                    <br>
                    <div class="input-group">
                        <button class="btn btn-primary" type="submit">submit</button>
                        <button class="btn btn-danger" type="reset">cancel</button>
                    </div>
                </form>
            </div>
            <!-- //Conatc Form Section End -->
            <!-- Address Section Start -->
            <div class="col-md-6 col-sm-6">
                <div class="media media-right">
                    <div class="media-left media-top">
                        <a href="#">
                            <div class="box-icon">
                                <i class="livicon" data-name="home" data-size="22" data-loop="true" data-c="#fff" data-hc="#fff"></i>
                            </div>
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Address:</h4>
                        <div class="danger">Jyostna</div>
                        <address>
                            Pediatric Surgeons of Alaska
                            <br> 3340 Providence Drive #565
                            <br> Anchorage, AK(Alaska)
                            <br> North Las Vegas, NV
                        </address>
                    </div>
                </div>
                <div class="media padleft10">
                    <div class="media-left media-top">
                        <a href="#">
                            <div class="box-icon">
                                <i class="livicon" data-name="phone" data-size="22" data-loop="true" data-c="#fff" data-hc="#fff"></i>
                            </div>
                        </a>
                    </div>
                    <div class="media-body padbtm2">
                        <h4 class="media-heading">Telephone:</h4> (703) 717-4200
                        <br /> Fax:400 423 1456
                    </div>
                </div>
            </div>
            <!-- //Address Section End -->
        </div>
    </div>
    
@stop

{{-- page level scripts --}}
@section('footer_scripts')
    <!-- page level js starts-->
    {{--<script src="http://maps.google.com/maps/api/js?sensor=true"></script>--}}
{{--    <script type="text/javascript" src="{{ asset('assets/js/frontend/gmap.js') }}"></script>--}}
    <!--page level js ends-->

@stop
