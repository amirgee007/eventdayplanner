@extends('admin/layouts/default')

@section('title')
    Ticket
    @parent
@stop


@section('content')

    <section class="content-header">
        <h1>Ticket</h1>
        <ol class="breadcrumb">
            <li class="active">
                <a href="#">
                    <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                    Dashboard
                </a>
            </li>
        </ol>
    </section>

    <section class="content">

        <div class="row">

            <div class="col-md-12">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        {{ $ticket->title }}
                    </div>

                    <div class="panel-body">

                        <div class="ticket-info">
                            <p>{{ $ticket->message }}</p>

                            <p>
                                @if ($ticket->status === 'open')
                                    Status: <span class="label label-success">{{ $ticket->status }}</span>
                                @else
                                    Status: <span class="label label-danger">{{ $ticket->status }}</span>
                                @endif
                            </p>

                            <p>Opened At: {{ @$ticket->created_at->diffForHumans() }}</p>
                            <p>Opened By: {{ @$ticket->user->first_name }}</p>
                        </div>

                        <hr>

                        <hr>
                        <br/>
                        <div class="comments">
                            @foreach ($comments as $comment)

                                <div class="panel panel-info" style="{{$ticket->user->id == $comment->user_id ? 'margin-left:20px;' : ''}}">

                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            {{ @$comment->user->first_name }}
                                            <span style="margin-top:0px" class="pull-right"> {{ Carbon\Carbon::parse($comment->created_at)->diffForHumans() }} </span>
                                        </h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="content">
                                            <p> {{ $comment->comment }} </p>
                                        </div>
                                    </div>

                                </div>
                            @endforeach
                        </div>
                        @if($ticket->status=='open')
                            <div class="comment-form">
                                <form action="{{ route('ticket-comment')}}" method="POST" class="form">
                                    {!! csrf_field() !!}

                                    <input type="hidden" name="ticket_id" value="{{ $ticket->id }}">

                                    <div class="form-group{{ $errors->has('comment') ? ' has-error' : '' }}">
                                                <textarea rows="10" id="comment" class="form-control"
                                                          name="comment"></textarea>

                                        @if ($errors->has('comment'))
                                            <span class="help-block">
                                                        <strong>{{ $errors->first('comment') }}</strong>
                                                    </span>
                                        @endif
                                    </div>

                                    <div class="form-group" style="padding-top: 10px">
                                        <button type="submit" class="btn btn-primary">Comment</button>
                                        <a title="Close Ticket" href="{{route('ticket-close' ,$ticket->ticket_id)}}"
                                           class="btn btn-danger"  onclick="return confirm('Are you sure to close ticket?')">Close Ticket</a>
                                    </div>
                                </form>
                            </div>
                        @else
                            <button style="width: 100%" type="button" class="btn btn-danger">Ticket Already Closed</button>
                        @endif
                        <br/>
                    </div>
                </div>

            </div>

        </div>

        <div class="clearfix"></div>

    </section>

@stop

