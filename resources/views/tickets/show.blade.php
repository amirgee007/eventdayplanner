@extends('layouts.eventday')

{{-- Page title --}}
@section('title')
    User Ticket
    @parent
@stop


{{-- Page content --}}
@section('content')
    <section class="bannerWrapper innerBanner">
        <div class="searchWrap">
            <div class="container">
                <h1>User Ticket</h1>
            </div>
        </div>
    </section>
    <div class="container textsmall">

        <div class="row">
            <div class="row">
                <div class="col-md-12">
                    <!--main content-->
                    <div class="position-center">
                        <div>
                            @include('event_organizer.usermenu')
                        </div>

                        <div>
                            <h3 class="text-primary">TICKETS</h3>
                        </div>
                        <div class="col-md-10 col-md-offset-1">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-ticket">{{ $ticket->title }} </i>
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
                                        <p>Created At: {{ $ticket->created_at->diffForHumans() }}</p>
                                    </div>

                                    <hr> <br/>
                                    <div class="comments">
                                        @foreach ($comments as $comment)

                                            <div class="panel panel-{{$ticket->user->id === $comment->user_id ? 'info' : 'success'}}">
                                                <div class="panel panel-heading">
                                                    {{ $comment->user->name }}
                                                </div>


                                                @if(Sentinel::inRole('admin'))
                                                    <h5 class="pull-right">{{ Carbon\Carbon::parse($comment->created_at)->diffForHumans() }}</h5>
                                                    <div class="panel panel-body" style="margin-left:40px; ">
                                                        <p>Admin</p>
                                                        {{ $comment->comment }}
                                                    </div>

                                                @else
                                                    <div class="panel panel-body">
                                                        {{ $comment->comment }}
                                                    </div>
                                                @endif
                                            </div>
                                        @endforeach
                                    </div>
                                    <div class="comment-form">
                                        <form action="{{ url('comment') }}" method="POST" class="form">
                                            {!! csrf_field() !!}

                                            <input type="hidden" name="ticket_id" value="{{ $ticket->id }}">

                                            <div class="form-group{{ $errors->has('comment') ? ' has-error' : '' }}">
                                                <textarea rows="10" id="comment" class="form-control" name="comment"></textarea>

                                                @if ($errors->has('comment'))
                                                    <span class="help-block">
                                                        <strong>{{ $errors->first('comment') }}</strong>
                                                    </span>
                                                @endif
                                            </div>

                                            <div class="form-group" style="padding-top: 10px">
                                                <button type="submit" class="btn btn-primary">Comment</button>
                                            </div>
                                        </form>
                                    </div>
                                    <br/>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        @stop
        {{-- page level scripts --}}
        @section('footer_scripts')

            <script type="text/javascript" src="{{ asset('assets/vendors/moment/js/moment.min.js') }}"></script>
            <script type="text/javascript"
                    src="{{ asset('assets/vendors/jasny-bootstrap/js/jasny-bootstrap.js') }}"></script>
            <script type="text/javascript" src="{{ asset('assets/vendors/iCheck/js/icheck.js') }}"></script>
            <script type="text/javascript" src="{{ asset('assets/vendors/select2/js/select2.js') }}"></script>
            <script type="text/javascript" src="{{ asset('assets/js/bootstrap-datetimepicker.js') }}"></script>
            <script type="text/javascript" src="{{ asset('assets/js/frontend/user_account.js') }}"></script>


            <script>

                $(function () {

                    $('#Datein').datetimepicker(
                        {
                            maxDate: 'now',
                            minDate: new Date('1918/01/01'),
                        }
                    );
                });
            </script>


@stop
