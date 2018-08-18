@extends('admin/layouts/default')

{{-- Page title --}}
@section('title')
    Dashboard
    @parent
@stop

{{-- page level styles --}}
@section('header_styles')

    {{--<link href="{{ asset('assets/vendors/fullcalendar/css/fullcalendar.css') }}" rel="stylesheet" type="text/css"/>--}}
    {{--<link href="{{ asset('assets/css/pages/calendar_custom.css') }}" rel="stylesheet" type="text/css"/>--}}
    {{--<link rel="stylesheet" media="all"--}}
          {{--href="{{ asset('assets/vendors/bower-jvectormap/css/jquery-jvectormap-1.2.2.css') }}"/>--}}
    {{--<link rel="stylesheet" href="{{ asset('assets/vendors/animate/animate.min.css') }}">--}}
    {{--<link rel="stylesheet" href="{{ asset('assets/css/pages/only_dashboard.css') }}"/>--}}
    {{--<meta name="_token" content="{{ csrf_token() }}">--}}
    {{--<link rel="stylesheet" type="text/css"--}}
          {{--href="{{ asset('assets/vendors/datetimepicker/css/bootstrap-datetimepicker.min.css') }}">--}}

@stop

{{-- Page content --}}
@section('content')

    <section class="content-header">
        <h1>Manage Tickets</h1>
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
            <div class="col-md-10 col-md-offset-1">

                <i class="fa fa-ticket"> Tickets</i>
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
                                    <a href="{{ url('show-tickets/'. $ticket->ticket_id) }}">
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
                                    <a href="{{ url('admin-show/' . $ticket->ticket_id) }}" class="btn btn-primary">Comment</a>
                                </td>
                                <td>
                                    <form action="{{ url('close-ticket/' . $ticket->ticket_id) }}" method="POST">
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

        <div class="clearfix"></div>

    </section>

@stop

{{-- page level scripts --}}
@section('footer_scripts')
    {{--<script type="text/javascript" src="{{ asset('assets/vendors/moment/js/moment.min.js') }}"></script>--}}
    {{--<script type="text/javascript"--}}
            {{--src="{{ asset('assets/vendors/datetimepicker/js/bootstrap-datetimepicker.min.js') }}"></script>--}}

    {{--<!-- EASY PIE CHART JS -->--}}
    {{--<script src="{{ asset('assets/vendors/bower-jquery-easyPieChart/js/easypiechart.min.js') }}"></script>--}}
    {{--<script src="{{ asset('assets/vendors/bower-jquery-easyPieChart/js/jquery.easypiechart.min.js') }}"></script>--}}
    {{--<script src="{{ asset('assets/vendors/bower-jquery-easyPieChart/js/jquery.easingpie.js') }}"></script>--}}
    {{--<!--for calendar-->--}}
    {{--<script src="{{ asset('assets/vendors/moment/js/moment.min.js') }}" type="text/javascript"></script>--}}
    {{--<script src="{{ asset('assets/vendors/fullcalendar/js/fullcalendar.min.js') }}" type="text/javascript"></script>--}}
    {{--<!--   Realtime Server Load  -->--}}
    {{--<script src="{{ asset('assets/vendors/flotchart/js/jquery.flot.js') }}" type="text/javascript"></script>--}}
    {{--<script src="{{ asset('assets/vendors/flotchart/js/jquery.flot.resize.js') }}" type="text/javascript"></script>--}}
    {{--<!--Sparkline Chart-->--}}
    {{--<script src="{{ asset('assets/vendors/sparklinecharts/jquery.sparkline.js') }}"></script>--}}
    {{--<!-- Back to Top-->--}}
    {{--<script type="text/javascript" src="{{ asset('assets/vendors/countUp.js/js/countUp.js') }}"></script>--}}
    {{--<!--   maps -->--}}
    {{--<script src="{{ asset('assets/vendors/bower-jvectormap/js/jquery-jvectormap-1.2.2.min.js') }}"></script>--}}
    {{--<script src="{{ asset('assets/vendors/bower-jvectormap/js/jquery-jvectormap-world-mill-en.js') }}"></script>--}}
    {{--<!-- <script src="{{ asset('assets/vendors/Chart.js/js/Chart.js') }}"></script>--}}
      {{--todolist--}}
    {{--<script src="{{ asset('assets/js/pages/todolist.js') }}"></script> -->--}}
    {{--<script src="{{ asset('assets/js/pages/dashboard.js') }}" type="text/javascript"></script>--}}




@stop
