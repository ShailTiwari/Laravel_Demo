<x-header/>
<x-sidebar/>  
 <div class="z-depth-top-0 md-modal md-effect-11" id="modal-add">
    <div class="card md-content">
    <div class="card-header">
        <div class="card-header-left ">
            <h5>Add Holiday</h5>
        </div>
    </div>
        <form id="formAccountSettings" method="POST" action="{{ route('save_holiday') }}" enctype="multipart/form-data">
          @csrf
            <div class="md-content">

              <div class="col mb-0">
                <label for="date" class="form-label">Date*</label>
                <input required name="start"  type="date" id="start" class="form-control"/>
              </div>

              <div class="col mb-0">
                <label for="emailLarge" class="form-label">Title*</label>
                <input required name="title"  type="text" id="title" class="form-control"/>
              </div>

              <div class="col mb-0">
                <label for="emailLarge" class="form-label">Description*</label>
                <textarea required name="description" class="form-control" id="description" rows="3"></textarea>
              </div>
         
              <div class="modal-footer">
                  <button type="button" class="btn btn-round btn-sm btn-default waves-effect  md-close" >Close</button>
                  <button type="submit" class="btn btn-round btn-sm btn-primary waves-effect waves-light ">Save</button>
              </div>
            </div>
        </form>
      </div>            
  </div>


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
                                                        <a data-modal="modal-add" class="btn btn-round btn-sm btn-success f-right select_activity   waves-effect  md-trigger">Add</a>
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
                                                                 {!! $holidays->links() !!}
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