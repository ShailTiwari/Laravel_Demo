<x-header/>
<x-sidebar/>           
 <div class="pcoded-content">
    <div class="pcoded-inner-content">
        <div class="main-body">
            <div class="page-wrapper">

                <div class="page-body">
                    <div class="row">
                        <!-- task, page, download counter  start -->
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-c-yellow update-card">
                                <div class="card-block">
                                    <div class="row align-items-end">
                                        <div class="col-8">
                                            <h4 class="text-white">{{$users_count}}</h4>
                                            <h6 class="text-white m-b-0">All Users</h6>
                                        </div>
                                        <div class="col-4 text-right">
                                            <canvas id="update-chart-1" height="50"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <!-- <p class="text-white m-b-0"><i class="feather icon-clock text-white f-14 m-r-10"></i>update : 2:15 am</p> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-c-green update-card">
                                <div class="card-block">
                                    <div class="row align-items-end">
                                        <div class="col-8">
                                            <h4 class="text-white">{{$projects}} +</h4>
                                            <h6 class="text-white m-b-0">Project Views</h6>
                                        </div>
                                        <div class="col-4 text-right">
                                            <canvas id="update-chart-2" height="50"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <!-- <p class="text-white m-b-0"><i class="feather icon-clock text-white f-14 m-r-10"></i>update : 2:15 am</p> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-c-pink update-card">
                                <div class="card-block">
                                    <div class="row align-items-end">
                                        <div class="col-8">
                                            <h4 class="text-white">{{$attendances}}</h4>
                                            <h6 class="text-white m-b-0">Attendances</h6>
                                        </div>
                                        <div class="col-4 text-right">
                                            <canvas id="update-chart-3" height="50"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <!-- <p class="text-white m-b-0"><i class="feather icon-clock text-white f-14 m-r-10"></i>update : 2:15 am</p> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-c-lite-green update-card">
                                <div class="card-block">
                                    <div class="row align-items-end">
                                        <div class="col-8">
                                            <h4 class="text-white">{{$activities}}</h4>
                                            <h6 class="text-white m-b-0">Activity created</h6>
                                        </div>
                                        <div class="col-4 text-right">
                                            <canvas id="update-chart-4" height="50"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                   <!--  <p class="text-white m-b-0"><i class="feather icon-clock text-white f-14 m-r-10"></i>update : 2:15 am</p> -->
                                </div>
                            </div>
                        </div>
                        <!-- task, page, download counter  end -->

                        <!--  sale analytics start -->
                        <div class="col-xl-9 col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5>Sales Analytics</h5>
                                    <div class="card-header-right">
                                        <ul class="list-unstyled card-option">
                                            <li><i class="feather icon-maximize full-card"></i></li>
                                            <li><i class="feather icon-minus minimize-card"></i></li>
                                            <li><i class="feather icon-trash-2 close-card"></i></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-block">
                                    <div id="sales-analytics" style="height: 265px;"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-12">
                            <div class="card user-card2">
                                <div class="card-block text-center">
                                    <h6 class="m-b-15">Attendence</h6>
                                    <div class="risk-rate">
                                        <span><b>5</b></span>
                                    </div>
                                    <h6 class="m-b-10 m-t-10">Manual</h6>
                                    <a href="#!" class="text-c-yellow b-b-warning">Change Your Attendence</a>
                                    <div class="row justify-content-center m-t-10 b-t-default m-l-0 m-r-0">
                                        <div class="col m-t-15 b-r-default">
                                            <h6 class="text-muted">Time</h6>
                                            <h6>10:30 AM</h6>
                                        </div>
                                        <div class="col m-t-15">
                                            <h6 class="text-muted">Date</h6>
                                            <h6>30th Sep</h6>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-warning btn-block p-t-15 p-b-15">Start</button>
                            </div>
                        </div>
                      

                        <!-- wather user -->
                        <div class="col-xl-6 col-md-12">
                            <div class="card user-activity-card">
                                                    <div class="card-header">
                                                        <h5>User Activity</h5>
                                                    </div>
                                                    <div class="card-block">
                                                         @foreach($user_logs as $logs)
                                                        <div class="row m-b-25">
                                                            <div class="col-auto p-r-0">
                                                                <div class="u-img">
                                                                    <!-- <img src="{{ asset('libraries/assets/images/logo.png') }}" alt="user" class="img-radius cover-img"> -->
                                                                    <img src="{{ asset('libraries/assets/images/logo.png') }}" alt="user image" class="img-radius profile-img">
                                                                </div>
                                                            </div>
                                                            <div class="col">
                                                                <h6 class="m-b-5">{{$logs->title}}</h6>
                                                                <p class="text-muted m-b-0">{{$logs->description}}.</p>
                                                                <p class="text-muted m-b-0"><i class="feather icon-clock m-r-10"></i>{{$currentTime->diffInMinutes($logs->created_at)}} min ago</p>
                                                            </div>
                                                        </div>
                                                        @endforeach

                                                        <div class="text-center">
                                                            <a href="#!" class="b-b-primary text-primary">View all</a>
                                                        </div>
                                                    </div>
                                                </div>
                        </div>

                        <div class="col-xl-6 col-md-12">
                            <div class="card user-card-full">
                                <div class="row m-l-0 m-r-0">
                                    <div class="col-sm-4 bg-c-lite-green user-profile">
                                        <div class="card-block text-center text-white">
                                            <div class="m-b-25">
                                                <img src="{{ asset('libraries/assets/images/avatar-4.jpg') }}" class="img-radius" alt="User-Profile-Image">
                                            </div>
                                            <h6 class="f-w-600">{{ Auth::user()->name }}</h6>
                                            <p>{{ Auth::user()->role }}</p>
                                            <a href="{{ route('profile.show') }}"><i class="feather icon-edit m-t-10 f-16"></i></a>
                                            
                                            
                                        </div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="card-block">
                                            <h6 class="m-b-20 p-b-5 b-b-default f-w-600">Information</h6>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">Email</p>
                                                    <h6 class="text-muted f-w-400"><a href="" class="__cf_email__" data-cfemail="3a505f54437a5d575b535614595557">{{ Auth::user()->email }}</a></h6>
                                                </div>
                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">Phone</p>
                                                    <h6 class="text-muted f-w-400"></h6>
                                                </div>
                                            </div>
                                            <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600">Projects</h6>
                                            <!-- <div class="row">
                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">Recent</p>
                                                    <h6 class="text-muted f-w-400">Guruable Admin</h6>
                                                </div>
                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">Most Viewed</p>
                                                    <h6 class="text-muted f-w-400">Able Pro Admin</h6>
                                                </div>
                                            </div> -->
                                            <ul class="social-link list-unstyled m-t-40 m-b-10">
                                                <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="facebook"><i class="feather icon-facebook facebook" aria-hidden="true"></i></a></li>
                                                <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="twitter"><i class="feather icon-twitter twitter" aria-hidden="true"></i></a></li>
                                                <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="instagram"><i class="feather icon-instagram instagram" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- wather user -->

                        <!-- social download  start -->
                       

                    </div>
                </div>
            </div>

            <div id="styleSelector">

            </div>
        </div>
    </div>
 </div>
<x-footer/> 