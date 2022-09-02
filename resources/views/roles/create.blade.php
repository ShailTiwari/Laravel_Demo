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
                                    <h5>Create New Role</h5>
                                    <span class="text-muted"> <a href="{{ route('roles.index') }}" target="_blank">Back</a> Home.</span>
                                     @if (count($errors) > 0)
                                            <div class="alert alert-danger">
                                                <strong>Whoops!</strong> There were some problems with your input.<br><br>
                                                <ul>
                                                @foreach ($errors->all() as $error)
                                                    <li>{{ $error }}</li>
                                                @endforeach
                                                </ul>
                                            </div>
                                        @endif
                                    <div class="card-header-right">
                                       <!--  <ul class="list-unstyled card-option">
                                            <li><i class="feather icon-maximize full-card"></i></li>
                                            <li><i class="feather icon-minus minimize-card"></i></li>
                                            <li><i class="feather icon-trash-2 close-card"></i></li>
                                        </ul> -->
                                    </div>
                                </div>
                                <div class="card-block">
                                       {!! Form::open(array('route' => 'roles.store','method'=>'POST')) !!}
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <div class="form-group">
                                                    <strong>Name:</strong>
                                                    {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                                <div class="form-group">
                                                    <strong>Permission:</strong>
                                                    <br/>
                                                    @foreach($permission as $value)
                                                        <label>{{ Form::checkbox('permission[]', $value->id, false, array('class' => 'name')) }}
                                                        {{ $value->name }}</label>
                                                    <br/>
                                                    @endforeach
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 text-right  ">
                                                <button type="submit" class="inline-flex items-center px-4 py-2 bg-gray-800 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 active:bg-gray-900 focus:outline-none focus:border-gray-900 focus:ring focus:ring-gray-300 disabled:opacity-25 transition">Submit</button>
                                            </div>
                                        </div>
                                        {!! Form::close() !!}
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
















