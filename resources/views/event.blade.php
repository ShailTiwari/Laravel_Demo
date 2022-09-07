<x-header/>
<x-sidebar/>   
    <!-- Calender css -->
    <link rel="stylesheet" type="text/css" href="{{ asset('libraries\bower_components\fullcalendar\css\fullcalendar.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('libraries\bower_components\fullcalendar\css\fullcalendar.print.css') }}" media='print'>   
    <meta name="csrf-token" content="{{ csrf_token() }}">     
 <div class="pcoded-content">
    <div class="pcoded-inner-content">
        <div class="main-body">
            <div class="page-wrapper">
                <div class="page-body">
                                        <div class="card">
                                            <div class="card-header">
                                                <h5>Event Calender</h5>
                                                <div class="card-header-right">
                                                    <ul class="list-unstyled card-option">
                                                        <li><i class="feather icon-maximize full-card"></i></li>
                                                        <li><i class="feather icon-minus minimize-card"></i></li>
                                                        <li><i class="feather icon-trash-2 close-card"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="card-block">
                                                <div class="row">
                                                   
                                                    <div class="col-xl-12 col-md-12">
                                                        <div id='calendar'></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- <div class="page-error">
                                        <div class="card text-center">
                                            <div class="card-block">
                                                <div class="m-t-10">
                                                    <i class="icofont icofont-warning text-white bg-c-yellow"></i>
                                                    <h4 class="f-w-600 m-t-25">Not supported</h4>
                                                    <p class="text-muted m-b-0">Full Calender not supported in this device</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div> -->

            </div>

        </div>
    </div>
 </div>
<x-footer/> 
    <!-- calender js -->
    <!-- <script type="text/javascript" src="{{ asset('libraries\bower_components\moment\js\moment.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('libraries\bower_components\fullcalendar\js\fullcalendar.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('libraries\assets\pages\full-calender\calendar.js') }}"></script> -->


<script type="text/javascript" src="{{ asset('libraries\bower_components\moment\js\moment.min.js') }}"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.js"></script>
    <script>
$(document).ready(function () {   

var SITEURL = "{{ url('/') }}"; 
var token = $('meta[name="csrf-token"]').attr('content');
$.ajaxSetup({
    headers: {
    'X-CSRF-TOKEN':token
    }
});  

var calendar = $('#calendar').fullCalendar({
                    editable: true,
                    events: SITEURL + "/event",
                    displayEventTime: false,
                    editable: true,
                    eventRender: function (event, element, view) 
                    {
                        if (event.allDay === 'true') {
                                event.allDay = true;
                        } else {
                                event.allDay = false;
                        }
                    },
                    selectable: true,
                    selectHelper: true,
                    select: function (start, end, allDay) {
                        var title = prompt('Event Title:');
                        if (title) {
                            var start = $.fullCalendar.formatDate(start, "Y-MM-DD");
                            var end = $.fullCalendar.formatDate(end, "Y-MM-DD");
                            $.ajax({
                                url: SITEURL + "/event_save",
                                data: {
                                    title: title,
                                    start: start,
                                    end: end,
                                    type: 'add'
                                },
                                type: "POST",
                                success: function (data) 
                                   {
                                    alert("Event Created Successfully");
                                    calendar.fullCalendar('renderEvent',
                                        {
                                            id: data.id,
                                            title: title,
                                            start: start,
                                            end: end,
                                            allDay: allDay
                                        },true); 
                                    calendar.fullCalendar('unselect');
                                }
                            });
                        }
                    },

                    eventDrop: function (event, delta) {
                        var start = $.fullCalendar.formatDate(event.start, "Y-MM-DD");
                        var end = $.fullCalendar.formatDate(event.end, "Y-MM-DD");
                        $.ajax({
                            url: SITEURL + '/event_save',
                            data: {
                                title: event.title,
                                start: start,
                                end: end,
                                id: event.id,
                                type: 'update'
                            },

                            type: "POST",

                            success: function (response) {

                                displayMessage("Event Updated Successfully");

                            }

                        });

                    },

                    eventClick: function (event) {

                        var deleteMsg = confirm("Do you really want to delete?");

                        if (deleteMsg) {

                            $.ajax({
                                type: "POST",
                                url: SITEURL + '/event_save',
                                data: {
                                        id: event.id,
                                        type: 'delete'
                                },
                                success: function (response) {
                                    calendar.fullCalendar('removeEvents', event.id);
                                    displayMessage("Event Deleted Successfully");

                                }

                            });

                        }

                    }

 

                });

 

});

 

function displayMessage(message) {

    toastr.success(message, 'Event');

} 

  

</script>
