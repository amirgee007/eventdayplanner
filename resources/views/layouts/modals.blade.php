

<div id="ModalLoginForm" class="modal fade">
    <div class="modal-dialog" role="document">
        <div class="modal-content col-xs-12" style="overflow: hidden; height: auto; border: 1px solid black;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">x</button>
                <h3>Login</h3>
            </div>
            <div class="modal-body">
{{--            @include('register_social_menu')--}}
                <form role="form" method="POST" action="{{ route('login') }}">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div class="form-group {{ $errors->first('email', 'has-error') }}">
                        <label class="sr-only">Email</label>
                        <input type="email" class="form-control" name="email" placeholder="Email"
                               value="{!! old('email') !!}">
                    </div>
                    <span class="help-block">{{ $errors->first('email', ':message') }}</span>
                    <div class="form-group {{ $errors->first('password', 'has-error') }}">
                        <label class="sr-only">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Password">
                    </div>
                    <span class="help-block">{{ $errors->first('password', ':message') }}</span>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox">  Remember Password
                        </label>
                    </div>

                    <div class="">
                        <label>
                            <a href="{{ route('forgot-password') }}">Forgot Password?</a>
                        </label>
                    </div>

                    <input type="submit" class="btn btn-block btn-default" value="Login">
                    @include('login_social_menu')

                </form>
            </div>
            <div class="modal-footer">
                Don't have an account? <a href="#" class="signup" data-toggle="modal" data-target="#ModalSignupMenuForm"><strong> Sign up</strong></a>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>


<div id="ModalSignupMenuForm" class="modal fade">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="height: auto">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">x</button>
                <h3>SignUp</h3>
            </div>
            <div class="modal-body">
                @include('register_menu')

                <div id="SignupMenuForm" style="display: block">
                    <form action="{{ route('register') }}" method="POST">
                    <!-- CSRF Token -->
                    <input type="hidden" name="_token" value="{{ csrf_token() }}" />

                    <div class="form-group {{ $errors->first('first_name', 'has-error') }}">
                        <label class="sr-only"> First Name</label>
                        <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"
                               value="{!! old('first_name') !!}" required>
                        {!! $errors->first('first_name', '<span class="help-block">:message</span>') !!}
                    </div>
                    <div class="form-group {{ $errors->first('last_name', 'has-error') }}">
                        <label class="sr-only"> Last Name</label>
                        <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name"
                               value="{!! old('last_name') !!}" required>
                        {!! $errors->first('last_name', '<span class="help-block">:message</span>') !!}
                    </div>
                    <div class="form-group {{ $errors->first('email', 'has-error') }}">
                        <label class="sr-only"> Email</label>
                        <input type="email" class="form-control" id="Email" name="email" placeholder="Email"
                               value="{!! old('Email') !!}" required>
                        {!! $errors->first('email', '<span class="help-block">:message</span>') !!}
                    </div>
                    <div class="form-group {{ $errors->first('password', 'has-error') }}">
                        <label class="sr-only"> Password</label>
                        <input type="password" class="form-control" id="Password1" name="password" placeholder="Password">
                        {!! $errors->first('password', '<span class="help-block">:message</span>') !!}
                        {!! '<span class="help-block">Must have capital letter, Number,special char</span>'!!}

                    </div>
                    <div class="form-group {{ $errors->first('password_confirm', 'has-error') }}">
                        <label class="sr-only"> Confirm Password</label>
                        <input type="password" class="form-control" id="Password2" name="password_confirm"
                               placeholder="Confirm Password">
                        {!! $errors->first('password_confirm', '<span class="help-block">:message</span>') !!}
                    </div>

                    <div class="form-group">
                        <div style="">{!! NoCaptcha::display() !!}</div> <br/>
                    </div>

                <!-- <div class="form-group {{ $errors->first('gender', 'has-error') }}">
                    <label class="sr-only">Gender</label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio1" value="male"> Male
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio2" value="female"> Female
                    </label>
                    {!! $errors->first('gender', '<span class="help-block">:message</span>') !!}
                        </div> -->
                    <div class="">
                        <label>
                            <input type="checkbox" checked name="subscribed" >  I accept <a href="#"> Terms and Conditions</a>
                        </label>
                    </div>
                    <input type="submit" class="btn btn-block btn-default" value="Sign up" name="submit">
                        @include('register_social_menu')
                        Already have an account? Please <a href="{{ route('login') }}"> Sign In</a>

                </form>
                </div>

                <div id="SignupFreelancerForm" style="display: none">
                <form action="{{ route('register-freelancer') }}" method="POST">

                    <input type="hidden" name="_token" value="{{ csrf_token() }}" />

                    <div class="form-group {{ $errors->first('first_name', 'has-error') }}">
                        <label class="sr-only"> First Name</label>
                        <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"
                               value="{!! old('first_name') !!}" required>
                        {!! $errors->first('first_name', '<span class="help-block">:message</span>') !!}
                    </div>
                    <div class="form-group {{ $errors->first('last_name', 'has-error') }}">
                        <label class="sr-only"> Last Name</label>
                        <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name"
                               value="{!! old('last_name') !!}" required>
                        {!! $errors->first('last_name', '<span class="help-block">:message</span>') !!}
                    </div>
                    <div class="form-group {{ $errors->first('email', 'has-error') }}">
                        <label class="sr-only"> Email</label>
                        <input type="email" class="form-control" id="Email" name="email" placeholder="Email"
                               value="{!! old('Email') !!}" required>
                        {!! $errors->first('email', '<span class="help-block">:message</span>') !!}
                    </div>
                    <div class="form-group {{ $errors->first('password', 'has-error') }}">
                        <label class="sr-only"> Password</label>
                        <input type="password" class="form-control" id="Password1" name="password" placeholder="Password">
                        {!! $errors->first('password', '<span class="help-block">:message</span>') !!}
                        {!! '<span class="help-block">Must have capital letter, Number,special char</span>'!!}

                    </div>
                    <div class="form-group {{ $errors->first('password_confirm', 'has-error') }}">
                        <label class="sr-only"> Confirm Password</label>
                        <input type="password" class="form-control" id="Password2" name="password_confirm"
                               placeholder="Confirm Password">
                        {!! $errors->first('password_confirm', '<span class="help-block">:message</span>') !!}
                    </div>
                    <div class="form-group {{ $errors->first('address', 'has-error') }}">
                        <label class="sr-only">Address</label>
                        <input placeholder="Address" type="text" class="form-control" id="add1" name="address" value="{!! old('address') !!}"/>
                        {!! $errors->first('address', '<span class="help-block">:message</span>') !!}
                    </div>
                    <div class="form-group {{ $errors->first('country', 'has-error') }}">
                        <label class="sr-only">Select Country: </label>

                        {!! Form::select('country', $countries, old('country'),['class' => 'form-control select2', 'id' => 'countries']) !!}
                        {{ $errors->first('country', ':message') }}
                    </div>

                    <div class="form-group {{ $errors->first('state', 'has-error') }}">
                        <label class="sr-only" for="state">State:</label>

                        <input type="text" placeholder="State" id="state" class="form-control" name="state"
                               value="{!! old('state') !!}"/>

                        <span class="help-block">{{ $errors->first('state', ':message') }}</span>
                    </div>

                    <div class="form-group {{ $errors->first('city', 'has-error') }}">
                        <label class="sr-only" for="city">City:</label>

                        <input type="text" placeholder="City" id="city" class="form-control" name="city"
                               value="{!! old('city') !!}"/>

                        <span class="help-block">{{ $errors->first('city', ':message') }}</span>
                    </div>

                    <div class="form-group {{ $errors->first('postal', 'has-error') }}">
                        <label class="sr-only" for="postal">Postal/Zip:</label>

                        <input type="text" placeholder="Postal/Zip" id="postal" class="form-control"
                               name="postal" value="{!! old('postal') !!}"/>

                        <span class="help-block">{{ $errors->first('postal', ':message') }}</span>

                    </div>

                    <div class="form-group {{ $errors->first('duration', 'has-error') }}">
                        <label class="sr-only" for="duration">Duration:</label>

                        <input type="text" placeholder="Duration" id="duration" class="form-control"
                               name="duration" value="{!! old('duration') !!}"/>

                        <span class="help-block">{{ $errors->first('duration', ':message') }}</span>

                    </div>

                    <div class="form-group {{ $errors->first('office_number', 'has-error') }}">
                        <label class="sr-only" for="office_number">Landline:</label>
                        <input type="number" placeholder="Landline" id="office_number" class="form-control"
                               name="office_number" value="{!! old('office_number') !!}"/>

                        <span class="help-block">{{ $errors->first('office_number', ':message') }}</span>

                    </div>

                    <div class="form-group {{ $errors->first('mobile_number', 'has-error') }}">
                        <label class="sr-only" for="postal">Mobile Number:</label>

                        <input type="number" placeholder="Mobile Number" id="mobile_number" class="form-control"
                               name="mobile_number" value="{!! old('mobile_number') !!}"/>

                        <span class="help-block">{{ $errors->first('mobile_number', ':message') }}</span>

                    </div>

                    <div class="form-group {{ $errors->first('bio', 'has-error') }}">
                        <label class="sr-only" for="bio">Short Description:</label>

                        <textarea rows="5" cols="30"  placeholder="Short Description" id="bio" class="form-control"
                                  name="bio" >{!! old('bio') !!}</textarea>

                        <span class="help-block">{{ $errors->first('bio', ':message') }}</span>

                    </div>

                    <div class="form-group">
                        <div style="">{!! NoCaptcha::display() !!}</div> <br/> </div>
                <!-- <div class="form-group {{ $errors->first('gender', 'has-error') }}">
                    <label class="sr-only">Gender</label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio1" value="male"> Male
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio2" value="female"> Female
                    </label>
                    {!! $errors->first('gender', '<span class="help-block">:message</span>') !!}
                        </div> -->
                    <div class="">
                        <label>
                            <input type="checkbox" checked name="subscribed" >  I accept <a href="#"> Terms and Conditions</a>
                        </label>
                    </div>
                    <input type="submit" class="btn btn-block btn-default" value="Sign up" name="submit">
                    @include('register_social_menu')
                    Already have an account? Please <a href="{{ route('login') }}"> Sign In</a>
                </form>
                </div>

                <div id="SignupBusinessForm" style="display: none">
                <form action="{{ route('register-business') }}" method="POST" class="modal-contentBusinessForm">

                        <input type="hidden" name="_token" value="{{ csrf_token() }}" />


                        <div class="form-group {{ $errors->first('first_name', 'has-error') }}">
                            <label class="sr-only"> Company Name</label>
                            <input type="text" class="form-control" id="company_name" name="company_name" placeholder="Company Name"
                                   value="{!! old('company_name') !!}" required>
                            {!! $errors->first('company_name', '<span class="help-block">:message</span>') !!}
                        </div>
                        <div class="form-group {{ $errors->first('first_name', 'has-error') }}">
                            <label class="sr-only"> First Name</label>
                            <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"
                                   value="{!! old('first_name') !!}" required>
                            {!! $errors->first('first_name', '<span class="help-block">:message</span>') !!}
                        </div>
                        <div class="form-group {{ $errors->first('last_name', 'has-error') }}">
                            <label class="sr-only"> Last Name</label>
                            <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name"
                                   value="{!! old('last_name') !!}" required>
                            {!! $errors->first('last_name', '<span class="help-block">:message</span>') !!}
                        </div>
                        <div class="form-group {{ $errors->first('email', 'has-error') }}">
                            <label class="sr-only"> Email</label>
                            <input type="email" class="form-control" id="Email" name="email" placeholder="Email"
                                   value="{!! old('Email') !!}" required>
                            {!! $errors->first('email', '<span class="help-block">:message</span>') !!}
                        </div>
                        <div class="form-group {{ $errors->first('password', 'has-error') }}">
                            <label class="sr-only"> Password</label>
                            <input type="password" class="form-control" id="Password1" name="password" placeholder="Password">
                            {!! $errors->first('password', '<span class="help-block">:message</span>') !!}
                            {!! '<span class="help-block">Must have capital letter, Number,special char</span>'!!}

                        </div>
                        <div class="form-group {{ $errors->first('password_confirm', 'has-error') }}">
                            <label class="sr-only"> Confirm Password</label>
                            <input type="password" class="form-control" id="Password2" name="password_confirm"
                                   placeholder="Confirm Password">
                            {!! $errors->first('password_confirm', '<span class="help-block">:message</span>') !!}
                        </div>
                        <div class="form-group {{ $errors->first('address', 'has-error') }}">
                            <label class="sr-only">Office Location</label>
                            <input placeholder="Office Location" type="text" class="form-control" id="add1" name="address" value="{!! old('address') !!}"/>
                            {!! $errors->first('address', '<span class="help-block">:message</span>') !!}
                        </div>
                        <div class="form-group {{ $errors->first('country', 'has-error') }}">
                            <label class="sr-only">Select Country: </label>

                            {!! Form::select('country', $countries, old('country'),['class' => 'form-control select2', 'id' => 'countries']) !!}
                            {{ $errors->first('country', ':message') }}
                        </div>

                        <div class="form-group {{ $errors->first('state', 'has-error') }}">
                            <label class="sr-only" for="state">State:</label>

                            <input type="text" placeholder="State" id="state" class="form-control" name="state"
                                   value="{!! old('state') !!}"/>

                            <span class="help-block">{{ $errors->first('state', ':message') }}</span>
                        </div>

                        <div class="form-group {{ $errors->first('city', 'has-error') }}">
                            <label class="sr-only" for="city">City:</label>

                            <input type="text" placeholder="City" id="city" class="form-control" name="city"
                                   value="{!! old('city') !!}"/>

                            <span class="help-block">{{ $errors->first('city', ':message') }}</span>
                        </div>

                        <div class="form-group {{ $errors->first('postal', 'has-error') }}">
                            <label class="sr-only" for="postal">Postal/Zip:</label>

                            <input type="text" placeholder="Postal/Zip" id="postal" class="form-control"
                                   name="postal" value="{!! old('postal') !!}"/>

                            <span class="help-block">{{ $errors->first('postal', ':message') }}</span>

                        </div>

                        <div class="form-group {{ $errors->first('office_number', 'has-error') }}">
                            <label class="sr-only" for="postal">Office Number:</label>
                            <input type="text" placeholder="Office Number" id="office_number" class="form-control"
                                   name="office_number" value="{!! old('office_number') !!}"/>

                            <span class="help-block">{{ $errors->first('office_number', ':message') }}</span>

                        </div>

                        <div class="form-group {{ $errors->first('mobile_number', 'has-error') }}">
                            <label class="sr-only" for="postal">Mobile Number:</label>

                            <input type="text" placeholder="Mobile Number" id="mobile_number" class="form-control"
                                   name="mobile_number" value="{!! old('mobile_number') !!}"/>

                            <span class="help-block">{{ $errors->first('mobile_number', ':message') }}</span>

                        </div>

                        <div class="form-group {{ $errors->first('bio', 'has-error') }}">
                            <label class="sr-only" for="bio">Short Description:</label>

                            <textarea rows="5" cols="30"  placeholder="Short Description" id="bio" class="form-control"
                                      name="bio" >{!! old('bio') !!}</textarea>

                            <span class="help-block">{{ $errors->first('bio', ':message') }}</span>

                        </div>

                        <div class="form-group">
                            <div style="">{!! NoCaptcha::display() !!}</div> <br/>
                        </div>
                    <!-- <div class="form-group {{ $errors->first('gender', 'has-error') }}">
                    <label class="sr-only">Gender</label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio1" value="male"> Male
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio2" value="female"> Female
                    </label>
                    {!! $errors->first('gender', '<span class="help-block">:message</span>') !!}
                            </div> -->
                        <div class="">
                            <label>
                                <input type="checkbox" checked name="subscribed" >  I accept <a href="#"> Terms and Conditions</a>
                            </label>
                        </div>
                        <input type="submit" class="btn btn-block btn-default" value="Sign up" name="submit">
                    @include('register_social_menu')
                    Already have an account? Please <a href="{{ route('login') }}"> Sign In</a>
                    </form>
                </div>

                <div id="SignupEventOrganizerForm" style="display: none">
                <form action="{{ route('register-event-organizer') }}" method="POST">
                        <!-- CSRF Token -->
                        <input type="hidden" name="_token" value="{{ csrf_token() }}" />

                        <div class="form-group {{ $errors->first('first_name', 'has-error') }}">
                            <label class="sr-only"> First Name</label>
                            <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"
                                   value="{!! old('first_name') !!}" required>
                            {!! $errors->first('first_name', '<span class="help-block">:message</span>') !!}
                        </div>
                        <div class="form-group {{ $errors->first('last_name', 'has-error') }}">
                            <label class="sr-only"> Last Name</label>
                            <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name"
                                   value="{!! old('last_name') !!}" required>
                            {!! $errors->first('last_name', '<span class="help-block">:message</span>') !!}
                        </div>
                        <div class="form-group {{ $errors->first('email', 'has-error') }}">
                            <label class="sr-only"> Email</label>
                            <input type="email" class="form-control" id="Email" name="email" placeholder="Email"
                                   value="{!! old('Email') !!}" required>
                            {!! $errors->first('email', '<span class="help-block">:message</span>') !!}
                        </div>
                        <div class="form-group {{ $errors->first('password', 'has-error') }}">
                            <label class="sr-only"> Password</label>
                            <input type="password" class="form-control" id="Password1" name="password" placeholder="Password">
                            {!! $errors->first('password', '<span class="help-block">:message</span>') !!}
                            {!! '<span class="help-block">Must have capital letter, Number,special char</span>'!!}

                        </div>
                        <div class="form-group {{ $errors->first('password_confirm', 'has-error') }}">
                            <label class="sr-only"> Confirm Password</label>
                            <input type="password" class="form-control" id="Password2" name="password_confirm"
                                   placeholder="Confirm Password">
                            {!! $errors->first('password_confirm', '<span class="help-block">:message</span>') !!}
                        </div>
                        <div class="form-group {{ $errors->first('address', 'has-error') }}">
                            <label class="sr-only">Address</label>
                            <input placeholder="Address" type="text" class="form-control" id="add1" name="address" value="{!! old('address') !!}"/>
                            {!! $errors->first('address', '<span class="help-block">:message</span>') !!}
                        </div>
                        <div class="form-group {{ $errors->first('country', 'has-error') }}">
                            <label class="sr-only">Select Country: </label>

                            {!! Form::select('country', $countries, old('country'),['class' => 'form-control select2', 'id' => 'countries']) !!}
                            {{ $errors->first('country', ':message') }}
                        </div>

                        <div class="form-group {{ $errors->first('state', 'has-error') }}">
                            <label class="sr-only" for="state">State:</label>

                            <input type="text" placeholder="State" id="state" class="form-control" name="state"
                                   value="{!! old('state') !!}"/>

                            <span class="help-block">{{ $errors->first('state', ':message') }}</span>
                        </div>

                        <div class="form-group {{ $errors->first('city', 'has-error') }}">
                            <label class="sr-only" for="city">City:</label>

                            <input type="text" placeholder="City" id="city" class="form-control" name="city"
                                   value="{!! old('city') !!}"/>

                            <span class="help-block">{{ $errors->first('city', ':message') }}</span>
                        </div>

                        <div class="form-group {{ $errors->first('postal', 'has-error') }}">
                            <label class="sr-only" for="postal">Postal/Zip:</label>

                            <input type="text" placeholder="Postal/Zip" id="postal" class="form-control"
                                   name="postal" value="{!! old('postal') !!}"/>

                            <span class="help-block">{{ $errors->first('postal', ':message') }}</span>

                        </div>

                        <div class="form-group {{ $errors->first('office_number', 'has-error') }}">
                            <label class="sr-only" for="postal">Landline Number:</label>
                            <input type="text" placeholder="Landline Number" id="office_number" class="form-control"
                                   name="office_number" value="{!! old('office_number') !!}"/>

                            <span class="help-block">{{ $errors->first('office_number', ':message') }}</span>

                        </div>

                        <div class="form-group {{ $errors->first('mobile_number', 'has-error') }}">
                            <label class="sr-only" for="postal">Mobile Number:</label>

                            <input type="text" placeholder="Mobile Number" id="mobile_number" class="form-control"
                                   name="mobile_number" value="{!! old('mobile_number') !!}"/>

                            <span class="help-block">{{ $errors->first('mobile_number', ':message') }}</span>

                        </div>

                        <div class="form-group {{ $errors->first('bio', 'has-error') }}">
                            <label class="sr-only" for="bio">Short Description:</label>

                            <textarea rows="5" cols="30"  placeholder="Short Description" id="bio" class="form-control"
                                      name="bio" >{!! old('bio') !!}</textarea>

                            <span class="help-block">{{ $errors->first('bio', ':message') }}</span>

                        </div>

                        <div class="form-group">
                            <div style="">{!! NoCaptcha::display() !!}</div> <br/> </div>

                    <!-- <div class="form-group {{ $errors->first('gender', 'has-error') }}">
                    <label class="sr-only">Gender</label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio1" value="male"> Male
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio2" value="female"> Female
                    </label>
                    {!! $errors->first('gender', '<span class="help-block">:message</span>') !!}
                            </div> -->
                        <div class="">
                            <label>
                                <input type="checkbox" checked name="subscribed" >  I accept <a href="#"> Terms and Conditions</a>
                            </label>
                        </div>
                        <input type="submit" class="btn btn-block btn-default" value="Sign up" name="submit">
                    @include('register_social_menu')
                    Already have an account? Please <a href="{{ route('login') }}"> Sign In</a>
                    </form>
                </div>

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

{!! NoCaptcha::renderJs() !!}

