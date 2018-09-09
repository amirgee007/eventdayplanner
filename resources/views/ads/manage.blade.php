@extends('layouts/eventday')

{{-- Page title --}}
@section('title')
    My Ads
    @parent
@stop

{{-- page level styles --}}
@section('header_styles')
    <!--  <link href="{{ asset('assets/css/eventday/calendar.css') }}" rel="stylesheet"> -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link href="{{ asset('assets/vendors/fullcalendar/css/fullcalendar.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/vendors/fullcalendar/css/fullcalendar.print.css') }}" rel="stylesheet" media='print'
          type="text/css">
    {{--    <link href="{{ asset('assets/vendors/iCheck/css/all.css') }}"  rel="stylesheet" type="text/css" />--}}
    <link href="{{ asset('assets/css/pages/calendar_custom.css') }}" rel="stylesheet" type="text/css"/>
@stop

{{-- Page content --}}
@section('content')
    <section class="">
        <div class="contantWrapper innercontantWrapper">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12"><h3>Manage Ads -> {{ $ad->title }}</h3></div>
                    @include('business.usermenu')
                </div>
                <br/><br/>
                <div class="row">
                    <div class="col-lg-4 col-lg-offset-4">
                        {{Form::open(array('url' => url('ads/block'),'id'=>'frmbook'))}}
                        <div class="input-group">
                            <input type="hidden" name="ads" value="{{$ad->id}}"/>
                            <input class="date form-control" id="datepicker" name="date"/>
                            <span class="input-group-btn">
                        <button class="btn btn-default" type="submit">Block Date!</button>
                        </span>
                        </div>
                        {{Form::close()}}
                    </div>
                </div>

                <br/>
                <div class="col-sm-12">
                    <section class="content">
                        <div class="box">
                            <div class="box-body">
                                <div id="calendar"></div>
                                <div id="fullCalModal" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal"><span
                                                            aria-hidden="true">×</span> <span
                                                            class="sr-only">close</span></button>
                                                <h4 id="modalTitle" class="modal-title"></h4>
                                            </div>
                                            <div id="modalBody" class="modal-body" style="padding: 10px">
                                                <i class="mdi-action-alarm-on"></i>&nbsp;&nbsp;Start: <span
                                                        id="startTime"></span>&nbsp;&nbsp;- End: <span
                                                        id="endTime"></span>
                                                <h4 id="eventInfo"></h4>
                                                <br>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-raised btn-danger"
                                                        data-dismiss="modal">Close
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>

                <div class="col-sm-12">
                    <ul>
                        @foreach($bookings as $booking)
                            @if($booking->user_id==$user->id)
                                <li style="color:ORANGE;">
                                    <div style='border-bottom: 1px solid #ccc;'>
                                        {!! date('F j,Y',strtotime($booking->book_date)) !!}<br/>
                                        Booking Blocked
                                    </div>
                                </li>
                            @else
                                <li>
                                    <div style='border-bottom: 1px solid #ccc;'>
                                        {!! date('F j,Y',strtotime($booking->book_date)) !!}
                                        @if($booking->user->first_name || $booking->user->last_name)
                                            <br/>
                                            Booked By: {{$booking->user->first_name." ".$booking->user->last_name}}
                                        @elseif($booking->user->company_name)
                                            {{" ".$booking->user->company_name}} <br/>
                                        @endif
                                        @if($booking->user->mobile_number || $booking->user->office_number)
                                            <br/>
                                            (contact: {{$booking->user->mobile_number." ".$booking->user->office_number}}
                                            )
                                        @endif
                                        <br/>Price: {!! Helper::getPrice($booking->price) !!}<br/>

                                        <!-- <a href="#">More Details</a> -->
                                    </div>
                                </li>
                            @endif
                        @endforeach
                    </ul>
                </div>
                {{Form::open(array('url' => url('ads/book'),'id'=>'frmbook'))}}
                <input type="hidden" id="date" value=""/>
                {{Form::close()}}
            </div>
        </div>
    </section>

    <div id="url" style="display:none">{{ url('/')}}</div>
    <section class="" style="display:none">
        <div class="contantWrapper innercontantWrapper">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12"><h3>Manage Ads -> {{ $ad->title }}</h3></div>
                    @include('business.usermenu')

                    <div class="col-sm-9">
                        @include('notifications')
                    </div>

                </div>
                <div class="row">
                    <div id="calendar" class="col-sm-7"></div>
                    {{Form::open(array('url' => url('ads/book'),'id'=>'frmbook'))}}
                    <input type="hidden" id="date" value=""/>
                    {{Form::close()}}
                </div>

            </div>
        </div>
    </section>

    <div class="modal fade" id="bookModal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span
                                class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                    <h4 class="modal-title custom_align" id="Heading">Booking Details</h4>
                </div>
                <div class="modal-body">
                    <h1>{{ $ad->title }}</h1>
                    <p>Date: </p>
                    <p>Booked By:</p>
                </div>
                <div class="modal-footer ">
                    <div class="alert alert-warning hide seldateerr">
                        <strong>Warning!</strong> Date not selected.
                    </div>

                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
@stop
@section('footer_scripts')
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <!-- <script src="{{ asset('assets/js/eventday/moment.js') }}"></script> -->
    <script src="{{ asset('assets/vendors/moment/js/moment.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/vendors/fullcalendar/js/fullcalendar.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/js/pages/calendar.js') }}" type="text/javascript"></script>

    <script>

        var url = document.getElementById("url").textContent;

        $(document).ready(function () {

            var events_selected = ($.ajax({
                type: "GET",
                url: url + "/api/get-booked-events/{{$ad->id}}",
                dataType: "json",
                async: false
            }).responseText); // This will wait until you get a response from the ajax request.

            console.log(events_selected);


            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: ''
                },

                events: JSON.parse(events_selected),

                eventClick: function (event, jsEvent, view) {
                    $('#modalTitle, #eventInfo').html(event.title);
                    $('#modalBody').html(event.description);
                    $("#startTime").html(moment(event.start).format('MMM Do h:mm A'));
                    $("#endTime").html(moment(event.end).format('MMM Do h:mm A'));
                    $('#eventUrl').attr('href', event.url);
                    $('#fullCalModal').modal();
                },

                editable: true,
                droppable: true,
                drop: function (date, allDay) { // this function is called when something is dropped

                    // retrieve the dropped element's stored Event Object
                    var originalEventObject = $(this).data('eventObject');

                    // we need to copy it, so that multiple events don't have a reference to the same object
                    var copiedEventObject = $.extend({}, originalEventObject);

                    // assign it the date that was reported
                    copiedEventObject.start = date;
                    copiedEventObject.allDay = allDay;
                    copiedEventObject.backgroundColor = $(this).css("background-color");
                    copiedEventObject.borderColor = $(this).css("border-color");

                    // render the event on the calendar
                    // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                    $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
                    $(".event_count").text(parseInt($(".event_count").text()) + 1);


                }
            });

        });


        var jdays = [];
        // Maintain array of dates
        var dates = new Array();
        var d;
        //cDate = moment();
        //$('#currentDate').text("Current Date is " + cDate.format("MMMM Do, YYYY") );

        // $(document).ready(function($){
        //   createCalendar();
        // });

        /**
         * Instantiates the calendar AFTER ajax call
         */
        function createCalendar() {
            $.get(url + "/api/get-appointments/{{$ad->id}}", function (data) {
                $.each(data, function (index, value) {
                    jdays.push(value);
                });

                //My function to intialize the datepicker
                $('#calendar').datepicker({
                    inline: true,
                    //minDate: 0,
                    dateFormat: 'yy-mm-dd',
                    beforeShowDay: highlightDays,
                    onSelect: getTimes,
                });
            });
        }

        /**
         * Highlights the days available for booking
         * @param  {datepicker date} date
         * @return {boolean, css}
         */
        function highlightDays(date) {

//console.log(dates)
            $('#dates').val(dates);
            date = moment(date).format('YYYY-MM-DD');
            var gotDate = jQuery.inArray(date, dates);
            for (var i = 0; i < jdays.length; i++) {
                jDate = moment(jdays[i]).format('YYYY-MM-DD');
                if (jDate == date) {
                    return [true, "ui-state-highlight"];
                }

            }
            return false;
        }

        $('body').on('hidden.bs.modal', '.modal', function () {
            //$(this).removeData('bs.modal');
            var modalData = $(this).data('bs.modal');
            // Destroy modal if has remote source – don't want to destroy modals with static content.
            if (modalData && modalData.options.remote) {
                // Destroy component. Next time new component is created and loads fresh content
                $(this).removeData('bs.modal');
                // Also clear loaded content, otherwise it would flash before new one is loaded.
                $(this).find(".modal-content").empty();
                $(this).find(".modal-body").html();
            }
        });

        $("#bookModal").on("show.bs.modal", function (e) {
            $(this).removeData('bs.modal');
            // var timestamp= new Date(e.timeStamp);
            // console.log(timestamp)
            d = $('#date').val();
            // var $date=timestamp.getFullYear()+'-'+timestamp.getMonth()+'-'+timestamp.getDay();
            $(this).find(".modal-body").load('{{ url('ads/ajax-booking-management-detail')}}/{{$ad->id}}/' + d);
        });

        /**
         * Gets times available for the day selected
         * Populates the daytimes id with dates available
         */
        function getTimes(d) {
            //alert(d);

            $('#date').val(d);
            $('#bookModal').modal('show');
            //addOrRemoveDate(d);
            /*var dateSelected = moment(d);
            document.getElementById('daySelect').innerHTML = dateSelected.format("MMMM Do, YYYY");
            $.get(url+"/booking/times?selectedDay="+d, function(data) {
              $('#dayTimes').empty();
              $('#dayTimes').append('<h6>Times Available</h6>');
              for(var i in data) {
                var rdate = data[i].booking_datetime;
                rdate = rdate.split(" ");
                $("#dayTimes").append('<a href="'+url+'/booking/details/'+data[i].id+'">' + rdate[1] + '</a><br>');
              }
            });*/
        }


        function addDate(date) {
            alert(date)
            if (jQuery.inArray(date, dates) < 0)
                dates.push(date);

        }

        function removeDate(index) {
            dates.splice(index, 1);
        }

        // Adds a date if we don't have it yet, else remove it
        function addOrRemoveDate(date) {
            var index = jQuery.inArray(date, dates);
            if (index >= 0)
                removeDate(index);
            else
                addDate(date);
        }

        // Takes a 1-digit number and inserts a zero before it
        function padNumber(number) {
            var ret = new String(number);
            if (ret.length == 1)
                ret = "0" + ret;
            return ret;
        }

        $(function () {
            $("#datepicker").datepicker({dateFormat: 'yy-mm-dd'});
        });
    </script>
@stop