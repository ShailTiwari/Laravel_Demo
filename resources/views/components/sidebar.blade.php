
            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    <nav class="pcoded-navbar">
                        <div class="pcoded-inner-navbar main-menu">
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="active pcoded-trigger">
                                    <a href="{{ route('dashboard.index') }}">
                                        <span class="pcoded-micon"><i class="feather icon-home"></i></span>
                                        <span class="pcoded-mtext">Dashboard</span>
                                        <span class="pcoded-badge label label-danger">Home</span>
                                    </a>
                                   
                                </li>
                                <li class="active pcoded-trigger">
                                    <a href="{{ route('event.index') }}">
                                        <span class="pcoded-micon"><i class="feather icon-aperture rotate-refresh"></i><b>A</b></span>
                                        <span class="pcoded-mtext">Event</span>
                                        <span class="pcoded-badge label label-warning">Calender</span>
                                    </a>
                                   
                                </li>


                                <li class="active pcoded-trigger">
                                    <a href="{{ route('event.create') }}">
                                        <span class="pcoded-micon"><i class="feather icon-calendar"></i><b>A</b></span>
                                        <span class="pcoded-mtext">Holiday</span>
                                        <span class="pcoded-badge label label-warning">Calender</span>
                                    </a>
                                   
                                </li>


                                
                                 <div class="pcoded-navigatio-lavel">Project</div>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-package"></i></span>
                                        <span class="pcoded-mtext">Project</span>
                                        
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="{{ route('project.index') }}">
                                                <span class="pcoded-mtext">list</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="{{ route('project.create') }}">
                                                <span class="pcoded-mtext">Create</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li> 
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-layers"></i></span>
                                        <span class="pcoded-mtext">Activity</span>
                                        
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="{{ route('activity.index') }}">
                                                <span class="pcoded-mtext">list</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="{{ route('activity.create') }}">
                                                <span class="pcoded-mtext">Create</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>


                                  




                            </ul>
                            <div class="pcoded-navigatio-lavel">Master</div>
                            <ul class="pcoded-item pcoded-left-item">
                                 <li class="active pcoded-trigger">
                                    <a href="{{ route('users.index') }}">
                                        <span class="pcoded-micon"><i class="feather icon-home"></i></span>
                                        <span class="pcoded-mtext">Users</span>
                                        <span class="pcoded-badge label label-danger">Admin</span>
                                    </a>
                                   
                                </li>

                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-sidebar"></i></span>
                                        <span class="pcoded-mtext">Role</span>
                                        <span class="pcoded-badge label label-warning">Admin</span>
                                    </a>
                                    <ul class="pcoded-submenu">                                       
                                        <li class=" ">
                                            <a href="{{ route('roles.index') }}">
                                                <span class="pcoded-mtext">Role</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="{{ route('roles.create') }}" >
                                                <span class="pcoded-mtext">Create</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>                                
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-box"></i></span>
                                        <span class="pcoded-mtext">Website Setting</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="{{ route('setting.index') }}">
                                                <span class="pcoded-mtext">Settings</span>
                                            </a>
                                        </li>
                                       
                                        <li class=" ">
                                            <a href="other.htm">
                                                <span class="pcoded-mtext">Banners</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                 <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-package"></i></span>
                                        <span class="pcoded-mtext">Masters</span>
                                        <span class="pcoded-badge label label-warning">Admin</span>
                                    </a>
                                    <ul class="pcoded-submenu">                                       
                                        <li class=" ">
                                            <a href="{{ route('flags') }}">
                                                <span class="pcoded-mtext">Flags</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="{{ route('setting.index') }}" >
                                                <span class="pcoded-mtext">Labels</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="{{ route('setting.index') }}" >
                                                <span class="pcoded-mtext">Task Status</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="{{ route('setting.index') }}" >
                                                <span class="pcoded-mtext">Issue Type</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>  
                            </ul>
                            <div class="pcoded-navigatio-lavel">Support</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="">
                                    <a href="#">
                                        <span class="pcoded-micon"><i class="feather icon-monitor"></i></span>
                                        <span class="pcoded-mtext">Documentation</span>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="#" >
                                        <span class="pcoded-micon"><i class="feather icon-help-circle"></i></span>
                                        <span class="pcoded-mtext">Submit Issue</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>