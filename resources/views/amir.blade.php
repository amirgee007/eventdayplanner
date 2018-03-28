<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>EventDayPlanner.com</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/style.css') }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/font-awesome.css') }}"/>
    <link href="{{ captcha_layout_stylesheet_url() }}" type="text/css" rel="stylesheet">
</head>
<body>
<header class="header">
    <div class="container">
        <div class="row">
            <div class="logo">
                <img src="{{ asset('assets/images/logo-eventday.png') }}" class="img-responsive">
            </div>

            <label>Retype the characters from the picture</label>
            {!! captcha_image_html('ContactCaptcha') !!}
            <input type="text" id="CaptchaCode" name="CaptchaCode">
        </div>
            <div class="formHolder">
                <div class="input-group">
                    <input type="text" class="form-control input-lg" name="contact-name" placeholder="Your Name">
                </div>
                <div class="input-group">
                    <input type="text" class="form-control input-lg" name="contact-email" placeholder="Email Address">
                </div>
            </div>
        </div>
    </div>

</header>
<section class="joinUs">
    <div class="container"><br><br>
        <input type="submit" class="btn btn-default" value="Join Us Today"/>
        <div class="row">
            <div class="social">
                <ul>
                    <a href="https://www.instagram.com/eventdayplanner/" target="_blank">
                        <li><i class="fa fa-instagram" aria-hidden="true"></i></li>
                    </a>
                    <a href="https://twitter.com/eventdayplanner" target="_blank">
                        <li><i class="fa fa-twitter" aria-hidden="true"></i></li>
                    </a>
                    <a href="https://www.facebook.com/eventdayplanner/" target="_blank">
                        <li><i class="fa fa-facebook" aria-hidden="true"></i></li>
                    </a>
                    <a href="https://uk.pinterest.com/eventdayplanner/" target="_blank">
                        <li><i class="fa fa-pinterest" aria-hidden="true"></i></li>
                    </a>
                    <a href="www.linkedin.com/in/eventdayplanner" target="_blank">
                        <li><i class="fa fa-linkedin" aria-hidden="true"></i></li>
                    </a>
                </ul>
            </div>
        </div>
    </div>
    <footer class="footer">
        2016 <a href="#">Eventdayplanner.com</a> |
        <a type="button" data-toggle="modal" data-target="#partnerModal">Partner</a> |
        <a type="button" data-toggle="modal" data-target="#investorModal">Investor</a> |
        <a type="button" data-toggle="modal" data-target="#careerModal">Career</a> |
        <a href="#">Privacy & Policy</a>
    </footer>
</section>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
<script type="text/javascript">
    $('#exampleModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // Button that triggered the modal
        var recipient = button.data('whatever') // Extract info from data-* attributes
        // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        // var modal = $(this)
        // modal.find('.modal-title').text('New message to ' + recipient)
        // modal.find('.modal-body input').val(recipient)
    })
</script>
</body>
</html>
