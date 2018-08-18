@extends('layouts.eventday')

{{-- Page title --}}
@section('title')
    User Account
    @parent
@stop

{{-- page level styles --}}
@section('header_styles')

    <link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/iCheck/css/minimal/blue.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/select2/css/select2.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/select2/css/select2-bootstrap.css') }}">
    <link rel="stylesheet" type="text/css"
          href="{{ asset('assets/vendors/datetimepicker/css/bootstrap-datetimepicker.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/frontend/user_account.css') }}">

@stop

{{-- Page content --}}
@section('content')
    <section class="bannerWrapper innerBanner">
        <div class="searchWrap">
            <div class="container">
                <h1>My Account</h1>

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
                                    <a href="{{route('create')}}" class="btn btn-success" style="float:right">Create
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

                                                <th>Title</th>
                                                <th>Status</th>
                                                <th>Created At</th>
                                                <th>Last Updated</th>
                                                <th style="text-align:center" colspan="2">Actions</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @foreach ($tickets as $ticket)
                                                <tr>

                                                    <td>
                                                        <a href="{{ url('tickets/'. $ticket->ticket_id) }}">
                                                            {{ $ticket->title }}
                                                        </a>
                                                    </td>
                                                    <td>
                                                        @if ($ticket->status === 'Open')
                                                            <span class="label label-success">{{ $ticket->status }}</span>
                                                        @else
                                                            <span class="label label-danger">{{ $ticket->status }}</span>
                                                        @endif
                                                    </td>
                                                    <td>{{ $ticket->created_at->diffForHumans() }}</td>
                                                    <td>{{ $ticket->updated_at }}</td>
                                                    <td>
                                                        <a href="{{ url('tickets/'. $ticket->ticket_id) }}"
                                                           class="btn btn-primary">Comment</a>
                                                    </td>
                                                    <td>
                                                        <form action="{{ url('ticket/close/' . $ticket->ticket_id) }}"
                                                              method="POST">
                                                            {!! csrf_field() !!}
                                                            <button type="submit" class="btn btn-danger">Close</button>
                                                        </form>
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
{{-- page level scripts --}}
@section('footer_scripts')

    <script type="text/javascript" src="{{ asset('assets/vendors/moment/js/moment.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('assets/vendors/jasny-bootstrap/js/jasny-bootstrap.js') }}"></script>
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
