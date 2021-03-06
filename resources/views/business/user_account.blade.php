@extends('layouts.eventday')

{{-- Page title --}}
@section('title')
    Business Profile
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
        <h1>Business Profile Settings</h1>
           
    </div>
  </div>
</section>
    <div class="container textsmall">
        
        <div class="row">
            <div class="row">
                <div class="col-md-12">
                    <!--main content-->
                    <div class="position-center">
                        <!-- Notifications -->
                        @include('notifications')
                        <div>
                        @include('business.usermenu')
                        </div>

                        <div>
                            <h3 class="text-primary">Business Information</h3>
                        </div>
                        <form role="form" id="tryitForm" class="form-horizontal" enctype="multipart/form-data"
                              action="{{ route('my-account') }}" method="POST">
                            <input type="hidden" name="_method" value="PUT">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <div class="form-group">
                                <label class="col-md-2 control-label">Logo:</label>
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
                                                                <input type="file" name="pic" id="pic" />
                                                            </span>
                                            <span class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group {{ $errors->first('company_name', 'has-error') }}">
                                <label class="col-lg-2 control-label">
                                    Company Name:
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                        <i class="fa fa-fw fa-building text-primary"></i>
                                    </span>
                                        <input type="text" placeholder=" " name="company_name" id="c-name"
                                               class="form-control" value="{!! old('company_name',$user->company_name) !!}">
                                    </div>
                                    <span class="help-block">{{ $errors->first('fcompany_name', ':message') }}</span>
                                </div>

                            </div>

                            <div class="form-group {{ $errors->first('address', 'has-error') }}">
                                <label class="col-lg-2 control-label">
                                    Office Location:
                                </label>
                                <div class="col-lg-6">
                                <div class="input-group">

                                            <span class="input-group-addon">
                                                            <i class="fa fa-fw fa-map-marker text-primary"></i>
                                                        </span>

                                            <input type="text" class="form-control" id="add1"
                                                      name="address" value="{!! old('address',$user->address) !!}"/></div>                                
                                                      </div>
                                <span class="help-block">{{ $errors->first('address', ':message') }}</span>
                            </div>

                            <div class="form-group {{ $errors->first('country', 'has-error') }}">
                                <label class="control-label  col-md-2">Select Country: </label>
                                <div class="col-md-6">
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
                                <label class="col-lg-2 control-label" for="postal">Postal/Zip:</label>
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

                            <div class="form-group {{ $errors->first('office_number', 'has-error') }}">
                                <label class="col-lg-2 control-label" for="postal">Office Number:</label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-fw fa-phone text-primary"></i>
                                                        </span>
                                        <input type="text" placeholder=" " id="office_number" class="form-control"
                                               name="office_number" value="{!! old('office_number',$user->office_number) !!}"/>
                                    </div>
                                    <span class="help-block">{{ $errors->first('office_number', ':message') }}</span>
                                </div>
                            </div>

                            <div class="form-group {{ $errors->first('mobile_number', 'has-error') }}">
                                <label class="col-lg-2 control-label" for="postal">Mobile Number:</label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-fw fa-mobile text-primary"></i>
                                                        </span>
                                        <input type="text" placeholder=" " id="mobile_number" class="form-control"
                                               name="mobile_number" value="{!! old('mobile_number',$user->mobile_number) !!}"/>
                                    </div>
                                    <span class="help-block">{{ $errors->first('mobile_number', ':message') }}</span>
                                </div>
                            </div>

                            <div class="form-group {{ $errors->first('bio', 'has-error') }}">
                                <label class="col-lg-2 control-label" for="bio">Short Description:</label>
                                <div class="col-lg-6">
                                    
                                                        
                                        <textarea rows="5" cols="30"   id="bio" class="form-control"
                                               name="bio" onKeyDown="limitText(this.form.bio,this.form.countdown,110);" onKeyUp="limitText(this.form.bio,this.form.countdown,110);" maxlength="110" >{!! old('bio',$user->bio) !!}</textarea><br/>
                                               <font size="1">(Maximum characters: 110)<br>
You have <input readonly type="text" name="countdown" size="3" value="110"> characters left.</font>

                                   
                                    <span class="help-block">{{ $errors->first('bio', ':message') }}</span>
                                </div>
                            </div>

                             <div>
                                <h3 class="text-primary">Login Information</h3>
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
                                <p class="text-warning col-md-offset-2"><strong>If you don't want to change password... please leave them empty</strong></p>
                                <label class="col-lg-2 control-label">
                                    Password:
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="fa fa-fw fa-key text-primary"></i>
                                            </span>
                                        <input type="password" name="password" placeholder=" " id="pwd" class="form-control"></div>
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
                                        <input type="password" name="password_confirm" placeholder=" " id="cpwd" class="form-control"></div>
                                    <span class="help-block">{{ $errors->first('password_confirm', ':message') }}</span>
                                </div>
                            </div>

                            

                            <div>
                                <h3 class="text-primary">Contact: </h3>
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


                            <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-4">
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
    <script language="javascript" type="text/javascript">
function limitText(limitField, limitCount, limitNum) {
    if (limitField.value.length > limitNum) {
        limitField.value = limitField.value.substring(0, limitNum);
    } else {
        limitCount.value = limitNum - limitField.value.length;
    }
}
</script>
@stop
