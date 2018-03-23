@extends('layouts.eventday')

{{-- Page title --}}
@section('title')
Site Map
@parent
@stop

{{-- page level styles --}}
@section('header_styles')
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
                    <a href="#">Site Map</a>
                </li>
            </ol>
        </div>
    </div>
    @stop


{{-- Page content --}}
@section('content')
    <section class="feature-main">
        <div class="container">
            <div class="row">

                <div class="col-md-12 col-sm-12 col-xs-12 wow zoomIn" data-wow-duration="2s" style="visibility: visible; animation-duration: 2s;">
                    <div class="layout-image">
                        <img src="{{asset('assets/images/sitemap3.gif')}}" alt="layout" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
    </section>
    
@stop

{{-- page level scripts --}}
@section('footer_scripts')

@stop
