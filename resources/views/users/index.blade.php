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
                                                        <h5>Users Management</h5>
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
                                                                         <th>No</th>
                                                                         <th>Name</th>
                                                                         <th>Roles</th>
                                                                         <th>Email</th>
                                                                         <th width="280px">Action</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody> 
                                                                   @foreach ($data as $key => $user)
                                            <tr>
                                                <td>{{ ++$i }}</td>
                                                <td>{{ $user->name }}</td>
                                                <td>{{ $user->email }}</td>
                                                <td>
                                                 @if(!empty($user->getRoleNames()))
                                                    @foreach($user->getRoleNames() as $v)
                                                     <label class="badge badge-success">{{ $v }}</label>
                                                    @endforeach
                                                 @endif
                                                </td>                                                
                                                <td>
                                                 <a class="btn btn-round btn-sm btn-info" href="{{ route('users.show',$user->id) }}">Show</a>
                                                 <a class="btn btn-round btn-sm btn-primary"  href="{{ route('users.edit',$user->id) }}">Edit</a>
                                                  {!! Form::open(['method' => 'DELETE','route' => ['users.destroy', $user->id],'style'=>'display:inline']) !!}
                                                  {!! Form::submit('Delete', ['class' => 'btn btn-round btn-sm btn-danger']) !!}
                                                  {!! Form::close() !!}                                                   
                                                </td>
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