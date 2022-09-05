<x-header/>
<x-sidebar/>
  <div class="md-modal md-effect-11" id="modal-11">
    <div class="card md-content">
      <h5>Create Activity</h5> 
        <form id="formAccountSettings" method="POST" action="{{ route('create_activity') }}" enctype="multipart/form-data">
          @csrf
         <div class="md-content">
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
              <button type="button" class="btn btn-default waves-effect  md-close" >Close</button>
              <button type="submit" class="btn btn-primary waves-effect waves-light ">Save</button>
          </div>
         </div>
        </form>
      </div>            
  </div>




    <div class="md-modal md-effect-11" id="modal-edit">
    <div class="card md-content">
      <h5>Edit Activity</h5> 
        <form id="formAccountSettings" method="POST" action="{{ route('update_activity') }}" enctype="multipart/form-data">
          @csrf
         <div class="md-content">
           <div class="card-block">
            <div class="row g-2">
                    <div class="col mb-0">
                      <label for="emailLarge" class="form-label">Project*</label>
                      <input type="hidden" name="id" id="id" value="">
                       <select name="project" id="project" class="form-control form-control-primary"  aria-label="Default select example">
                         @foreach($projects as $project)
                          <option value="{{$project->id}}" >{{$project->title}}</option>                          
                         @endforeach
                        </select>
                    </div>

                    <div class="col mb-0">
                      <label for="dobLarge" class="form-label">Issue type*</label>
                       <select  name="type" id="type" class="form-control form-control-primary"  aria-label="Default select example">
                         @foreach($issues as $issue)
                          <option value="{{$issue->id}}" >{{$issue->title}}</option>                          
                         @endforeach
                        </select>
                    </div>
                  </div>



                  <div class="row">
                    <div class="col mb-3">
                      <label for="nameLarge" class="form-label">Summary*</label>
                      <input name="summary"  type="text" id="summary" class="form-control" placeholder="Enter Summary" />
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col mb-3">
                      <label for="nameLarge" class="form-label">Description*</label>
                     <textarea  name="description" class="form-control" id="description" rows="3"></textarea>
                    </div>
                  </div>


                  <div class="row g-2">
                    <div class="col mb-0">
                      <label for="emailLarge" class="form-label">Assignee</label> 
                      <select  name="assignee" id="assignee" class="form-control form-control-primary"  aria-label="Default select example">
                         @foreach($assignee as $assign)
                          <option value="{{$assign->id}}" >{{$assign->name}}</option>                          
                         @endforeach
                        </select>
                    </div>
                    <div class="col mb-0">
                      <label for="dobLarge" class="form-label">Reporter</label>
                      <select  name="reporter" id="reporter"  class="form-control form-control-primary" id="exampleFormControlSelect1" aria-label="Default select example">
                         @foreach($reporter as $report)
                          <option value="{{$report->id}}" > {{$report->name}} </option>                          
                         @endforeach
                        </select>
                    </div>
                  </div>
                  <div class="row g-2">
                    <div class="col mb-0">
                      <label for="emailLarge" class="form-label">Labels</label> 
                      <select  name="labels"  id="labels" class="form-control form-control-primary" aria-label="Default select example">
                         @foreach($labels as $label)
                          <option value="{{$label->id}}" >{{$label->title}}</option>                          
                         @endforeach
                        </select>
                    </div>
                    <div class="col mb-0">
                      <label for="dobLarge" class="form-label">Flagged</label>
                       <select  name="flagged" class="form-control form-control-primary" id="flagged" aria-label="Default select example">
                         @foreach($flagges as $flagge)
                          <option value="{{$flagge->id}}" >{{$flagge->title}}</option>                          
                         @endforeach
                        </select>
                    </div>
                  </div>

                   <div class="row g-2">
                    <div class="col mb-0">
                      <label for="emailLarge" class="form-label">Status</label> 
                      <select  name="isactive"  id="isactive" class="form-control form-control-primary" aria-label="Default select example">
                          <option value="1" >Active</option>     
                          <option value="0" >Complete</option>     
                        </select>
                    </div>
                  </div>
          </div>
              <div class="modal-footer">
              <button type="button" class="btn btn-default waves-effect  md-close" >Close</button>
              <button type="submit" class="btn btn-primary waves-effect waves-light ">Update</button>
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
                       @foreach($task_status as $status)
                        <div class="col-lg-12 col-xl-4">
                            <div class=" app-design user-widget-card widget-card-1" style="color: #020202 !important;">
                               <div class="">
                                <div class="card-header">
                                    <h5 class="card-header-text">{{$status->title}}</h5>

                                </div>
                                <div  id="items-{{$status->id}}" class="card-block ">
                                     @foreach($posts as $post)
                                     @if($post->taskstatus==$status->id)  
                                      <div id="{{ $post->id }}" data-id="{{ $post->id }}" data-myattr="{{ $post->id }}"  data-myatt="{{ $post->id }}"  class="">
                                       <!-- <div class="col-md-12 m-b-20">
                                            <div class="card-sub sortable-moves">
                                                <img  class="img-fluid p-absolute" src="libraries\assets\images\card-block\card1.jpg" alt="Card image cap">
                                                <div class="card-block">
                                                    <h4 class="card-title">{{ $post->summary }}</h4>
                                                    <p class="card-text">{{ $post->description }}</p>
                                                </div>
                                            </div>
                                        </div> -->

                                         <div class="col-sm-12">
                                                        <div class="card card-border-primary">
                                                            <div class="card-header">
                                                                <h6>{{ $post->summary }}</h6>
                                                                <!-- <span class="label label-default f-right"> 28 January, 2015 </span> -->
                                                                <div class="dropdown-secondary dropdown f-right">
                                                                    <button data-id="{{ $post->id }}" data-modal="modal-edit" class="btn btn-primary btn-mini dropdown-toggle waves-effect waves-light" type="button" id="dropdown1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action</button>
                                                                    <div class="dropdown-menu" aria-labelledby="dropdown1" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                                                                        <a data-id="{{ $post->id }}"  data-modal="modal-edit"  class="select_activity dropdown-item waves-light waves-effect  md-trigger"><span class="point-marker bg-danger"></span>Edit</a>
                                                                        <!-- <a class="dropdown-item waves-light waves-effect" href="#!"><span class="point-marker bg-warning"></span>Paid</a>
                                                                        <div class="dropdown-divider"></div>
                                                                        <a class="dropdown-item waves-light waves-effect active" href="#!"><span class="point-marker bg-success"></span>On Hold</a>
                                                                        <a class="dropdown-item waves-light waves-effect" href="#!"><span class="point-marker bg-info"></span>Canceled</a> -->
                                                                    </div>
                                                                    <!-- end of dropdown menu -->
                                                                    <span class="f-left m-r-5 text-inverse">Status : </span>
                                                                </div>
                                                            </div>
                                                            <div class="card-block">
                                                                <div class="row">
                                                                  {{ $post->description }}

                                                                </div>
                                                            </div>
                                                            <div class="card-footer">
                                                                <div class="task-list-table">
                                                                    <p class="task-due"><strong>Last Updated : </strong><strong class="label label-primary">{{date('d-m-Y', strtotime($post->updated_at))}} </strong></p>
                                                                </div>
                                                                <div class="task-board m-0">
                                                                    <a href="#" class="btn btn-info btn-mini b-none">View</a>
                                                                    <!-- end of seconadary -->
                                                                </div>
                                                                <!-- end of pull-right class -->
                                                            </div>
                                                            <!-- end of card-footer -->
                                                        </div>
                                                    </div>
                                    </div>
                                     @endif
                                     @endforeach    
                                  </div>
                                  <button data-modal="modal-11"  class="more-info md-trigger">New Activity</button>

                             <!-- <button type="button" class="btn btn-danger btn-outline-danger waves-effect md-trigger" data-modal="modal-11">Super Scaled</button> -->




                              </div>
                          </div>
                        </div>
                   @endforeach
                  </div>
                </div>
        </div>
    </div>
 </div>



<x-footer/> 

  <script src="https://unpkg.com/sortablejs-make/Sortable.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery-sortablejs@latest/jquery-sortable.js"></script>  
<script type="text/javascript">    


  var get_task_status = <?php echo json_encode($task_status); ?>;
  for (let i = 1; i <= get_task_status.length; i++) 
  {
    $('#items-'+i).sortable({
        group: 'list',
        animation: 200,
        ghostClass: 'ghost',
        onSort: reportActivity,
    });
  }


/*Update status in database start*/
function updatePostOrder() 
{
  var get_task_status = <?php echo json_encode($task_status); ?>;
  var markers = [];

  for (let post_order = 1; post_order <= get_task_status.length; post_order++) 
  {
    var arr =  $('#items-'+post_order).sortable('toArray');
    var i, n;
    var attrs = [];
    for (i = 0, n = arr.length; i < n; i++) 
    {
      markers.push({
                    orderid : i, 
                    status : post_order, 
                    myattr : $('#' + arr[i]).data('myattr'), 
                    myatt :$('#' + arr[i]).data('myatt'),
                 });
    }
  }
    //console.log(markers);
   var SITEURL = "{{ url('/') }}"; 
   var order = []; 
   var token = $('meta[name="csrf-token"]').attr('content');
   $.each(markers, function( index, value ) {
            order.push({
              id:value.myatt,
              head_id:index, 
              status:value.status,
              ticketid:value.myatt,
              order:value.orderid,
            });
          });
   // console.log(order);
    $.ajax({
            type: "POST",
            dataType: "json",
             url: SITEURL + "/activity_save",
            data: {
              order: order,
              _token: token
            },
            success: function(response) {
                if (response.status == "success") 
                {
                  console.log(response);
                } else {
                 // console.log(response);
                }
            }
          });

}

/*Update status in database end*/



// Report when the sort order has changed
function reportActivity() 
{
  updatePostOrder();
   // console.log('The sort order has changed and update in databse');
};
  </script>



<!-- Sekect Activity Information in Form and update -->
   <script>
            $(function () {
                     // ON SELECTING ROW
                $(".select_activity").click(function () 
                {
                    $("#type").val();
                    $("#project").val();
                    $('#summary').val();
                    $('#description').val();
                    $('#summary').val(); 
                    $("#assignee").val();
                    $("#reporter").val();
                    $("#flagged").val();
                    $("#labels").val();

                    var SITEURL = "{{ url('/') }}"; 
                    var token = $('meta[name="csrf-token"]').attr('content');
                    var id = $(this).data('id');
                    $.ajax({
                            type: "POST",
                            dataType: "json",
                            url: SITEURL + "/activity_info_get",
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
                                  $("#id").val(response.id);
                                  $("#type").val(response.type);
                                  $("#project").val(response.project);
                                  $('#summary').val(response.summary);
                                  $('#description').val(response.description);
                                  $("#assignee").val(response.assignee);
                                  $("#reporter").val(response.reporter);
                                  $("#flagged").val(response.flagged);
                                  $("#labels").val(response.labels);

                                }
                            }
                          });
                });
            });
        </script>




























