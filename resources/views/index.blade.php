@extends('layouts/eventday')

{{-- Page title --}}
@section('title')
    Home
    @parent
@stop

@section('header_styles')
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/frontend/jquery.share.css') }}"/>
    <style>

        .joinUs .btn{ display: block;  margin: 30px auto; padding: 0 30px; line-height: 60px; font-size: 40px; color: #bc0033; font-weight: 600; text-transform: uppercase;}
        @media screen and (max-width: 767px){
            .joinUs .btn{ padding: 0 20px; font-size: 30px; line-height: 40px;}
        }
        .social{}
        .social ul{ list-style: none; text-align: center; padding-left: 0;}
        .social li{ display: inline-block; border-radius:50px; height: 60px; width: 60px; text-align: center; border: 2px solid #fff; margin: 0 5px;}
        .social li .fa{ font-size: 30px; color: white; padding-top: 13px;}
    </style>
@stop

@section('top')
    <section class="bannerWrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <div class="adsBanner">
                        <div class="adsBannerTop">
                            <a href="#adds1"><img src="{{ asset('assets/images/eventday/ads1.jpg')}}" class="img-responsive"></a>
                        </div>
                        <div class="adsBannerBtm">
                            <div class="row">
                                <div class="col-xs-4 col-sm-4">
                                    <a href="#adds2"><img src="{{ asset('assets/images/eventday/ads2.jpg')}}" class="img-responsive"></a>
                                </div>
                                <div class="col-xs-4 col-sm-4">
                                    <a href="#adds3"><img src="{{ asset('assets/images/eventday/ads3.jpg')}}" class="img-responsive"></a>
                                </div>
                                <div class="col-xs-4 col-sm-4">
                                    <a href="#adds4"><img src="{{ asset('assets/images/eventday/ads4.jpg')}}" class="img-responsive"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="navHighlight">
                        <ul>
                            @foreach($ads_category as $cat)
                                <li><a href="{!! url('list-ads',$cat->slug) !!}">{!! $cat->name !!}</a></li>
                            @endforeach
                            <li>
                                <a href="{{route('ads-category')}}">More <i class="fa fa-angle-double-right" aria-hidden="true"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>
        </div>
        <div class="searchWrap">
            <div class="container">
                <h1>What are you looking for</h1>

                <div class="col-sm-12">
                    <div class="form-group">
                        {!! Form::open(['url' => 'search']) !!}
                        <div class="row">

                            <div class="col-md-8 col-sm-8 col-xs-12 five-three">
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 col-xs-12">

                                        <label><input type="radio" name="type" value="business" checked/> Business
                                            Search</label>
                                        <label><input type="radio" name="type" value="event"/> Events Search</label>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-12">

                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Enter Your keyword"
                                                   aria-describedby="basic-addon1" name="keyword">
                                        </div>

                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xs-12">

                                        <div class="input-group">
                                            <input type="text" name="location" class="form-control"
                                                   placeholder="Location" aria-describedby="basic-addon1">
                                        </div>
                                    </div><!-- end inner row -->
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12 five-two">
                                <div class="row">
                                    <div class="col-md-7 col-sm-7 col-xs-12">
                                        <div class="input-group">
                                            <input type="text" class="form-control" name="date" id='datepicker'
                                                   placeholder="Date" aria-describedby="basic-addon1">
                                        </div>
                                    </div>
                                    <div class="col-md-5 col-sm-5 col-xs-12">
                                        <button type="submit" class="btn btn-secondary searchBtn">Search</button>
                                        <!-- <a href="#" class="advSearch"> Advance Search </a> -->
                                    </div>
                                </div><!-- end inner row -->
                            </div>
                        </div><!-- end outer row -->
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
    </section>
@stop

@section('content')
    <section class="mainContainer">
        <div class="contantWrapper">
            <div class="container">
                <div class="row">
                    <h2><span>Welcome to EventdayPlanner</span></h2>
                    <div class="welcomeTxt">If you are looking for live wedding music at your ceremony, or to find a
                        performer who will amaze the guests at your drinks reception, you are in the right place! Warble
                        Entertainment provides musicians, such as string quartets and harpists who are perfect to create
                        a romantic ambience, and unique and fun wedding entertainment ideas with magicians,
                        caricaturists and more!
                    </div>
                </div>

                <div class="searchContent">
                    <div class="row">
                        <div class="filterSearch">
                            <div class="col-sm-8 col-md-8 col-lg-9">
                                <h3>Upcomming events</h3></div>
                            <div class="col-sm-4 col-md-4 col-lg-3">
                                <div class="fliterR">
                                    <div class="filter" style="line-height: 36px"> Filter by</div>
                                    {!! Form::open(['url' => 'filtereventbyprice']) !!}
                                    <select id="price" name="price" class="form-control" onchange="this.form.submit()">
                                        <option>Price</option>
                                        <option value="10">Below {!! Helper::getPricesymbol() !!} 10</option>
                                        <option value="50">Below {!! Helper::getPricesymbol() !!} 50</option>
                                        <option value="100">Below {!! Helper::getPricesymbol() !!} 100</option>
                                        <option value="200">Below {!! Helper::getPricesymbol() !!} 200</option>
                                        <option value="-1">All</option>
                                    </select>
                                    {!! Form::close() !!}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="boxContent">
                            @foreach($events as $event)
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <div class="panel panel-default">
                                        <div class="panel-image">
                                            <div class="eventPrice">
                                                Price: {!! Helper::getPrice($event->ticket_price) !!}</div>
                                            <div class="eventLogoWrap">
                                                <div class="eventlogo"><img class="img-responsive img-circle"
                                                                            src="{{url('user_circularthumb',$event->organizer()->first()->pic)}}"/>
                                                </div>
                                            </div>
                                            <a href="{{ URL::to('event/'.$event->slug) }}">
                                                @if($event->photo)
                                                    <img class="img-responsive img-hover"
                                                         src="thumbnail2/{!! $event->photo !!}" alt="">
                                                @else
                                                    <img class="img-responsive img-hover"
                                                         src="thumbnail2/lfgRuzbVrvzTfc2vwqnJ.jpg" alt="">
                                                @endif
                                            </a>
                                        </div>
                                        <div class="panel-body">
                                            <div class="time"><i class="fa fa-clock-o" aria-hidden="true"></i>
                                                {!! date('D, M d, g a ',strtotime($event->date)) !!}</div>
                                            <h3>{!! $event->name !!}</h3>
                                            <!-- <div class="date">Date 25th June2016</div> -->
                                            <div class="address"><i class="fa fa-map-marker"
                                                                    aria-hidden="true"></i> {!! $event->location !!}
                                            </div>
                                            <p><!-- {!! str_limit($event->description,150, '...') !!} --></p>
                                            <div class="property-meta">
                                                <ul>
                                                    <li><a href="{{ URL::to('event/'.$event->slug) }}"><i
                                                                    class="fa fa-info-circle" aria-hidden="true"></i>
                                                            More Info</a></li>
                                                    <li class="centerShare">

                                                        <p class="text-center">
                                                            <button type="button"
                                                                    class=" btn-share btn btn-simple popover-html"
                                                                    data-text="{{$event->name}}"
                                                                    data-link="{{ URL::to('event/'.$event->slug) }}"
                                                                    data-container="body" data-toggle="popover"
                                                                    data-placement="top">

                                                                <span>Share</span> <i class="fa fa-share-alt"
                                                                                      aria-hidden="true"></i>

                                                            </button>
                                                            <!-- Popover hidden content -->
                                                            <span id="popoverExampleHiddenContent" class="hidden">
                                                                  <a target="_blank" href="#" class="btn-media twitter">
                                                                    <i class="fa fa-twitter"></i>
                                                                  </a>
                                                                  <a target="_blank" href="#" class="btn-media facebook">
                                                                    <i class="fa fa-facebook"></i>
                                                                  </a>
                                                                  <a target="_blank" href="#" class="btn-media google-plus">
                                                                    <i class="fa fa-google-plus"></i>
                                                                  </a>
                                                                  <a target="_blank" href="#" class="btn-media pinterest">
                                                                    <i class="fa fa-pinterest"></i>
                                                                  </a>
                                                                  <a target="_blank" href="#" class="btn-media envelope">
                                                                    <i class="fa fa-envelope"></i>
                                                                  </a>
                                                            </span>
                                                        </p>

                                                    </li>
                                                    <li class="pull-right"><a
                                                                href="{{ url('events/book',$event->id) }}"><i
                                                                    class="fa fa-ticket" aria-hidden="true"></i> Book
                                                            Tickets</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="newSetion">
                    <div class="row">
                        <div class="col-sm-4">
                            <h3>latest News</h3>
                            @foreach($news as $newsitem)
                                <p>
                                    <a href="{{ URL::to('newsitem/'.$newsitem->slug) }}"><strong> {{$newsitem->title}} </strong>
                                        <span> {{$newsitem->created_at->diffForHumans()}}</span>

                                        {!! str_limit($newsitem->content,150, '...') !!}
                                    </a></p>
                            @endforeach


                        </div>
                        <div class="col-sm-4">
                            <h3>Popular Events</h3>
                            @if(count($popularevents))
                                @foreach($popularevents as $event)
                                    <p style="min-height: 100px;">
                                        @if($event->photo)
                                            <img class="img-responsive img-hover" src="thumbnail3/{!! $event->photo !!}"
                                                 alt="">
                                        @else
                                            <img src="{{ asset('assets/images/eventday/news1.jpg')}}" alt="">
                                        @endif

                                        <a href="{{ URL::to('event/'.$event->slug) }}"><strong> {!! $event->name !!} </strong>
                                            {!! str_limit($event->description,100, '...') !!}
                                        </a></p>
                                @endforeach
                            @endif

                        </div>

                        <div class="col-sm-4">
                            <h3>Sponsored Events</h3>
                            @if(count($sponsoredevents))
                                @foreach($sponsoredevents as $event)
                                    <p style="min-height: 100px;">
                                        @if($event->photo)
                                            <img class="img-responsive img-hover" src="thumbnail3/{!! $event->photo !!}"
                                                 alt="">
                                        @else
                                            <img src="{{ asset('assets/images/eventday/news1.jpg')}}" alt="">
                                        @endif

                                        <a href="{{ URL::to('event/'.$event->slug) }}"><strong> {!! $event->name !!} </strong>
                                            {!! str_limit($event->description,100, '...') !!}
                                        </a></p>
                                @endforeach
                            @endif

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="contantWrapper">
            <div class="container">
                <div class="row">
                    <h2><span>How It Works ?</span></h2>

                    <div class="col-sm-2">
                        <h4><b>Sign up free</b></h4>
                        <p>As <br> freelancer,<br>
                            eventplanner,<br> business owner</p>
                    </div>

                    <div class="col-sm-2">
                        <h4><b>Create Ads</b></h4>
                        <p>list your service using create ads</p>
                    </div>

                    <div class="col-sm-4">
                        <h4><b>Booking</b></h4>
                        <p>Service user select available date & proceed to payment</p>
                    </div>

                    <div class="col-sm-2">
                        <h4><b>Payment</b></h4>
                        <p>Take a payment from service user</p>
                    </div>

                    <div class="col-sm-2">
                        <h4><b>Complete</b></h4>
                        <p>Order will be completed once event happen</p>
                    </div>
                </div>
                <br>
            </div>
        </div>
    </section>

    <section class="contantWrapper testimonial">
        <div class="container">
            <div class="row">
                <div class="col-xs-3"><span class="borderBtm"></span></div>
                <div class="col-xs-6">
                    <h2 class="noBorder"><span>What People Think</span></h2>
                </div>
                <div class="col-xs-3"><span class="borderBtm"></span></div>
            </div>
            <div class="row">

                <!-- <h2 class="padT6px"><span class="testiBG">What People Think</span></h2> -->

                <div class="col-sm-2">
                    <p><i class="fa fa-quote-left" aria-hidden="true"></i></p>
                </div>
                <div class="col-sm-8">
                    <p>{{ $testimonial->description}}<span><strong>{{ $testimonial->name}}</strong><br>
                            {{ $testimonial->title }}<br>
                            {{ $testimonial->company }}</span></p>
                </div>
                <div class="col-sm-2"></div>
            </div>
        </div>

        <section class="joinUs">
            <div class="container"><br><br>
                {{--<input type="button" class="btn btn-default" value="Join Us Today">--}}
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
    </section>

@stop

@section('footer_scripts')
    <!-- page level js starts-->

    <script src="https://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <script type="text/javascript" src="{{ asset('assets/js/frontend/jquery.share.js') }}"></script>
    <script src="{{ asset('assets/js/eventday/moment.js') }}"></script>
    <script>
        var link = window.location.href;
        var text = "eventdayplanner.com";
        $(".btn-share").popover({
            html: true,
            container: '.btn-share',
            content: function () {
                return $('#popoverExampleHiddenContent').html();
            },
            template: '<div class="popover" role="tooltip"><div class="popover-content"></div></div>'
        });

        $('.btn-share').click(function (event) {
            $('.btn-share').not(this).popover('hide');
            text = ($(this).data('text'));
            link = ($(this).data('link'));
            $("a.twitter").attr("href", "https://twitter.com/home?status=" + link + "&text=" + text);
            $("a.facebook").attr("href", "https://www.facebook.com/sharer/sharer.php?u=" + link + "&title=" + text);
            $("a.google-plus").attr("href", "https://plus.google.com/share?url=" + link + "&content=" + text);
            $("a.pinterest").attr("href", "https://plus.google.com/share?url=" + link + "&description=" + text);
            $("a.envelope").attr("href", "mailto:?subject=" + text + "&body=" + link);

            // hide share button popover
            if (!$(event.target).closest('.btn-share').length) {
                $('.btn-share').popover('hide')
            }
        });


        $(function () {
            $("#datepicker").datepicker({dateFormat: 'yy-mm-dd'});
        });
    </script>
    <!--page level js ends-->
@stop



{{-- page level styles --}}
@section('header_styles_comingsoon')
    <!--page level css starts-->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/frontend/tabbular.css') }}">
    <link href="{{ asset('assets/vendors/animate/animate.min.css') }}" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/frontend/jquery.circliful.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/owl.carousel/css/owl.carousel.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/owl.carousel/css/owl.theme.css') }}">
    <!--end of page level css-->
@stop

{{-- slider --}}
@section('top_comingsoon')
    <!--Carousel Start -->
    <div id="owl-demo" class="owl-carousel owl-theme">
        <div class="item"><img src="{{ asset('assets/images/slide_1.jpg') }}" alt="slider-image">
        </div>
        <div class="item"><img src="{{ asset('assets/images/slide_2.jpg') }}" alt="slider-image">
        </div>
        <div class="item"><img src="{{ asset('assets/images/slide_3.jpg') }}" alt="slider-image">
        </div>
    </div>
    <!-- //Carousel End -->
@stop


