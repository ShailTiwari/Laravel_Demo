<x-header/>
<x-sidebar/>
  <div class="md-modal md-effect-11" id="modal-11">
    <div class="md-content">
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

 <div class="pcoded-content">
    <div class="pcoded-inner-content">
        <div class="main-body">
            <div class="page-wrapper">
                <div class="page-body">
                  <meta name="csrf-token" content="{{ csrf_token() }}">
                  <div class="row">
                       @foreach($task_status as $status)
                       <!-- Demo -->
                        <div class="col-lg-12 col-xl-4">
                            <!-- Draggable Multiple List card start -->  
                            <div class="card app-design user-widget-card">
                               <div class="">
                                <div class="card-header">
                                    <h5 class="card-header-text">{{$status->title}}</h5>

                                </div>
                                <div  id="items-{{$status->id}}" class="card-block ">
                                     @foreach($posts as $post)
                                     @if($post->taskstatus==$status->id)  
                                      <div id="{{ $post->id }}" data-id="{{ $post->id }}" data-myattr="{{ $post->id }}"  data-myatt="{{ $post->id }}"  class="bg-c-yellow">
                                       <div class="col-md-12 m-b-20">
                                            <div class="card-sub sortable-moves">
                                                <img  class="img-fluid p-absolute" src="libraries\assets\images\card-block\card1.jpg" alt="Card image cap">
                                                <div class="card-block">
                                                    <h4 class="card-title">{{ $post->summary }}</h4>
                                                    <p class="card-text">{{ $post->description }}</p>
                                                </div>
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































