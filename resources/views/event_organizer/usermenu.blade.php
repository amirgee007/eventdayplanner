<ul class="nav navbar-nav navbar-right">
    <li><a href="{{ URL::to('my-account') }}">Profile</a></li>
    <li><a href="{{route('my-events')}}">Events</a></li>
    <li><a href="#">Create Ticket</a></li>
    <li><a href="{{ URL::to('messages') }}">Messages @include('messenger.unread-count')</a></li>
    <li><a href="#">Sales Track</a></li>
    <li><a href="#">Total Revenue</a></li>
    <li><a href="{{ URL::to('events-reviews-management') }}">Reviews on Events</a></li>
</ul>