<link rel="stylesheet" href="{{ asset('assets/vendors/Buttons/css/buttons.css') }}" />
<link rel="stylesheet" href="{{ asset('assets/css/pages/advbuttons.css') }}" />
<div class="col-sm-12 social-buttons">
   <br />
   <a href="{{ route('auth.getSocialAuth','google') }}" class="btn btn-block btn-social btn-xs btn-google-plus">
      <i class="fa fa-google-plus"></i> Sign in with Google
   </a>
   <a href="{{ route('auth.getSocialAuth','facebook') }}" class="btn btn-block btn-social btn-xs btn-facebook">
      <i class="fa fa-facebook"></i> Sign in with Facebook
   </a>
   <a href="{{ route('auth.getSocialAuth','twitter') }}" class="btn btn-block btn-social btn-xs btn-twitter">
      <i class="fa fa-twitter"></i> Sign in with Twitter
   </a>
   <a href="{{ route('auth.getSocialAuth','linkedin') }}" class="btn btn-block btn-social btn-xs btn-linkedin">
      <i class="fa fa-linkedin"></i> Sign in with LinkedIn
   </a>
   <br/>
</div>