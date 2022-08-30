<x-header/>

<x-sidebar/>  
<x-app-layout>         
 <div class="pcoded-content">
    <div class="pcoded-inner-content">
        <div class="main-body">
            <div class="page-wrapper">   

                <div class="page-body">
                    <div class="row">
                                            <div class="col-sm-12">
                                                <!-- Draggable default card start -->
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>Add Project details</h5>

                                                    </div>
                                                    <div class="card-block">
                                                        <form id="formAccountSettings" method="POST"action="{{ route('save_project') }}" enctype="multipart/form-data">
                                                            @csrf
                                                        <div class="modal-body">  

                            <div class="d-flex align-items-start align-items-sm-center gap-4">
                        <img
                        id="preview-image"
                          src="{{ url('images/project/1.png') }}"
                          alt="user-avatar"
                          class="d-block rounded"
                          height="100"
                          width="100"

                        />
                        <div class="button-wrapper">
                          <label for="upload" class="me-2 mb-8" tabindex="0">
                            <span class="d-none d-sm-block">Project Icon</span>
                            <i class="bx bx-upload d-block d-sm-none"></i>
                            <input
                              type="file"
                              id="image"
                              class="account-file-input"
                              name="image"
                              accept="image/png, image/jpeg"
                            />
                          </label>
                          <p class="text-muted mb-0">Allowed JPG, GIF or PNG. Max size of 800K</p>
                        </div>
                      </div>




                        <div class="row">
                          <div class="mb-6 col-md-6">
                            <label for="firstName" class="form-label">Name*</label> 
                            <input required class="form-control" type="text" id="title" name="title" value="" autofocus />
                          </div>
                          <div class="mb-6 col-md-6">
                            <label for="lastName" class="form-label">Key*</label>
                            <input required class="form-control" type="text" name="key" id="key" value="" />
                          </div>

                          <div class="mb-12 col-md-12">
                            <label for="description" class="form-label">Description*</label>
                           <textarea  name="description" class="form-control" id="description" rows="3"></textarea>
                          </div>
                         


                          <div class="mb-6 col-md-6">
                            <label class="form-label" for="category">Category</label>
                            <select id="category" name="category" class="form-control select2 form-select">
                               @foreach($project_category as $category)
                                <option value="{{$category->id}}" >{{$category->title}}</option>
                               @endforeach
                            </select>
                          </div>

                           <div class="mb-6 col-md-6">
                            <label class="form-label" for="lead">Project lead</label>
                            <select id="lead" name="lead" class="form-control select2 form-select">
                               @foreach($assignee as $lead)
                                <option value="{{$lead->id}}" >{{$lead->name}}</option>
                               @endforeach
                            </select>
                          </div>

                           <div class="mb-6 col-md-6">
                            <label class="form-label" for="default_assigned">Default assignee</label>
                            <select id="default_assigned" name="default_assigned" class="form-control select2 form-select">
                              <option value="0">Unassigneed</option>
                              @foreach($assignee as $lead)
                                <option value="{{$lead->id}}" >{{$lead->name}}</option>
                               @endforeach
                            </select>
                          </div>
                            <div class="mb-12 col-md-12 form-check">
                              <input class="form-check-input" type="checkbox" id="terms-conditions" name="terms" />
                              <label class="form-check-label" for="terms-conditions">
                                Connect repositories, documents, and more
                                <a href="javascript:void(0);">Sync your team's work from other tools with this project for better visibility, access, and automation.</a>
                              </label>
                            </div>

                             <div class="modal-footer">
                              <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                Close
                              </button>
                              <button type="submit" class="btn btn-primary">Create</button>
                            </div>
                        </div>
                  </div>
              </form>
                                                    </div>
                                                </div>
                                                <!-- Draggable default card start -->
                                            </div>
                                        </div>
                </div>





            </div>
        </div>
    </div>
 </div>
</x-app-layout>
<x-footer/> 






























