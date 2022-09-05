<x-header/>
<x-sidebar/>  

 <div class="z-depth-top-0 md-modal md-effect-11" id="modal-add">
    <div class="card md-content">
    <div class="card-header">
        <div class="card-header-left ">
            <h5>New Banner </h5>
        </div>
    </div>
        <form id="formAccountSettings" method="POST" action="{{ route('save_banner') }}" enctype="multipart/form-data">
          @csrf
            <div class="md-content">

                
            <div class="col mb-0">
                <label for="emailLarge" class="form-label">Banner Type*</label>
                 <select name="banner_masterid" class="form-control form-control-primary" id="banner_masterid" aria-label="Default select example">
                   @foreach($banner_masters as $banner_master)
                    <option value="{{$banner_master->id}}" >{{$banner_master->title}}</option>                          
                   @endforeach
                  </select>
              </div> 
                

             <div class="col mb-0">
                <label for="emailLarge" class="form-label">Title*</label>
                <input required name="title"  type="text" id="title" class="form-control"/>
              </div>

              

              <div class="col mb-0">
                <label for="emailLarge" class="form-label">Description*</label>
                <textarea required name="description" class="form-control" id="description" rows="3"></textarea>
              </div>

                <div class="col mb-0">
                <img src="" height="100" width="100" alt="Banner-img" class="img-fluid"  id="uploadedAvatar"/>
                <label for="upload" class="btn btn-primary " tabindex="0">
                    <span class="d-none d-sm-block">Upload new Logo</span>
                    <i class="bx bx-upload d-block d-sm-none"></i>
                    <input name="logo" type="file" id="upload" class="account-file-input" hidden accept="image/png, image/jpeg"/>
                </label>
              </div>


               <!-- <div class="col mb-0">
                <img src="" class="img-fluid"   id="uploadedAvatarr"/>
                <label for="uploadd" class="btn btn-primary" tabindex="0">
                    <span class="d-none d-sm-block">Upload Invoice Logo</span>
                    <i class="bx bx-upload d-block d-sm-none"></i>
                    <input name="invoice_logo" type="file" id="uploadd" class="account-file-input" hidden accept="image/png, image/jpeg"/>
                </label>
                 <button type="button" class="btn btn-outline-secondary account-image-reset">
                    <i class="bx bx-reset d-block d-sm-none"></i>
                    <span class="d-none d-sm-block">Reset</span>
                </button>
              </div> -->


         
              <div class="modal-footer">
                  <button type="button" class="btn btn-round btn-sm btn-default waves-effect  md-close" >Close</button>
                  <button type="submit" class="btn btn-round btn-sm btn-primary waves-effect waves-light ">Save</button>
              </div>
            </div>
        </form>
      </div>            
  </div>

<div class="modal-flex z-depth-top-0 md-modal md-effect-11" id="modal-edit">
    <div class="card md-content">
      <div class="card-header">
        <div class="card-header-left ">
            <h5>Update Banner </h5>
        </div>
    </div>
         <form id="formAccountSettings" method="POST" action="{{ route('update_banner') }}" enctype="multipart/form-data">
          @csrf
            <div class="md-content">
                 <div class="col mb-0"> 
                <label for="emailLarge" class="form-label">banner_master*</label>
                    <select name="banner_masterid" class="form-control form-control-primary" id="updatebanner_masterid" aria-label="Default select example">
                   @foreach($banner_masters as $banner_master)
                    <option value="{{$banner_master->id}}" >{{$banner_master->title}}</option>                          
                   @endforeach
                  </select>
                 </div>
                


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
            <div class="row">
                <div class="col mb-0">  
                <span>Uploaded Image </span>                  
                <div id="uploadedAvatarview"></div>
                 <img src="" class="img-fluid" height="100" width="100"   id="uploadedAvatarr"/>
                            <label for="uploadd" class="btn btn-primary me-2 mb-4" tabindex="0">
                                <span class="d-none d-sm-block">Upload New</span>
                                <i class="bx bx-upload d-block d-sm-none"></i>
                                <input name="invoice_logo" type="file" id="uploadd" class="account-file-input" hidden accept="image/png, image/jpeg"/>
                            </label>
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
                                                        <h5>List Banner</h5>
                                                        <a data-modal="modal-add" class="btn btn-round btn-sm btn-success f-right select_activity   waves-effect  md-trigger">Add</a>
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="table-responsive">
                                                            <table class="table table-hover table-borderless">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Type</th>
                                                                        <th>Image</th>
                                                                        <th>Title</th>
                                                                        <th>Description</th>
                                                                        <th>Action</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody> 
                                                                    @foreach($banners as $banner)
                                                                    <tr>
                                                                        <td><label class="label label-warning">{{$banner->type}}</label></td>
                                                                        <td><img src="{{ url('images/slider/'.$banner->banner) }}" alt="bammer" class="img-radius img-40 align-top m-r-15"></td>
                                                                        <td>{{substr($banner->title, 0,  20)}}</td>
                                                                        <td> <p class="text-muted m-b-0">{{substr($banner->description, 0, 30)}}</p>
                                                                            </td>
                                                                        <td>
                                                                            <a  data-id="{{ $banner->id }}"  data-modal="modal-edit" class="btn  btn-round btn-sm btn-warning f-left select_activity   waves-effect  md-trigger">Edit</a>
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
<x-footer/>  
  
<script type="text/javascript">
  $('#upload').change(function()
  {  
  console.log("aa");                           
  let reader = new FileReader();
  reader.onload = (e) => { 
    $('#uploadedAvatar').attr('src', e.target.result); 
  }
  reader.readAsDataURL(this.files[0]);                     
 });

     
      $('#uploadd').change(function()
  {                             
  let readerr = new FileReader();
  console.log("bb");
  readerr.onload = (e) => { 
    $('#uploadedAvatarr').attr('src', e.target.result); 
  }
  readerr.readAsDataURL(this.files[0]);                     
 });
</script>

<script>
            $(function () {
                     // ON SELECTING ROW
                $(".select_activity").click(function () 
                {
                    $("#updateid").val();
                    $("#updatetitle").val();
                    $("#updatedescription").val();
                    $("#updatestatus").val();
                    $("#uploadedAvatar").val();

                    var SITEURL = "{{ url('/') }}"; 
                    var Slider_img = "{{ url('/images/slider/') }}"; 
                    var token = $('meta[name="csrf-token"]').attr('content');
                    var id = $(this).data('id');
                    $.ajax({
                            type: "POST",
                            dataType: "json",
                            url: SITEURL + "/get_banner_info",
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
                                  $("#updatebanner_masterid").val(response.module_id);
                                  $("#updatetitle").val(response.title);
                                  $("#updatedescription").val(response.description);
                                  $('#updatestatus').val(response.isactive);
                                  $('#uploadedAvatarview').append('<img  id="uploadedAvatarview" class="img-fluid" height="50" width="50" src="'+Slider_img +'/'+ response.banner + '" />');

                                }
                            }
                          });
                });
            });
        </script>

 































