<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <link href="<?php echo e(asset('assets/css/eventday/bootstrap.min.css')); ?>" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<?php echo e(asset('assets/css/eventday/style.css')); ?>" />
    <link rel="stylesheet" type="text/css" href="<?php echo e(asset('assets/css/eventday/mycss.css')); ?>" />
    <link rel="stylesheet" type="text/css" href="<?php echo e(asset('assets/css/eventday/font-awesome.css')); ?>" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <title>
    	<?php $__env->startSection('title'); ?>
        | Eventdayplanner
        <?php echo $__env->yieldSection(); ?>
    </title>
    
    <!--page level css-->
    <?php echo $__env->yieldContent('header_styles'); ?>
    <!--end of page level css-->
</head>

<body>
    <!-- Header Start -->
    <header>
      <div class="headerTop">
        <div class="container">
          <div class="row">
            <div class="col-sm-7"><div class="newsHighlight"><span>News!</span> <?php echo e(@$frontarray['onenews']->title); ?></div></div>
            <div class="col-sm-5"><div class="topLogin"><a href="<?php echo route('create-event'); ?>" > Create an Event</a> | <a href="<?php echo e(url('ads')); ?>">List Your Business</a></div></div>

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
                                  <li><a href="<?php echo route('create-event'); ?>">I Want to Create Event</a></li>
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
                  <a class="navbar-brand" href="<?php echo e(url('/')); ?>"><img src="<?php echo e(asset('assets/images/eventday/eventdayPlanner.png')); ?>" class="img-responsive"></a><span class="slogan">Help to find everything you need about your event</span>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav navbar-right">
                        <?php if(Sentinel::guest()): ?>
                          <li><a href="#" data-toggle="modal" data-target="#ModalSignupMenuForm">Sign Up</a></li>
                          <li><a href="#" data-toggle="modal" data-target="#ModalLoginForm">Login </a></li>
                       <?php else: ?>
                            <li <?php echo e((Request::is('my-account') ? 'class=active' : '')); ?>><a href="<?php echo e(URL::to('my-account')); ?>">My Account</a>
                            </li>
                            <li><a href="<?php echo e(URL::to('logout')); ?>">Logout</a>
                            </li>
                        <?php endif; ?>
                       
                        <?php foreach($frontarray['mainmenu'] as $menu): ?>
                        <li><a href="<?php echo e(route('page',$menu->slug)); ?>"><?php echo e($menu->name); ?></a></li>

                        <?php endforeach; ?>
                        <li><div class="dropdown">
                              <a onclick="myFunction()" class="dropbtn">Currency</a>
                              <div id="myDropdown" class="dropdown-content">
                                <a <?php echo e((session('currency')=='USD' || session('currency')=='')?'class="selected"':""); ?> href="<?php echo e(URL::to('currency','USD')); ?>">USD</a>
                                <a <?php echo e((session('currency')=='EUR')?'class="selected"':""); ?> href="<?php echo e(URL::to('currency','EUR')); ?>">EUR</a>
                                <a <?php echo e((session('currency')=='GBP')?'class="selected"':""); ?> href="<?php echo e(URL::to('currency','GBP')); ?>">GBP</a>
                              </div>
                            </div></li>
                          
                         
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
            </nav>
          </div>
        </div>
      </div>
    </header>
    <!-- //Header End -->
    <?php if($errors->any()): ?>
<div class="alert alert-danger alert-dismissable ">
  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
  <strong>Error:</strong> Please check the form below for errors
</div>
<?php endif; ?>

<?php if($message = Session::get('success')): ?>
<div class="alert alert-success alert-dismissable">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong>Success:</strong> <?php echo e($message); ?>

</div>
<?php endif; ?>

<?php if($message = Session::get('error')): ?>
<div class="alert alert-danger alert-dismissable">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong>Error:</strong> <?php echo e($message); ?>

</div>
<?php endif; ?>

<?php if($message = Session::get('warning')): ?>
<div class="alert alert-warning alert-dismissable">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong>Warning:</strong> <?php echo e($message); ?>

</div>
<?php endif; ?>

<?php if($message = Session::get('info')): ?>
<div class="alert alert-info alert-dismissable">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong>Info:</strong> <?php echo e($message); ?>

</div>
<?php endif; ?>
    
    <!-- slider / breadcrumbs section -->
    <?php echo $__env->yieldContent('top'); ?>

    <!-- Content -->
    <?php echo $__env->yieldContent('content'); ?>

    <!-- Footer Section Start -->
    <footer>
  <div class="container">
    <div class="row">
      <div class="col-sm-3">
      <h3>Our Expert Services</h3>
      <ul>
          <?php foreach($frontarray['OurExpertServices'] as $menu): ?>
            <li><a href="<?php echo e(route('page',$menu->slug)); ?>"><?php echo e($menu->name); ?></a></li>
          <?php endforeach; ?>
        <!-- <li><a href="#">Birthdays Party</a></li>
        <li><a href="#">Wedding Arrangement</a></li>
        <li><a href="#">Corporate Events</a></li>
        <li><a href="#">Bachelor Parties</a></li>
        <li><a href="#">Proposal Arrange</a></li>
        <li><a href="#">Social Meetings</a></li> -->
      </ul>
      </div>
      <div class="col-sm-3">
      <h3>Quick Links</h3>
      <ul>

        <?php foreach($frontarray['quicklinks'] as $link): ?>
        <li><a href="<?php echo e(route('page',$link->slug)); ?>"><?php echo e($link->name); ?></a></li>
        <?php endforeach; ?>
       
      </ul>
      </div>
      <div class="col-sm-3">
      <div class="newsLetter">
      <?php echo Form::open(['url' => route('contact'),'id'=>'frm']); ?>

        <h3>News Letter</h3>
        <div class="input-group">
            <input name="contact-email" type="text" class="form-control" placeholder="Enter Your Email">
            <span class="input-group-btn">
              <button class="btn btn-default" type="submit">Submit</button>
            </span>
          </div><!-- /input-group -->
        <?php echo Form::close(); ?>

        </div>
      <div class="card">
        <h3>We Accept</h3>
        <img src="<?php echo e(asset('assets/images/eventday/paypal.png')); ?>" alt=""><img src="<?php echo e(asset('assets/images/eventday/visa.png')); ?>" alt=""><img src="<?php echo e(asset('assets/images/eventday/mastarcard.png')); ?>" alt=""><img src="<?php echo e(asset('assets/images/eventday/americanexpress.png')); ?>" alt="">
        </div>
      </div>
      <div class="col-sm-3">
      <h3>Contact us</h3>
      <ul>
        <li>Head office</li>
        <li>consectetur adipiscing elit UK.</li>
        <li>Phone: +(000) 000 0000</li>
        <li>Customer Service: +(000) 000 0000</li>
        <li>Email: <a href="mailto:info@eventdayplanner.com">info@eventdayplanner.com</a></li>
      </ul>
      </div>
    </div>
  </div>
  <div class="footerBottom">
      <div class="container">
        <div class="row">
          <ul>
            <li>&copy; <?php echo e(date('Y')); ?> <a href="#"> Eventdayplanner</a>. All Rights Reserved. Developed By shahi010ster@gmail.com</li>
            <li><a href="#">Sitemap</a></li>
            <li><a href="#">Terms & Conditions</a></li>
            <li><a href="#">Privacy Policy</a></li>
          </ul>
        </div>
      </div>
  </div>
</footer>

 <!-- Modal HTML Markup -->
<div id="ModalLoginForm" class="modal fade">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">x</button>
            <h3>Login</h3>
          </div>
            <div class="modal-body">
                <form role="form" method="POST" action="<?php echo e(route('login')); ?>">
                    <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
                    <div class="form-group <?php echo e($errors->first('email', 'has-error')); ?>">
                        <label class="sr-only">Email</label>
                        <input type="email" class="form-control" name="email" placeholder="Email"
                               value="<?php echo old('email'); ?>">
                    </div>
                    <span class="help-block"><?php echo e($errors->first('email', ':message')); ?></span>
                    <div class="form-group <?php echo e($errors->first('password', 'has-error')); ?>">
                        <label class="sr-only">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Password">
                    </div>
                    <span class="help-block"><?php echo e($errors->first('password', ':message')); ?></span>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox">  Remember Password
                        </label>

                    </div>
                    <input type="submit" class="btn btn-block btn-default" value="Login">
                   
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
        <div class="modal-content">
            
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">x</button>
            <h3>Signup</h3>
          </div>
            <div class="modal-body">
            <?php echo $__env->make('register_menu', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
            <div class="social">
            <ul>
                <li><a href="<?php echo e(route('auth.getSocialAuth','google')); ?>">Register with Google</a></li>
                <li><a href="<?php echo e(route('auth.getSocialAuth','facebook')); ?>">Register with Facebook</a></li>
                <li><a href="<?php echo e(route('auth.getSocialAuth','twitter')); ?>">Register with Twitter</a></li>
                <li><a href="<?php echo e(route('auth.getSocialAuth','linkedin')); ?>">Register with Linkedin</a></li>
            </ul>
        </div>
            <form action="<?php echo e(route('register')); ?>" method="POST">
                <!-- CSRF Token -->
                <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>" />

                

                <div class="form-group <?php echo e($errors->first('first_name', 'has-error')); ?>">
                    <label class="sr-only"> First Name</label>
                    <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"
                           value="<?php echo old('first_name'); ?>" required>
                    <?php echo $errors->first('first_name', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('last_name', 'has-error')); ?>">
                    <label class="sr-only"> Last Name</label>
                    <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name"
                           value="<?php echo old('last_name'); ?>" required>
                    <?php echo $errors->first('last_name', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('email', 'has-error')); ?>">
                    <label class="sr-only"> Email</label>
                    <input type="email" class="form-control" id="Email" name="email" placeholder="Email"
                           value="<?php echo old('Email'); ?>" required>
                    <?php echo $errors->first('email', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('password', 'has-error')); ?>">
                    <label class="sr-only"> Password</label>
                    <input type="password" class="form-control" id="Password1" name="password" placeholder="Password">
                    <?php echo $errors->first('password', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('password_confirm', 'has-error')); ?>">
                    <label class="sr-only"> Confirm Password</label>
                    <input type="password" class="form-control" id="Password2" name="password_confirm"
                           placeholder="Confirm Password">
                    <?php echo $errors->first('password_confirm', '<span class="help-block">:message</span>'); ?>

                </div>

                <div class="form-group">
                    <?php echo captcha_img('captcha'); ?> <br/>
                     <input placeholder="Please Verify" type="text" name="captcha" class="form-control">
                </div>
                <!-- <div class="form-group <?php echo e($errors->first('gender', 'has-error')); ?>">
                    <label class="sr-only">Gender</label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio1" value="male"> Male
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio2" value="female"> Female
                    </label>
                    <?php echo $errors->first('gender', '<span class="help-block">:message</span>'); ?>

                </div> -->
                <div class="checkbox">
                    <label>
                        <input type="checkbox" checked name="subscribed" >  I accept <a href="#"> Terms and Conditions</a>
                    </label>
                </div>
                <input type="submit" class="btn btn-block btn-default" value="Sign up" name="submit">
                Already have an account? Please <a href="<?php echo e(route('login')); ?>"> Sign In</a>
            </form>
                
            </div>
            <div class="modal-footer">
            
                    Already have an account? Please <a href="#" class="login" data-toggle="modal" data-target="#ModalLoginForm"> Sign In</a>
          </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div id="ModalSignupFreelancerForm" class="modal fade">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">x</button>
            <h3>Freelancer Signup</h3>
          </div>
            <div class="modal-body">
            <div class="social">
            <ul>
                <li><a href="<?php echo e(route('freelancerauth.getSocialAuth','google')); ?>">Register with Google</a></li>
                <li><a href="<?php echo e(route('freelancerauth.getSocialAuth','facebook')); ?>">Register with Facebook</a></li>
                <li><a href="<?php echo e(route('freelancerauth.getSocialAuth','twitter')); ?>">Register with Twitter</a></li>
                <li><a href="<?php echo e(route('freelancerauth.getSocialAuth','linkedin')); ?>">Register with Linkedin</a></li>
            </ul>
        </div>
            <form action="<?php echo e(route('register-freelancer')); ?>" method="POST">
                <!-- CSRF Token -->
                <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>" />

                

                <div class="form-group <?php echo e($errors->first('first_name', 'has-error')); ?>">
                    <label class="sr-only"> First Name</label>
                    <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"
                           value="<?php echo old('first_name'); ?>" required>
                    <?php echo $errors->first('first_name', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('last_name', 'has-error')); ?>">
                    <label class="sr-only"> Last Name</label>
                    <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name"
                           value="<?php echo old('last_name'); ?>" required>
                    <?php echo $errors->first('last_name', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('email', 'has-error')); ?>">
                    <label class="sr-only"> Email</label>
                    <input type="email" class="form-control" id="Email" name="email" placeholder="Email"
                           value="<?php echo old('Email'); ?>" required>
                    <?php echo $errors->first('email', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('password', 'has-error')); ?>">
                    <label class="sr-only"> Password</label>
                    <input type="password" class="form-control" id="Password1" name="password" placeholder="Password">
                    <?php echo $errors->first('password', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('password_confirm', 'has-error')); ?>">
                    <label class="sr-only"> Confirm Password</label>
                    <input type="password" class="form-control" id="Password2" name="password_confirm"
                           placeholder="Confirm Password">
                    <?php echo $errors->first('password_confirm', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('address', 'has-error')); ?>">
                    <label class="sr-only">Address</label>
                    <input placeholder="Address" type="text" class="form-control" id="add1" name="address" value="<?php echo old('address'); ?>"/> 
                    <?php echo $errors->first('address', '<span class="help-block">:message</span>'); ?>                           
                </div>
                 <div class="form-group <?php echo e($errors->first('country', 'has-error')); ?>">
                    <label class="sr-only">Select Country: </label>
                   
                        <?php echo Form::select('country', $countries, old('country'),['class' => 'form-control select2', 'id' => 'countries']); ?>

                       <?php echo e($errors->first('country', ':message')); ?>

                </div>

                <div class="form-group <?php echo e($errors->first('state', 'has-error')); ?>">
                    <label class="sr-only" for="state">State:</label>
                    
                            <input type="text" placeholder="State" id="state" class="form-control" name="state"
                                   value="<?php echo old('state'); ?>"/>
                       
                    <span class="help-block"><?php echo e($errors->first('state', ':message')); ?></span>
                </div>

                <div class="form-group <?php echo e($errors->first('city', 'has-error')); ?>">
                    <label class="sr-only" for="city">City:</label>
                    
                            <input type="text" placeholder="City" id="city" class="form-control" name="city"
                                   value="<?php echo old('city'); ?>"/>
                       
                    <span class="help-block"><?php echo e($errors->first('city', ':message')); ?></span>
                </div>

                <div class="form-group <?php echo e($errors->first('postal', 'has-error')); ?>">
                    <label class="sr-only" for="postal">Postal/Zip:</label>
                    
                            <input type="text" placeholder="Postal/Zip" id="postal" class="form-control"
                                   name="postal" value="<?php echo old('postal'); ?>"/>
                        
                        <span class="help-block"><?php echo e($errors->first('postal', ':message')); ?></span>
                   
                </div>

                <div class="form-group <?php echo e($errors->first('duration', 'has-error')); ?>">
                    <label class="sr-only" for="duration">Duration:</label>
                    
                            <input type="text" placeholder="Duration" id="duration" class="form-control"
                                   name="duration" value="<?php echo old('duration'); ?>"/>
                        
                        <span class="help-block"><?php echo e($errors->first('duration', ':message')); ?></span>
                   
                </div>

                <div class="form-group <?php echo e($errors->first('office_number', 'has-error')); ?>">
                    <label class="sr-only" for="office_number">Landline:</label>
                    <input type="text" placeholder="Landline" id="office_number" class="form-control"
                                   name="office_number" value="<?php echo old('office_number'); ?>"/>
                        
                        <span class="help-block"><?php echo e($errors->first('office_number', ':message')); ?></span>
                    
                </div>

                <div class="form-group <?php echo e($errors->first('mobile_number', 'has-error')); ?>">
                    <label class="sr-only" for="postal">Mobile Number:</label>
                    
                    <input type="text" placeholder="Mobile Number" id="mobile_number" class="form-control"
                                   name="mobile_number" value="<?php echo old('mobile_number'); ?>"/>
                        
                        <span class="help-block"><?php echo e($errors->first('mobile_number', ':message')); ?></span>
                    
                </div>

                <div class="form-group <?php echo e($errors->first('bio', 'has-error')); ?>">
                    <label class="sr-only" for="bio">Short Description:</label>
                    
                            <textarea rows="5" cols="30"  placeholder="Short Description" id="bio" class="form-control"
                                   name="bio" ><?php echo old('bio'); ?></textarea>
                       
                        <span class="help-block"><?php echo e($errors->first('bio', ':message')); ?></span>
                   
                </div>

                <div class="form-group">
                    <?php echo captcha_img('captcha'); ?> <br/>
                     <input placeholder="Please Verify" type="text" name="captcha" class="form-control">
                </div>
                <!-- <div class="form-group <?php echo e($errors->first('gender', 'has-error')); ?>">
                    <label class="sr-only">Gender</label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio1" value="male"> Male
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio2" value="female"> Female
                    </label>
                    <?php echo $errors->first('gender', '<span class="help-block">:message</span>'); ?>

                </div> -->
                <div class="checkbox">
                    <label>
                        <input type="checkbox" checked name="subscribed" >  I accept <a href="#"> Terms and Conditions</a>
                    </label>
                </div>
                <input type="submit" class="btn btn-block btn-default" value="Sign up" name="submit">
                Already have an account? Please <a href="<?php echo e(route('login')); ?>"> Sign In</a>
            </form>
                
            </div>
            <div class="modal-footer">
            
                    Already have an account? Please <a href="#" class="login" data-toggle="modal" data-target="#ModalLoginForm"> Sign In</a>
          </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div id="ModalSignupBusinessForm" class="modal fade">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">x</button>
            <h3>Business Signup</h3>
          </div>
            <div class="social">
            <ul>
                <li><a href="<?php echo e(route('businessauth.getSocialAuth','google')); ?>">Register with Google</a></li>
                <li><a href="<?php echo e(route('businessauth.getSocialAuth','facebook')); ?>">Register with Facebook</a></li>
                <li><a href="<?php echo e(route('businessauth.getSocialAuth','twitter')); ?>">Register with Twitter</a></li>
                <li><a href="<?php echo e(route('businessauth.getSocialAuth','linkedin')); ?>">Register with Linkedin</a></li>
            </ul>
            </div>
            <form action="<?php echo e(route('register-business')); ?>" method="POST" class="modal-contentBusinessForm">
                <!-- CSRF Token -->
                <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>" />

                
                <div class="form-group <?php echo e($errors->first('first_name', 'has-error')); ?>">
                    <label class="sr-only"> Company Name</label>
                    <input type="text" class="form-control" id="company_name" name="company_name" placeholder="Company Name"
                           value="<?php echo old('company_name'); ?>" required>
                    <?php echo $errors->first('company_name', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('first_name', 'has-error')); ?>">
                    <label class="sr-only"> First Name</label>
                    <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"
                           value="<?php echo old('first_name'); ?>" required>
                    <?php echo $errors->first('first_name', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('last_name', 'has-error')); ?>">
                    <label class="sr-only"> Last Name</label>
                    <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name"
                           value="<?php echo old('last_name'); ?>" required>
                    <?php echo $errors->first('last_name', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('email', 'has-error')); ?>">
                    <label class="sr-only"> Email</label>
                    <input type="email" class="form-control" id="Email" name="email" placeholder="Email"
                           value="<?php echo old('Email'); ?>" required>
                    <?php echo $errors->first('email', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('password', 'has-error')); ?>">
                    <label class="sr-only"> Password</label>
                    <input type="password" class="form-control" id="Password1" name="password" placeholder="Password">
                    <?php echo $errors->first('password', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('password_confirm', 'has-error')); ?>">
                    <label class="sr-only"> Confirm Password</label>
                    <input type="password" class="form-control" id="Password2" name="password_confirm"
                           placeholder="Confirm Password">
                    <?php echo $errors->first('password_confirm', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('address', 'has-error')); ?>">
                    <label class="sr-only">Office Location</label>
                    <input placeholder="Office Location" type="text" class="form-control" id="add1" name="address" value="<?php echo old('address'); ?>"/> 
                    <?php echo $errors->first('address', '<span class="help-block">:message</span>'); ?>                           
                </div>
                 <div class="form-group <?php echo e($errors->first('country', 'has-error')); ?>">
                    <label class="sr-only">Select Country: </label>
                   
                        <?php echo Form::select('country', $countries, old('country'),['class' => 'form-control select2', 'id' => 'countries']); ?>

                       <?php echo e($errors->first('country', ':message')); ?>

                </div>

                <div class="form-group <?php echo e($errors->first('state', 'has-error')); ?>">
                    <label class="sr-only" for="state">State:</label>
                    
                            <input type="text" placeholder="State" id="state" class="form-control" name="state"
                                   value="<?php echo old('state'); ?>"/>
                       
                    <span class="help-block"><?php echo e($errors->first('state', ':message')); ?></span>
                </div>

                <div class="form-group <?php echo e($errors->first('city', 'has-error')); ?>">
                    <label class="sr-only" for="city">City:</label>
                    
                            <input type="text" placeholder="City" id="city" class="form-control" name="city"
                                   value="<?php echo old('city'); ?>"/>
                       
                    <span class="help-block"><?php echo e($errors->first('city', ':message')); ?></span>
                </div>

                <div class="form-group <?php echo e($errors->first('postal', 'has-error')); ?>">
                    <label class="sr-only" for="postal">Postal/Zip:</label>
                    
                            <input type="text" placeholder="Postal/Zip" id="postal" class="form-control"
                                   name="postal" value="<?php echo old('postal'); ?>"/>
                        
                        <span class="help-block"><?php echo e($errors->first('postal', ':message')); ?></span>
                   
                </div>

                <div class="form-group <?php echo e($errors->first('office_number', 'has-error')); ?>">
                    <label class="sr-only" for="postal">Office Number:</label>
                    <input type="text" placeholder="Office Number" id="office_number" class="form-control"
                                   name="office_number" value="<?php echo old('office_number'); ?>"/>
                        
                        <span class="help-block"><?php echo e($errors->first('office_number', ':message')); ?></span>
                    
                </div>

                <div class="form-group <?php echo e($errors->first('mobile_number', 'has-error')); ?>">
                    <label class="sr-only" for="postal">Mobile Number:</label>
                    
                    <input type="text" placeholder="Mobile Number" id="mobile_number" class="form-control"
                                   name="mobile_number" value="<?php echo old('mobile_number'); ?>"/>
                        
                        <span class="help-block"><?php echo e($errors->first('mobile_number', ':message')); ?></span>
                    
                </div>

                <div class="form-group <?php echo e($errors->first('bio', 'has-error')); ?>">
                    <label class="sr-only" for="bio">Short Description:</label>
                    
                            <textarea rows="5" cols="30"  placeholder="Short Description" id="bio" class="form-control"
                                   name="bio" ><?php echo old('bio'); ?></textarea>
                       
                        <span class="help-block"><?php echo e($errors->first('bio', ':message')); ?></span>
                   
                </div>

                <div class="form-group">
                    <?php echo captcha_img('captcha'); ?> <br/>
                     <input placeholder="Please Verify" type="text" name="captcha" class="form-control">
                </div>
                <!-- <div class="form-group <?php echo e($errors->first('gender', 'has-error')); ?>">
                    <label class="sr-only">Gender</label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio1" value="male"> Male
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio2" value="female"> Female
                    </label>
                    <?php echo $errors->first('gender', '<span class="help-block">:message</span>'); ?>

                </div> -->
                <div class="checkbox">
                    <label>
                        <input type="checkbox" checked name="subscribed" >  I accept <a href="#"> Terms and Conditions</a>
                    </label>
                </div>
                <input type="submit" class="btn btn-block btn-default" value="Sign up" name="submit">
                Already have an account? Please <a href="<?php echo e(route('login')); ?>"> Sign In</a>
            </form>
                
            </div>
            <div class="modal-footer">
            
                    Already have an account? Please <a href="#" class="login" data-toggle="modal" data-target="#ModalLoginForm"> Sign In</a>
          </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div id="ModalSignupEventOrganizerForm" class="modal fade">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">x</button>
            <h3>Event Organizer Signup</h3>
          </div>
            <div class="social">
            <ul>
                <li><a href="<?php echo e(route('organizerauth.getSocialAuth','google')); ?>">Register with Google</a></li>
                <li><a href="<?php echo e(route('organizerauth.getSocialAuth','facebook')); ?>">Register with Facebook</a></li>
                <li><a href="<?php echo e(route('organizerauth.getSocialAuth','twitter')); ?>">Register with Twitter</a></li>
                <li><a href="<?php echo e(route('organizerauth.getSocialAuth','linkedin')); ?>">Register with Linkedin</a></li>
            </ul>
        </div>
            <form action="<?php echo e(route('register-event-organizer')); ?>" method="POST">
                <!-- CSRF Token -->
                <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>" />

                
                
                <div class="form-group <?php echo e($errors->first('first_name', 'has-error')); ?>">
                    <label class="sr-only"> First Name</label>
                    <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"
                           value="<?php echo old('first_name'); ?>" required>
                    <?php echo $errors->first('first_name', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('last_name', 'has-error')); ?>">
                    <label class="sr-only"> Last Name</label>
                    <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name"
                           value="<?php echo old('last_name'); ?>" required>
                    <?php echo $errors->first('last_name', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('email', 'has-error')); ?>">
                    <label class="sr-only"> Email</label>
                    <input type="email" class="form-control" id="Email" name="email" placeholder="Email"
                           value="<?php echo old('Email'); ?>" required>
                    <?php echo $errors->first('email', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('password', 'has-error')); ?>">
                    <label class="sr-only"> Password</label>
                    <input type="password" class="form-control" id="Password1" name="password" placeholder="Password">
                    <?php echo $errors->first('password', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('password_confirm', 'has-error')); ?>">
                    <label class="sr-only"> Confirm Password</label>
                    <input type="password" class="form-control" id="Password2" name="password_confirm"
                           placeholder="Confirm Password">
                    <?php echo $errors->first('password_confirm', '<span class="help-block">:message</span>'); ?>

                </div>
                <div class="form-group <?php echo e($errors->first('address', 'has-error')); ?>">
                    <label class="sr-only">Address</label>
                    <input placeholder="Address" type="text" class="form-control" id="add1" name="address" value="<?php echo old('address'); ?>"/> 
                    <?php echo $errors->first('address', '<span class="help-block">:message</span>'); ?>                           
                </div>
                 <div class="form-group <?php echo e($errors->first('country', 'has-error')); ?>">
                    <label class="sr-only">Select Country: </label>
                   
                        <?php echo Form::select('country', $countries, old('country'),['class' => 'form-control select2', 'id' => 'countries']); ?>

                       <?php echo e($errors->first('country', ':message')); ?>

                </div>

                <div class="form-group <?php echo e($errors->first('state', 'has-error')); ?>">
                    <label class="sr-only" for="state">State:</label>
                    
                            <input type="text" placeholder="State" id="state" class="form-control" name="state"
                                   value="<?php echo old('state'); ?>"/>
                       
                    <span class="help-block"><?php echo e($errors->first('state', ':message')); ?></span>
                </div>

                <div class="form-group <?php echo e($errors->first('city', 'has-error')); ?>">
                    <label class="sr-only" for="city">City:</label>
                    
                            <input type="text" placeholder="City" id="city" class="form-control" name="city"
                                   value="<?php echo old('city'); ?>"/>
                       
                    <span class="help-block"><?php echo e($errors->first('city', ':message')); ?></span>
                </div>

                <div class="form-group <?php echo e($errors->first('postal', 'has-error')); ?>">
                    <label class="sr-only" for="postal">Postal/Zip:</label>
                    
                            <input type="text" placeholder="Postal/Zip" id="postal" class="form-control"
                                   name="postal" value="<?php echo old('postal'); ?>"/>
                        
                        <span class="help-block"><?php echo e($errors->first('postal', ':message')); ?></span>
                   
                </div>

                <div class="form-group <?php echo e($errors->first('office_number', 'has-error')); ?>">
                    <label class="sr-only" for="postal">Landline Number:</label>
                    <input type="text" placeholder="Landline Number" id="office_number" class="form-control"
                                   name="office_number" value="<?php echo old('office_number'); ?>"/>
                        
                        <span class="help-block"><?php echo e($errors->first('office_number', ':message')); ?></span>
                    
                </div>

                <div class="form-group <?php echo e($errors->first('mobile_number', 'has-error')); ?>">
                    <label class="sr-only" for="postal">Mobile Number:</label>
                    
                    <input type="text" placeholder="Mobile Number" id="mobile_number" class="form-control"
                                   name="mobile_number" value="<?php echo old('mobile_number'); ?>"/>
                        
                        <span class="help-block"><?php echo e($errors->first('mobile_number', ':message')); ?></span>
                    
                </div>

                <div class="form-group <?php echo e($errors->first('bio', 'has-error')); ?>">
                    <label class="sr-only" for="bio">Short Description:</label>
                    
                            <textarea rows="5" cols="30"  placeholder="Short Description" id="bio" class="form-control"
                                   name="bio" ><?php echo old('bio'); ?></textarea>
                       
                        <span class="help-block"><?php echo e($errors->first('bio', ':message')); ?></span>
                   
                </div>

                <div class="form-group">
                    <?php echo captcha_img('captcha'); ?> <br/>
                     <input placeholder="Please Verify" type="text" name="captcha" class="form-control">
                </div>
                <!-- <div class="form-group <?php echo e($errors->first('gender', 'has-error')); ?>">
                    <label class="sr-only">Gender</label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio1" value="male"> Male
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="gender" id="inlineRadio2" value="female"> Female
                    </label>
                    <?php echo $errors->first('gender', '<span class="help-block">:message</span>'); ?>

                </div> -->
                <div class="checkbox">
                    <label>
                        <input type="checkbox" checked name="subscribed" >  I accept <a href="#"> Terms and Conditions</a>
                    </label>
                </div>
                <input type="submit" class="btn btn-block btn-default" value="Sign up" name="submit">
                Already have an account? Please <a href="<?php echo e(route('login')); ?>"> Sign In</a>
            </form>
                
            </div>
            <div class="modal-footer">
            
                    Already have an account? Please <a href="#" class="login" data-toggle="modal" data-target="#ModalLoginForm"> Sign In</a>
          </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<!-- /.modal -->
<!--global js start-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="<?php echo e(asset('assets/js/eventday/bootstrap.min.js')); ?>"></script>
<script>
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
  $('#ModalSignupMenuForm').on('show.bs.modal', function () {
    $('.modal.in').modal('hide');
  });

  $('#ModalLoginForm').on('show.bs.modal', function () {
    $('.modal.in').modal('hide');
  });
  $('#ModalSignupBusinessForm').on('show.bs.modal', function () {
    $('.modal.in').modal('hide');
  });
  $('#ModalSignupFreelancerForm').on('show.bs.modal', function () {
    $('.modal.in').modal('hide');
  });
  $('#ModalSignupEventOrganizerForm').on('show.bs.modal', function () {
    $('.modal.in').modal('hide');
  });

});

</script>  
    <!--global js end-->
    <!-- begin page level js -->
    <?php echo $__env->yieldContent('footer_scripts'); ?>
    <!-- end page level js -->
</body>
</html>
