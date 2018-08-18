@extends('layouts.eventday')

{{-- Page title --}}
@section('title')
    User Tickets
    @parent
@stop

@section('content')
    <section class="bannerWrapper innerBanner">
        <div class="searchWrap">
            <div class="container">
                <h1>My Tickets</h1>

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
                                    <i class="fa fa-ticket"> My Tickets</i>
                                    <a href="{{route('create')}}" class="btn btn-success pull-right">Open
                                        Ticket</a>
                                    <div class="clearfix"></div>
                                </div>

                                <div class="panel-body">
                                    @if ($tickets->isEmpty())
                                        <p>There are currently no tickets.</p>
                                    @else
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>Title</th>
                                                <th>Message</th>
                                                {{--<th>Created At</th>--}}
                                                <th>Last Updated</th>
                                                <th>Status</th>
                                                <th>Actions</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @foreach ($tickets as $ticket)
                                                <tr>
                                                    <td>{{$ticket->id}}</td>
                                                    <td>
                                                        <a href="{{route('ticket-show' ,$ticket->ticket_id)}}">
                                                            {{ $ticket->title }}
                                                        </a>
                                                    </td>
                                                    <td>{{ str_limit($ticket->message, 50)}}</td>


                                                    {{--                                                    <td>{{ @$ticket->created_at->diffForHumans() }}</td>--}}
                                                    <td>{{ $ticket->updated_at ? $ticket->updated_at->diffForHumans() : '' }}</td>
                                                    <td>
                                                        <span class="label {{$ticket->status === 'open' ? 'label-success' :  'label-danger'}}">{{ $ticket->status }}</span>
                                                    </td>
                                                    <td>
                                                        @if($ticket->status=='open')
                                                        <a title="Comment" href="{{route('ticket-show' ,$ticket->ticket_id)}}"
                                                           class="btn btn-sm btn-primary"><i class="fa fa-comment"></i></a>
                                                        <a title="Close Ticket" href="{{route('ticket-close' ,$ticket->ticket_id)}}"
                                                           class="btn btn-sm btn-danger"  onclick="return confirm('Are you sure to close ticket?')"><i class="fa fa-remove"></i></a>
                                                        @else
                                                            N/A
                                                        @endif
                                                    </td>
                                                </tr>
                                            @endforeach
                                            </tbody>
                                        </table>

                                        {{ $tickets->render() }}
                                    @endif
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
