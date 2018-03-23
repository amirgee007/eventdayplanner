<footer>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <h3>Our Expert Services</h3>
                <ul>
                    @foreach($frontarray['OurExpertServices'] as $menu)
                        <li><a href="{{ route('page',$menu->slug)}}">{{$menu->name}}</a></li>
                @endforeach
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

                    @foreach($frontarray['quicklinks'] as $link)
                        <li><a href="{{ route('page',$link->slug)}}">{{$link->name}}</a></li>
                    @endforeach

                </ul>
            </div>
            <div class="col-sm-3">
                <div class="newsLetter">
                    {!! Form::open(['url' => route('post.news.letter.email'),'id'=>'frm']) !!}
                    <h3>News Letter</h3>
                    <div class="input-group">
                        <input required name="email" type="email" class="form-control" placeholder="Enter Your Email">
                        <span class="input-group-btn">
              <button class="btn btn-default" type="submit">Submit</button>
            </span>
                    </div><!-- /input-group -->
                    {!! Form::close() !!}
                </div>
                <div class="card">
                    <h3>We Accept</h3>
                    <img src="{{asset('assets/images/eventday/paypal.png')}}" alt=""><img src="{{asset('assets/images/eventday/visa.png')}}" alt=""><img src="{{ asset('assets/images/eventday/mastarcard.png')}}" alt=""><img src="{{ asset('assets/images/eventday/americanexpress.png')}}" alt="">
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
                    <li>&copy; {{date('Y')}} <b> Eventdayplanner</b>. All Rights Reserved.</li>
                    <li><a href="{{route('site.map')}}">Site Map</a></li> |
                    <li><a href="{{route('terms.conditions')}}">Terms & Conditions</a></li> |
                    <li><a href="{{route('privacy.policy')}}">Privacy Policy</a></li> |
                    <li><a href="{{route('contact.us')}}">Contact Us</a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>