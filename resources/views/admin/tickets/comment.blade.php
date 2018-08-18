@extends('admin/layouts/default')

{{-- Page title --}}
@section('title')
    Dashboard
    @parent
@stop

{{-- page level styles --}}
@section('header_styles')

    <link href="{{ asset('assets/vendors/fullcalendar/css/fullcalendar.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/css/pages/calendar_custom.css') }}" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" media="all"
          href="{{ asset('assets/vendors/bower-jvectormap/css/jquery-jvectormap-1.2.2.css') }}"/>
    <link rel="stylesheet" href="{{ asset('assets/vendors/animate/animate.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/pages/only_dashboard.css') }}"/>
    <meta name="_token" content="{{ csrf_token() }}">
    <link rel="stylesheet" type="text/css"
          href="{{ asset('assets/vendors/datetimepicker/css/bootstrap-datetimepicker.min.css') }}">

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


            </div>
            <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        {{ $ticket->title }}
                    </div>

                    <div class="panel-body">


                        <div class="ticket-info">
                            <p>{{ $ticket->message }}</p>

                            <p>
                                @if ($ticket->status === 'Open')
                                    Status: <span class="label label-success">{{ $ticket->status }}</span>
                                @else
                                    Status: <span class="label label-danger">{{ $ticket->status }}</span>
                                @endif
                            </p>
                            <p>Created on: {{ $ticket->created_at->diffForHumans() }}</p>
                        </div>

                        <hr>

                        <div class="comment-form">
                            <form action="{{ url('admin-comment') }}" method="POST" class="form">
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

                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                        <div class="comments">
                            @foreach ($comments as $comment)

                                <div class="panel panel-@if($ticket->user->id === $comment->user_id) {{"default"}}@else{{"success"}}@endif">
                                    <div class="panel panel-heading">
                                        {{ $comment->user->name }}

                                    </div>

                                    @if(Sentinel::inRole('admin'))
                                        <h4 class="pull-right">{{ Carbon\Carbon::parse($comment->created_at)->format('d-m-Y i') }}</h4>
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
                    </div>
                </div>

            </div>

        </div>

        <div class="clearfix"></div>

    </section>

@stop

{{-- page level scripts --}}
@section('footer_scripts')
    <script type="text/javascript" src="{{ asset('assets/vendors/moment/js/moment.min.js') }}"></script>
    <script type="text/javascript"
            src="{{ asset('assets/vendors/datetimepicker/js/bootstrap-datetimepicker.min.js') }}"></script>

    <!-- EASY PIE CHART JS -->
    <script src="{{ asset('assets/vendors/bower-jquery-easyPieChart/js/easypiechart.min.js') }}"></script>
    <script src="{{ asset('assets/vendors/bower-jquery-easyPieChart/js/jquery.easypiechart.min.js') }}"></script>
    <script src="{{ asset('assets/vendors/bower-jquery-easyPieChart/js/jquery.easingpie.js') }}"></script>
    <!--for calendar-->
    <script src="{{ asset('assets/vendors/moment/js/moment.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/vendors/fullcalendar/js/fullcalendar.min.js') }}" type="text/javascript"></script>
    <!--   Realtime Server Load  -->
    <script src="{{ asset('assets/vendors/flotchart/js/jquery.flot.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/vendors/flotchart/js/jquery.flot.resize.js') }}" type="text/javascript"></script>
    <!--Sparkline Chart-->
    <script src="{{ asset('assets/vendors/sparklinecharts/jquery.sparkline.js') }}"></script>
    <!-- Back to Top-->
    <script type="text/javascript" src="{{ asset('assets/vendors/countUp.js/js/countUp.js') }}"></script>
    <!--   maps -->
    <script src="{{ asset('assets/vendors/bower-jvectormap/js/jquery-jvectormap-1.2.2.min.js') }}"></script>
    <script src="{{ asset('assets/vendors/bower-jvectormap/js/jquery-jvectormap-world-mill-en.js') }}"></script>
    <!-- <script src="{{ asset('assets/vendors/Chart.js/js/Chart.js') }}"></script>
      todolist
    <script src="{{ asset('assets/js/pages/todolist.js') }}"></script> -->
    <script src="{{ asset('assets/js/pages/dashboard.js') }}" type="text/javascript"></script>


@stop
