<x-header/>
<x-sidebar/>           
 <div class="pcoded-content">
    <div class="pcoded-inner-content">
        <div class="main-body">
            <div class="page-wrapper">

                <div class="page-body">
                    <div class="row">
                              <!-- ticket and update start -->
                                            <div class="col-xl-12 col-md-12">
                                                <div class="card table-card">
                                                    <div class="card-header">
                                                        <h5>List Holiday</h5>
                                                       <!--  <div class="card-header-right">
                                                            <ul class="list-unstyled card-option">
                                                                <li><i class="fa fa fa-wrench open-card-option"></i></li>
                                                                <li><i class="fa fa-window-maximize full-card"></i></li>
                                                                <li><i class="fa fa-minus minimize-card"></i></li>
                                                                <li><i class="fa fa-refresh reload-card"></i></li>
                                                                <li><i class="fa fa-trash close-card"></i></li>
                                                            </ul>
                                                        </div> -->
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="table-responsive">
                                                            <table class="table table-hover table-borderless">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Day</th>
                                                                        <th>Date</th>
                                                                        <th>Title</th>
                                                                        <th>Description</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody> 
                                                                    @foreach($holidays as $holiday)
                                                                    <tr>
                                                                        <td><label class="label label-success">{{date('l', strtotime($holiday->start))}}</label></td>
                                                                        <td>{{date('d-m-Y', strtotime($holiday->start))}} </td>
                                                                        <td>{{$holiday->title}}</td>
                                                                        <td>{{$holiday->description}}</td>
                                                                    </tr>
                                                                     @endforeach
                                                                   
                                                                </tbody>
                                                            </table>
                                                            <div class="text-right m-r-20">
                                                                <a href="#!" class=" b-b-primary text-primary">View all Holiday</a>
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