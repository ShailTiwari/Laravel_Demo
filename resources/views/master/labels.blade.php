<x-header/>
<x-sidebar/>  

 <div class="z-depth-top-0 md-modal md-effect-11" id="modal-add">
    <div class="card md-content">
    <div class="card-header">
        <div class="card-header-left ">
            <h5>Create labels</h5>
        </div>
    </div>
        <form id="formAccountSettings" method="POST" action="{{ route('save_labels') }}" enctype="multipart/form-data">
          @csrf
            <div class="md-content">
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

<div class="z-depth-top-0 md-modal md-effect-11" id="modal-edit">
    <div class="card md-content">
      <div class="card-header">
        <div class="card-header-left ">
            <h5>Update labels</h5>
        </div>
    </div>
         <form id="formAccountSettings" method="POST" action="{{ route('update_labels') }}" enctype="multipart/form-data">
          @csrf
            <div class="md-content">
              <div class="col mb-0">
                <label for="emailLarge" class="form-label">Title*</label>
                <input  name="id"  type="hidden" id="updateid" class="form-control"/>
                <input required name="title"  type="text" id="updatetitle" class="form-control"/>
              </div>

              <div class="col mb-0">
                <label for="emailLarge" class="form-label">Description*</label>
                <textarea required name="description" class="form-control" id="updatedescription" rows="3"></textarea>
              </div>

                <div class="row g-2">
                    <div class="col mb-0">
                      <label for="emailLarge" class="form-label">Status</label> 
                      <select  name="isactive"  id="updatestatus" class="form-control form-control-primary" >
                          <option value="1" >Active</option>     
                          <option value="0" >InActive</option>     
                        </select>
                    </div>
                  </div>
         
              <div class="modal-footer">
                  <button type="button" class="btn btn-round btn-sm btn-default waves-effect  md-close" >Close</button>
                  <button type="submit" class="btn btn-round btn-sm btn-primary waves-effect waves-light ">Update</button>
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
                    <meta name="csrf-token" content="{{ csrf_token() }}">
                                    <div class="row">
                              <!-- ticket and update start -->
                                            <div class="col-xl-12 col-md-12">
                                                <div class="card table-card">
                                                    <div class="card-header">
                                                        <h5>List Labels</h5>
                                                        <a data-modal="modal-add" class="btn btn-round btn-sm btn-success f-right select_activity   waves-effect  md-trigger">Add</a>
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
                                                                            <a  data-id="{{ $flag->id }}"  data-modal="modal-edit" class="btn  btn-round btn-sm btn-warning f-left select_activity   waves-effect  md-trigger">Edit</a>
                                                                       </td>
                                                                    </tr>
                                                                     @endforeach
                                                                   
                                                                </tbody>
                                                            </table>
                                                            <div class="text-right m-r-20">
                                                                <!-- <a href="#!" class=" b-b-primary text-primary">View all Labels</a> -->
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
<x-footer/>  <script>
            $(function () {
                     // ON SELECTING ROW
                $(".select_activity").click(function () 
                {
                    $("#updateid").val();
                    $("#updatetitle").val();
                    $("#updatedescription").val();
                    $("#updatestatus").val();

                    var SITEURL = "{{ url('/') }}"; 
                    var token = $('meta[name="csrf-token"]').attr('content');
                    var id = $(this).data('id');
                    $.ajax({
                            type: "POST",
                            dataType: "json",
                            url: SITEURL + "/get_labels_info",
                            data: {
                               id: id,
                              _token: token
                            },
                            success: function(response) {
                                if (response.status == "success") {
                                //  console.log(response.description);
                                } 
                                else {
                                //  console.log(response.description);
                                  $("#updateid").val(response.id);
                                  $("#updatetitle").val(response.title);
                                  $("#updatedescription").val(response.description);
                                  $('#updatestatus').val(response.isactive);

                                }
                            }
                          });
                });
            });
        </script>

 































