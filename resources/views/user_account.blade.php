@extends('layouts.eventday')

{{-- Page title --}}
@section('title')
    User Account
    @parent
@stop

{{-- page level styles --}}
@section('header_styles')

    <link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/iCheck/css/minimal/blue.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/select2/css/select2.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/select2/css/select2-bootstrap.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/datetimepicker/css/bootstrap-datetimepicker.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/frontend/user_account.css') }}">

@stop

{{-- Page content --}}
@section('content')
<section class="bannerWrapper innerBanner">
  <div class="searchWrap">
    <div class="container">
        <h1>My Account</h1>
           
    </div>
  </div>
</section>
    <div class="container textsmall">
        
        <div class="row">
            <div class="row">
                <div class="col-md-12">
                    <!--main content-->
                    <div class="position-center">
                        <div>
                        @include('usermenu')
                        </div>

                        <div>
                            <h3 class="text-primary">Personal Information</h3>
                        </div>
                        <form role="form" id="tryitForm" class="form-horizontal" enctype="multipart/form-data"
                              action="{{ route('my-account') }}" method="POST">
                            <input type="hidden" name="_method" value="PUT">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <div class="form-group">
                                <label class="col-md-2 control-label">Avatar:</label>
                                <div class="col-md-10">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <div class="fileinput-new thumbnail" style="max-width: 200px; max-height: 150px;">
                                            @if($user->pic)
                                                <img src="{!! url('/').'/uploads/users/'.$user->pic !!}" alt="img"
                                                     class="img-responsive"/>
                                            @else
                                                <img src="http://placehold.it/200x150" alt="..."
                                                     class="img-responsive"/>
                                            @endif
                                        </div>
                                        <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                        <div>
                                                            <span class="btn btn-primary btn-file">
                                                                <span class="fileinput-new">Select image</span>
                                                                <span class="fileinput-exists">Change</span>
                                                                <input type="file" name="pic" id="pic" accept="image/*" />
                                                            </span>
                                            <span class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group {{ $errors->first('first_name', 'has-error') }}">
                                <label class="col-lg-2 control-label">
                                    First Name:
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-fw fa-user-md text-primary"></i>
                                    </span>
                                        <input type="text" placeholder=" " name="first_name" id="u-name"
                                               class="form-control" value="{!! old('first_name',$user->first_name) !!}">
                                    </div>
                                    <span class="help-block">{{ $errors->first('first_name', ':message') }}</span>
                                </div>

                            </div>

                            <div class="form-group {{ $errors->first('last_name', 'has-error') }}">
                                <label class="col-lg-2 control-label">
                                    Last Name:
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="fa fa-fw fa-user-md text-primary"></i>
                                            </span>
                                        <input type="text" placeholder=" " name="last_name" id="u-name"
                                               class="form-control"
                                               value="{!! old('last_name',$user->last_name) !!}"></div>
                                    <span class="help-block">{{ $errors->first('last_name', ':message') }}</span>
                                </div>
                            </div>

                            <div class="form-group {{ $errors->first('email', 'has-error') }}">
                                <label class="col-lg-2 control-label">
                                    Email:
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-fw fa-envelope text-primary"></i>
                                                                </span>
                                        <input type="text" placeholder=" " id="email" name="email" class="form-control"
                                               value="{!! old('email',$user->email) !!}"></div>
                                    <span class="help-block">{{ $errors->first('email', ':message') }}</span>
                                </div>

                            </div>

                            <div class="form-group {{ $errors->first('password', 'has-error') }}">
                                <p class="text-warning col-md-offset-2 col-sm-offset-2 col-xs-offset-1"><strong>If you don't want to change password... please leave them empty</strong></p>
                                <label class="col-lg-2 control-label">
                                    Password:
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="fa fa-fw fa-key text-primary"></i>
                                            </span>
                                        <input minlength="6" type="password" name="password" placeholder=" " id="pwd" class="form-control"></div>
                                    <span class="help-block">{{ $errors->first('password', ':message') }}</span>
                                </div>
                            </div>

                            <div class="form-group {{ $errors->first('password_confirm', 'has-error') }}">
                                <label class="col-lg-2 control-label">
                                    Confirm Password:
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="fa fa-fw fa-key text-primary"></i>
                                            </span>
                                        <input minlength="6" type="password" name="password_confirm" placeholder=" " id="cpwd" class="form-control"></div>
                                    <span class="help-block">{{ $errors->first('password_confirm', ':message') }}</span>
                                    {!! '<span class="text-danger">Must have capital letter, Number,special char</span>'!!}
                                </div>

                            </div>


                            <div class="form-group">
                                <label class="col-lg-2 control-label">Gender: </label>
                                <div class="col-lg-6">
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="gender" value="male" @if($user->gender === "male") checked="checked" @endif />
                                            Male
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="gender" value="female" @if($user->gender === "female") checked="checked" @endif />
                                            Female
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="gender" value="other" @if($user->gender === "other") checked="checked" @endif />
                                            Other
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div>
                                <h3 class="text-primary">Contact: </h3>
                            </div>

                            <div class="form-group {{ $errors->first('address', 'has-error') }}">
                                <label class="col-lg-2 control-label">
                                    Address:
                                </label>
                                <div class="col-lg-6">
                                            <textarea rows="5" cols="30" class="form-control" id="add1"
                                                      name="address">{!! old('address',$user->address) !!}</textarea>
                                </div>
                                <span class="help-block">{{ $errors->first('address', ':message') }}</span>
                            </div>

                            <div class="form-group {{ $errors->first('country', 'has-error') }}">
                                <label class="control-label  col-md-2">Select Country: </label>
                                <div class="col-md-6 col-sm-6">
                                    {!! Form::select('country', $countries, $user->country,['class' => 'form-control select2', 'id' => 'countries']) !!}
                                    <span class="help-block">{{ $errors->first('country', ':message') }}</span>
                                </div>
                            </div>

                            <div class="form-group {{ $errors->first('state', 'has-error') }}">
                                <label class="col-lg-2 control-label" for="state">State:</label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-fw fa-dot-circle-o text-primary"></i>
                                                        </span>
                                        <input type="text" placeholder=" " id="state" class="form-control" name="state"
                                               value="{!! old('state',$user->state) !!}"/>
                                    </div>
                                </div>
                                <span class="help-block">{{ $errors->first('state', ':message') }}</span>
                            </div>

                            <div class="form-group {{ $errors->first('city', 'has-error') }}">
                                <label class="col-lg-2 control-label" for="city">City:</label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-fw fa-dot-circle-o text-primary"></i>
                                                        </span>
                                        <input type="text" placeholder=" " id="city" class="form-control" name="city"
                                               value="{!! old('city',$user->city) !!}"/>
                                    </div>
                                </div>
                                <span class="help-block">{{ $errors->first('city', ':message') }}</span>
                            </div>

                            <div class="form-group {{ $errors->first('postal', 'has-error') }}">
                                <label class="col-lg-2 control-label" for="postal">Postal:</label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-fw fa-dot-circle-o text-primary"></i>
                                                        </span>
                                        <input type="text" placeholder=" " id="postal" class="form-control"
                                               name="postal" value="{!! old('postal',$user->postal) !!}"/>
                                    </div>
                                    <span class="help-block">{{ $errors->first('postal', ':message') }}</span>
                                </div>
                            </div>

                            <div class="form-group {{ $errors->first('dob', 'has-error') }}">
                                <label class="col-lg-2 control-label">
                                    DOB:
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="fa fa-fw fa-calendar text-primary"></i>
                                            </span>
                                        {!!  Form::text('dob', old('dob',$user->dob), array('id' => 'Datein','class' => 'form-control', 'data-date-format'=> 'YYYY-MM-DD'))  !!}
                                    </div>
                                    <span class="text-danger">Minimum Date: 1918-01-01</span>
                                    <span class="help-block">{{ $errors->first('dob', ':message') }}</span>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-4 sendMsg">
                                    <button class="btn btn-default" type="submit">Save</button>
                                </div>
                            </div>

                        </form>{{--{!!  Form::close()  !!}--}}
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
{{-- page level scripts --}}
@section('footer_scripts')

    <script type="text/javascript" src="{{ asset('assets/vendors/moment/js/moment.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/vendors/jasny-bootstrap/js/jasny-bootstrap.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/vendors/iCheck/js/icheck.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/vendors/select2/js/select2.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/js/bootstrap-datetimepicker.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/js/frontend/user_account.js') }}"></script>


    <script>

        $(function () {

            $('#Datein').datetimepicker(
                {
                    maxDate: 'now',
                    minDate: new Date('1918/01/01'),
                }
            );
        });
    </script>


@stop
