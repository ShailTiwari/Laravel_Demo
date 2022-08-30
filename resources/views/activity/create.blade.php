<x-header/>

          <link rel="stylesheet" href="{{ asset('css/app.css') }}">
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
                                                        <h5>Create Activity</h5>

                                                    </div>
                                                    <div class="card-block">
             <form id="formAccountSettings" method="POST" action="{{ route('create_activity') }}" enctype="multipart/form-data">
          @csrf
         <div class="modal-body">  
           <div class="card-block">
            <div class="row g-2">
              <div class="col mb-0">
                <label for="emailLarge" class="form-label">Project*</label>
                 <select name="project" class="form-control form-control-primary" id="exampleFormControlSelect1" aria-label="Default select example">
                   @foreach($projects as $project)
                    <option value="{{$project->id}}" >{{$project->title}}</option>                          
                   @endforeach
                  </select>
              </div>

              <div class="col mb-0">
                <label for="dobLarge" class="form-label">Issue type*</label>
                 <select  name="type" class="form-control form-control-primary" id="exampleFormControlSelect1" aria-label="Default select example">
                   @foreach($issues as $issue)
                    <option value="{{$issue->id}}" >{{$issue->title}}</option>                          
                   @endforeach
                  </select>
              </div>
            </div>



            <div class="row">
              <div class="col mb-3">
                <label for="nameLarge" class="form-label">Summary*</label>
                <input required name="summary"  type="text" id="nameLarge" class="form-control" placeholder="Enter Summary" />
              </div>
            </div>
            
            <div class="row">
              <div class="col mb-3">
                <label for="nameLarge" class="form-label">Description*</label>
               <textarea required name="description" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
              </div>
            </div>


            <div class="row g-2">
              <div class="col mb-0">
                <label for="emailLarge" class="form-label">Assignee</label> 
                <select  name="assignee" class="form-control form-control-primary" id="exampleFormControlSelect1" aria-label="Default select example">
                   @foreach($assignee as $assign)
                    <option value="{{$assign->id}}" >{{$assign->name}}</option>                          
                   @endforeach
                  </select>
              </div>
              <div class="col mb-0">
                <label for="dobLarge" class="form-label">Reporter</label>
                <select  name="reporter" class="form-control form-control-primary" id="exampleFormControlSelect1" aria-label="Default select example">
                   @foreach($reporter as $report)
                    <option value="{{$report->id}}" > {{$report->name}} </option>                          
                   @endforeach
                  </select>
              </div>
            </div>
            <div class="row g-2">
              <div class="col mb-0">
                <label for="emailLarge" class="form-label">Labels</label> 
                <select  name="labels" class="form-control form-control-primary" id="exampleFormControlSelect1" aria-label="Default select example">
                   @foreach($labels as $label)
                    <option value="{{$label->id}}" >{{$label->title}}</option>                          
                   @endforeach
                  </select>
              </div>
              <div class="col mb-0">
                <label for="dobLarge" class="form-label">Flagged</label>
                <select  name="flagged" class="form-control form-control-primary" id="exampleFormControlSelect1" aria-label="Default select example">
                   @foreach($flagges as $flagge)
                    <option value="{{$flagge->id}}" >{{$flagge->title}}</option>                          
                   @endforeach
                  </select>
              </div>
            </div>
          </div>
           <div class="modal-footer">
            <button type="button" class="btn btn-outline-secondary"  data-dismiss="modal">
              Close
            </button>
            <button type="submit" class="btn btn-primary">Create</button>
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