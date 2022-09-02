<x-header/>
<x-sidebar/>         
 <div class="pcoded-content">
    <div class="pcoded-inner-content">
        <div class="main-body">
            <div class="page-wrapper">   

                <div class="page-body">
                    <div class="row">
                        <div class="col-xl-12 col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5>Show User Details</h5>
                                    <span class="text-muted"> <a href="{{ route('users.index') }}" >User List</a> Back.</span>
                                    
                                    <div class="card-header-right">
                                       <!--  <ul class="list-unstyled card-option">
                                            <li><i class="feather icon-maximize full-card"></i></li>
                                            <li><i class="feather icon-minus minimize-card"></i></li>
                                            <li><i class="feather icon-trash-2 close-card"></i></li>
                                        </ul> -->
                                    </div>
                                </div>
                                <div class="card-block">
                                    <div class="row">

                                             <div class="col-xl-12 col-md-12">
                                                <div class="card user-card-full">
                                                    <div class="row m-l-0 m-r-0">
                                                        <div class="col-sm-4 bg-c-lite-green user-profile">
                                                            <div class="card-block text-center text-white">
                                                                <div class="m-b-25">
                                                                    <img src="{{ asset('libraries/assets/images/logo.png') }}" class="img-radius" alt="User-Profile-Image">
                                                                </div>
                                                                <h6 class="f-w-600">{{ $user->name }}</h6>
                                                                <p> 
                                                                    @if(!empty($user->getRoleNames()))
                                                                     @foreach($user->getRoleNames() as $v)
                                                                     <label class="badge badge-success">{{ $v }}</label>
                                                                     @endforeach
                                                                    @endif
                                                                </p>

                                                                  <a class="btn btn-primary" href="{{ route('users.edit',$user->id) }}"><i class="feather icon-edit m-t-10 f-16"></i></a>
                                                                
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <div class="card-block">
                                                                <h6 class="m-b-20 p-b-5 b-b-default f-w-600">Information</h6>
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <p class="m-b-10 f-w-600">Email</p>
                                                                        <h6 class="text-muted f-w-400"><a href="" class="__cf_email__" data-cfemail="1379767d6a53747e727a7f3d707c7e">{{ $user->email }}</a></h6>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <p class="m-b-10 f-w-600">Phone</p>
                                                                        <h6 class="text-muted f-w-400"></h6>
                                                                    </div>
                                                                </div>
                                                                <!-- <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600">Projects</h6>
                                                                <div class="row">
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
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>





            </div>
        </div>
    </div>
 </div>
<x-footer/> 