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
                              <!-- ticket and update start -->
                                            <div class="col-xl-12 col-md-12">
                                                <div class="card table-card">
                                                    <div class="card-header">
                                                        <h5>List Flags</h5>
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="table-responsive">
                                                            <table class="table table-hover table-borderless">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Status</th>
                                                                        <th>Title</th>
                                                                        <th>Description</th>
                                                                        <th>Action</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody> 
                                                                    @foreach($flags as $flag)
                                                                    <tr>
                                                                        <td><label class="label label-warning">{{$flag->isactive}}</label></td>
                                                                        <td>{{$flag->title}}</td>
                                                                        <td>{{$flag->description}}</td>
                                                                        <td>
                                                 <a class="btn btn-round btn-sm btn-info" href="{{ route('users.show',$flag->id) }}">Show</a>
                                                 <a class="btn btn-round btn-sm btn-primary" href="{{ route('users.edit',$flag->id) }}">Edit</a>
                                                                       </td>
                                                                    </tr>
                                                                     @endforeach
                                                                   
                                                                </tbody>
                                                            </table>
                                                            <div class="text-right m-r-20">
                                                                <a href="#!" class=" b-b-primary text-primary">View all flag</a>
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
</x-app-layout>
<x-footer/> 

 































