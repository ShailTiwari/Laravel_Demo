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
                                    <h5>Role List</h5>
                                    <span class="text-muted"> <a href="{{ route('dashboard.index') }}" >Home</a> Back.</span>
                                    
                                    <div class="card-header-right">
                                       <!--  <ul class="list-unstyled card-option">
                                            <li><i class="feather icon-maximize full-card"></i></li>
                                            <li><i class="feather icon-minus minimize-card"></i></li>
                                            <li><i class="feather icon-trash-2 close-card"></i></li>
                                        </ul> -->
                                    </div>
                                </div>
                                <div class="card-block">
                                       <table class="table table-bordered">
                                          <tr>
                                             <th>No</th>
                                             <th>Name</th>
                                             <th width="280px">Action</th>
                                          </tr>
                                            @foreach ($roles as $key => $role)
                                            <tr>
                                                <td>{{ ++$i }}</td>
                                                <td>{{ $role->name }}</td>
                                                <td>
                                                    <a class="btn btn-round btn-sm btn-info" href="{{ route('roles.show',$role->id) }}">Show</a>
                                                    <a class="btn btn-round btn-sm btn-primary" href="{{ route('roles.edit',$role->id) }}">Edit</a>
                                                  
                                                        {!! Form::open(['method' => 'DELETE','route' => ['roles.destroy', $role->id],'style'=>'display:inline']) !!}
                                                            {!! Form::submit('Delete', ['class' => 'btn btn-round btn-sm btn-danger']) !!}
                                                        {!! Form::close() !!}
                                                   
                                                </td>
                                            </tr>
                                            @endforeach
                                        </table>
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






























