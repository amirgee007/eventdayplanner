@extends('layouts/eventday')

{{-- Page title --}}
@section('title')
    Forget Password
    @parent
@stop

{{-- page level styles --}}
@section('header_styles')

    <link href="{{ asset('assets/css/pages/alertmessage.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/css/pages/mail_box.css') }}" rel="stylesheet" type="text/css" />
    <link type="text/css" rel="stylesheet" href="{{asset('assets/vendors/iCheck/css/all.css')}}" />
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/frontend/login.css') }}">
    <!-- page level css ends-->
@stop

{{-- Page content --}}
@section('content')

    <section class="bannerWrapper innerBanner">
        <div class="searchWrap">
            <div class="container">
                <h1>Reset your Password</h1>
            </div>
        </div>
    </section>
    <div class="container textsmall">
        <div class="row">
            <div class="box animation flipInX">
                <div class="box1">
                    <p>Enter your new password details</p>
                    <p style="color:red;">Must have capital letter, Number,special char</p>
                    <form action="{{ route('forgot-password-confirm',compact(['userId','passwordResetCode'])) }}" class="omb_loginForm"  autocomplete="off" method="POST">
                        {!! Form::token() !!}
                        <input type="password" class="form-control" name="password" placeholder="New Password" required>
                        <span class="help-block">{{ $errors->first('password', ':message') }}</span>

                        <input type="password" class="form-control" name="password_confirm" placeholder="Confirm New Password" required>
                        <span class="help-block">{{ $errors->first('password_confirm', ':message') }}</span>
                        <div class="form-group">
                            <input class="form-control btn btn-default btn-block" type="submit" value="Submit to Reset Your Password" style="margin-top:30px;">
                        </div>
                    </form>
                </div>
            </div>
            <br>
            <br>
            <br>
        </div>
    </div>
@stop

@section('footer_script')
    <!--global js starts-->
    <script type="text/javascript" src="{{ asset('assets/js/jquery.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
    <!--global js end-->
@stop
