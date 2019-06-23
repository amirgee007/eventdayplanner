</br>
<footer>

    <div class="card" style="text-align: center">
        <div class="row" style="margin-right:0px; margin-left:0px">
            <div class="col-sm-6">
                <h3>We Accept
                    <img style="padding: 12px" src="{{asset('assets/images/eventday/americanexpress.png')}}" alt=""><img style="padding: 12px"  src="{{asset('assets/images/eventday/visa.png')}}" alt=""><img style="padding: 12px" src="{{ asset('assets/images/eventday/mastarcard.png')}}" alt=""><img style="padding: 12px" src="{{ asset('assets/images/eventday/paypal.png')}}" alt="">
                </h3>
            </div>

            <div class="col-sm-5">
                <div class="newsLetter">
                    {!! Form::open(['url' => route('post.news.letter.email'),'id'=>'frm']) !!}
                    <h3 style="text-align: left;">News Letter</h3>
                    <div class="input-group">
                        <input required name="email" type="email" class="form-control" placeholder="Enter Your Email">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="submit">Submit</button>
                        </span>
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>

    <section class="contantWrapper testimonial" style="padding: 0px">
        <section class="joinUs">
            <div class="container"><br><br>
                <div class="row">
                    <div class="social">
                        <ul>
                            <a href="https://www.instagram.com/eventdayplanner/" target="_blank"><li><i class="fa fa-instagram" aria-hidden="true"></i></li></a>
                            <a href="https://twitter.com/eventdayplanner/" target="_blank"><li><i class="fa fa-twitter" aria-hidden="true"></i></li></a>
                            <a href="https://www.facebook.com/eventdayplanner/" target="_blank"><li><i class="fa fa-facebook" aria-hidden="true"></i></li></a>
                            <a href="https://uk.pinterest.com/eventdayplanner/" target="_blank"><li><i class="fa fa-pinterest" aria-hidden="true"></i></li></a>
                            <a href="https://www.linkedin.com/in/eventdayplanner/" target="_blank"><li><i class="fa fa-linkedin" aria-hidden="true"></i></li></a>
                        </ul>
                    </div>
                </div>
            </div>

        </section>


        <div class="footerBottom">
            <div class="container">
                <div class="row">
                    <ul>
                        <li style="color: #ffffff">&copy; {{date('Y')}} <strong> Eventdayplanner</strong>. All Rights Reserved.</li>
                        <br>
                        <li><a href="{{ route('page','about-us')}}">About Us</a></li> |
                        <li><a href="{{route('site.map')}}">Site Map</a></li> |
                        <li><a href="{{ env('APP_URL'). 'page/terms-and-condition' }}">Terms & Conditions</a></li> |
                        <li><a href="{{ env('APP_URL'). 'page/privacy-and-policy' }}">Privacy Policy</a></li> |
                        <li><a href="{{route('contact.us')}}">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>


</footer>