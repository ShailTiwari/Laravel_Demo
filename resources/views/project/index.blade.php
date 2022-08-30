<x-header/>
<x-sidebar/>  
<x-app-layout>         
 <div class="pcoded-content">
    <div class="pcoded-inner-content">
        <div class="main-body">
            <div class="page-wrapper">   

                <div class="page-body">
                    <meta name="csrf-token" content="{{ csrf_token() }}">
                                    <div class="row">
                                           @foreach($projects as $project)
                                          <!--  
                                            <div class="col-lg-12 col-xl-4">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5 class="card-header-text">{{$project->key}}</h5>

                                                    </div>
                                                    <div  id="items-{{$project->id}}" class="card-block ">
                                                          <div  class="bg-c-yellow">
                                                           <div class="col-md-12 m-b-20">
                                                                <div class="card-sub sortable-moves">
                                                                    <img  class="img-fluid p-absolute" src="libraries\assets\images\card-block\card1.jpg" alt="Card image cap">
                                                                    <div class="card-block">
                                                                        <h4 class="card-title">{{ $project->title }}</h4>
                                                                        <p class="card-text">{{ $project->description }}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                              -->

                                            <div class="col-md-12 col-xl-4 ">
                                                <div class="card app-design user-widget-card">
                                                    <div class="card-block">
                                                        <button class="btn btn-primary f-right">{{ $project->remarks }}</button>
                                                        <h6 class="f-w-400 text-muted">{{ $project->title }}</h6>
                                                        <p class="text-c-blue f-w-400">{{ $project->key }}</p>
                                                        <p class="text-muted">{{ $project->description }}</p>
                                                        <div class="design-description d-inline-block m-r-40">
                                                            <h3 class="f-w-400">678</h3>
                                                            <p class="text-muted">Question</p>
                                                        </div>
                                                        <div class="design-description d-inline-block">
                                                            <h3 class="f-w-400">1,452</h3>
                                                            <p class="text-muted">Comments</p>
                                                        </div>
                                                        <div class="team-box p-b-20">
                                                            <p class="d-inline-block m-r-20 f-w-400">Team</p>
                                                            <div class="team-section d-inline-block">
                                                                <a href="#! "><img src="libraries\assets\images\avatar-2.jpg" data-toggle="tooltip" title="Josephin Doe" alt=" "></a>
                                                                <a href="#! "><img src="libraries\assets\images\avatar-3.jpg" data-toggle="tooltip" title="Lary Doe" alt=" " class="m-l-5 "></a>
                                                                <a href="#! "><img src="libraries\assets\images\avatar-4.jpg" data-toggle="tooltip" title="Alia" alt=" " class="m-l-5 "></a>
                                                                <a href="#! "><img src="libraries\assets\images\avatar-2.jpg" data-toggle="tooltip" title="Suzen" alt=" " class="m-l-5 "></a>
                                                            </div>
                                                        </div>
                                                        <div class="progress-box">
                                                            <p class="d-inline-block m-r-20 f-w-400">Progress</p>
                                                            <div class="progress d-inline-block">
                                                                <div class="progress-bar bg-c-blue" style="width:78% "><label>78%</label></div>
                                                            </div>
                                                        </div>
                                                        <a href="{{ route('activity.index') }}" class="more-info">Activity Info</a>
                                                    </div>
                                                </div>
                                            </div>
                                          
                                       @endforeach
                                      </div>
                   
                </div>
        </div>
    </div>
 </div>
</x-app-layout>
<x-footer/> 

 































