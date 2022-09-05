<x-header/>
<x-sidebar/>           
 <div class="pcoded-content">
    <div class="pcoded-inner-content">
        <div class="card main-body">
            <div class="page-wrapper">
                <div class=" page-body">
                     <form id="formAccountSettings" method="POST"action="{{ route('update_setting') }}"  enctype="multipart/form-data">
                          @csrf
                        <div class="row">

                           <div class="mb-3 col-md-6"> 
                            <img  height="100" width="100"  src="{{ url('images/'.$member['logo']) }}" alt="user-avatar" class="img-fluid"  id="uploadedAvatar"/>
                            <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                                <span class="d-none d-sm-block">Upload new Logo</span>
                                <i class="bx bx-upload d-block d-sm-none"></i>
                                <input name="logo" type="file" id="upload" class="account-file-input" hidden accept="image/png, image/jpeg"/>
                            </label>
                             <button type="button" class="btn btn-outline-secondary account-image-reset mb-4">
                                <i class="bx bx-reset d-block d-sm-none"></i>
                                <span class="d-none d-sm-block">Reset</span>
                            </button>
                          </div>


                          <div class="mb-3 col-md-6"> 
                            <img  height="100" width="100"  src="{{ url('images/'.$member['invoice_image']) }}" class="img-fluid"   id="uploadedAvatarr"/>
                            <label for="uploadd" class="btn btn-primary me-2 mb-4" tabindex="0">
                                <span class="d-none d-sm-block">Upload Invoice Logo</span>
                                <i class="bx bx-upload d-block d-sm-none"></i>
                                <input name="invoice_logo" type="file" id="uploadd" class="account-file-input" hidden accept="image/png, image/jpeg"/>
                            </label>
                             <button type="button" class="btn btn-outline-secondary account-image-reset mb-4">
                                <i class="bx bx-reset d-block d-sm-none"></i>
                                <span class="d-none d-sm-block">Reset</span>
                            </button>
                          </div>



                         
                          <div class="mb-3 col-md-6">
                            <label for="site_name" class="form-label">Site Name</label>
                            <input class="form-control" type="hidden" name="id" id="id" value="{{$member['id']}}" />
                            <input class="form-control" type="text" name="site_name" id="site_name" value="{{$member['site_name']}}" />
                          </div>


                          <div class="mb-3 col-md-6">
                            <label for="company_name" class="form-label">Company Name</label>
                            <input class="form-control" type="text" name="company_name" id="company_name" value="{{$member['company_name']}}" />
                          </div>


                          <div class="mb-3 col-md-6">
                            <label for="lastName" class="form-label">Company Sort Name</label>
                            <input class="form-control" type="text" name="sort_name" id="sort_name" value="{{$member['sort_name']}}" />
                          </div>

                          <div class="mb-3 col-md-6">
                            <label for="description" class="form-label">Company description</label>
                            <input class="form-control" type="text" name="description" id="description" value="{{$member['description']}}" />
                          </div>


                          <div class="mb-3 col-md-6">
                            <label for="pan_no" class="form-label">PAN No</label>
                            <input class="form-control" type="text" name="pan_no" id="pan_no" value="{{$member['pan_no']}}" />
                          </div>

                          <div class="mb-3 col-md-6">
                            <label for="gst_no" class="form-label">GSTN</label>
                            <input class="form-control" type="text" name="gst_no" id="gst_no" value="{{$member['gst_no']}}" />
                          </div>

                          <div class="mb-3 col-md-6">
                            <label for="est_info" class="form-label">Est. Info </label>
                            <input class="form-control" type="text" name="est_info" id="est_info" value="{{$member['est_info']}}" />
                          </div>

                          <div class="mb-3 col-md-6">
                            <label for="phone" class="form-label">phone</label>
                            <input class="form-control" type="text" name="phone" id="phone" value="{{$member['phone']}}" />
                          </div>

                          <div class="mb-3 col-md-6">
                            <label for="phone" class="form-label">Email</label>
                            <input class="form-control" type="text" name="email" id="email" value="{{$member['email']}}" />
                          </div>


                          <div class="mb-3 col-md-6">
                            <label for="gst_no" class="form-label">Owner Info</label>
                            <input class="form-control" type="text" name="owner" id="owner" value="{{$member['owner']}}" />
                          </div>
                        
                          <div class="mb-3 col-md-6">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" class="form-control" id="address" name="address" placeholder="Address" value="{{$member['address']}}" />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="state" class="form-label">State</label>
                            <input class="form-control" type="text" id="state" name="state"  value="{{$member['state']}}" />
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="zipCode" class="form-label">Zip Code</label>
                            <input  type="text" class="form-control" id="zipCode" name="zipCode" placeholder="" maxlength="6"  value="{{$member['zipCode']}}" />
                          </div>
                        <div class="mt-2">
                          <button type="submit" class="btn btn-primary me-2">Save changes</button>
                          <button type="reset" class="btn btn-outline-secondary">Cancel</button>
                        </div>
                      </form>
                    

                </div>
            </div>

            <div id="styleSelector">

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