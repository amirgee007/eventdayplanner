@extends('layouts.eventday')
@section('title')
    My Messages
    @parent
@stop
@section('content')

<section class="mainContainer">
<div class="contantWrapper innercontantWrapper adsListing">
  <div class="container">
      <div class="row">
      @include('usermenu')
      <div class="col-sm-12"><h3>My Messages</h3></div>
      </div>
    @if (Session::has('error_message'))
        <div class="alert alert-danger" role="alert">
            {{ Session::get('error_message') }}
        </div>
    @endif
    @if($threads->count() > 0)
        @foreach($threads as $thread)
        <?php $class = $thread->isUnread($currentUserId) ? 'alert-info' : ''; ?>
        <div class="media alert {{ $class }}">
            <h4 class="media-heading">{!! url('messages/' . $thread->id) !!}</h4>
            <p>{!! $thread->latestMessage->body !!}</p>
            <p><small><strong>Sender:</strong> {{ $thread->creator()->first_name }} {{ $thread->creator()->last_name }}</small></p>
<!--             <p><small><strong>Participants:</strong> {{ $thread->participantsString(Auth::id()) }}</small></p>
 -->        </div>
        @endforeach
    @else
        <p>Sorry, no threads.</p>
    @endif
    </div>
</div>
</section>
@stop
