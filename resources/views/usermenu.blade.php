@if(Sentinel::inRole('freelancer'))
    @include('freelancer.usermenu')
@elseif(Sentinel::inRole('event-organizer'))
    @include('event_organizer.usermenu')
@elseif(Sentinel::inRole('business'))
    @include('business.usermenu')
@else
    <div class="myAccountNav" style="border: padding: 5px;">
        <div class="container">
            <div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="{{ URL::to('my-account') }}">Profile</a></li>
                    <li><a href="{{route('my-events')}}">Events</a></li>
                    <li><a href="{{route('tickets-all')}}">Tickets</a></li>
                    <li><a href="{{route('booking-management')}}">Booking</a></li>
                    <li><a href="{{ URL::to('messages') }}">Messages @include('messenger.unread-count')</a></li>
                    {{--<li><a href="{{route('advertisement')}}">Advertisement</a></li>--}}
                    {{--<li><a href="{{route('sales-report')}}">Sales Report</a></li>--}}
                    {{--<li><a href="#">Portfolio</a></li>--}}
                </ul>
            </div>
        </div>
    </div>
@endif