@extends('admin/layouts/default')

{{-- Page title --}}
@section('title')
    Tickets
    @parent
@stop

@section('header_styles')
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/datatables/css/dataTables.bootstrap.css') }}" />
    <link href="{{ asset('assets/css/pages/tables.css') }}" rel="stylesheet" type="text/css" />
@stop

@section('content')
    <section class="content-header">
        <h1>Tickets</h1>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="livicon" data-name="home" data-size="14" data-color="#000"></i>
                    Dashboard
                </a>
            </li>
            <li>Users</li>
            <li class="active">Tickets</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content paddingleft_right15">
        <div class="row">
            <div class="panel panel-primary ">
                <div class="panel-heading">
                    <h4 class="panel-title"> <i class="livicon" data-name="user" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                        All Tickets
                    </h4>
                </div>
                <br />
                <div class="panel-body">
                    <table class="table table-bordered " id="table">
                        <thead>
                        <tr class="filters">
                            <th>Id</th>
                            <th>Title</th>
                            <th width="30%">Message</th>
                            <th>Opened By</th>
                            <th>Open At</th>
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
                                    <a href="{{route('admin-show-support-ticket' ,$ticket->ticket_id)}}">
                                        {{ $ticket->title }}
                                    </a>
                                </td>
                                <td>{{ str_limit($ticket->message, 50)}}</td>
                                <td>
                                    <a target="_blank" href="{{route('users.show' ,@$ticket->user->id)}}">
                                        {{ @$ticket->user->first_name }}
                                    </a>
                                </td>

                                <td>{{ @$ticket->created_at->diffForHumans() }}</td>
                                <td>{{ $ticket->updated_at ? $ticket->updated_at->diffForHumans() : '' }}</td>
                                <td>
                                    <span class="label {{$ticket->status === 'open' ? 'label-success' :  'label-danger'}}">{{ $ticket->status }}</span>
                                </td>
                                <td>
                                    @if($ticket->status=='open')
                                        <a title="Show Ticket" href="{{route('admin-show-support-ticket' ,$ticket->ticket_id)}}"
                                           class="btn btn-sm btn-primary">Show</a>
                                        <a title="Close Ticket" href="{{route('support-ticket-close' ,$ticket->ticket_id)}}"
                                           class="btn btn-sm btn-danger"  onclick="return confirm('Are you sure to close ticket?')">Close</a>
                                    @else
                                        N/A
                                    @endif
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
@stop


@section('footer_scripts')
    <script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/jquery.dataTables.js') }}" ></script>
    <script type="text/javascript" src="{{ asset('assets/vendors/datatables/js/dataTables.bootstrap.js') }}" ></script>

    <script>
        $(document).ready(function() {
            $('#table').DataTable();
        });
    </script>

@stop
