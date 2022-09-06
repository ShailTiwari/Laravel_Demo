<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\DB;
use App\Models\Activity;

class Activitys extends Controller
{
    public function __construct() 
    {
         $this->middleware('permission:role-list|role-create|role-edit|role-delete', ['only' => ['index','store']]);
         $this->middleware('permission:role-create', ['only' => ['create','store']]);
         $this->middleware('permission:role-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:role-delete', ['only' => ['destroy']]);
         $this->page_name="Activitys";
    }


     public function index()
     {
        $projects = DB::select('select * from projects');
        $task_status = DB::select('select * from task_status');
        $issues = DB::select('select * from issues');
        $assignee = DB::select('select * from users');
        $reporter = DB::select('select * from users');
        $labels = DB::select('select * from labels');
        $flagges = DB::select('select * from flagges');
        $posts = DB::select('select * from activities where isactive=1');
        /*$posts = Activity::where('project', $id)
                             ->where('isactive', 1)
                             ->orderBy('order','asc')
                             ->get();
        $permission = Permission::get();*/
        return view('activity.index', ['page_name'=>$this->page_name,
            'posts'=>$posts,
            'projects'=>$projects,
            'issues'=>$issues,
            'assignee'=>$assignee,
            'reporter'=>$reporter,
            'labels'=>$labels,
            'flagges'=>$flagges,
            'task_status'=>$task_status]);
     }



     public function create()
     {
        $projects = DB::select('select * from projects');
        $task_status = DB::select('select * from task_status');
        $issues = DB::select('select * from issues');
        $assignee = DB::select('select * from users');
        $reporter = DB::select('select * from users');
        $labels = DB::select('select * from labels');
        $flagges = DB::select('select * from flagges');
        $posts = DB::select('select * from activities');
        /*$posts = Activity::where('project', $id)
                             ->where('isactive', 1)
                             ->orderBy('order','asc')
                             ->get();
        $permission = Permission::get();*/
        return view('activity.create', ['page_name'=>$this->page_name,
            'posts'=>$posts,
            'projects'=>$projects,
            'issues'=>$issues,
            'assignee'=>$assignee,
            'reporter'=>$reporter,
            'labels'=>$labels,
            'flagges'=>$flagges,
            'task_status'=>$task_status]);
     }



     public function projects_view($projectname,$id)
     {
        $projects = DB::select('select * from projects');
        $task_status = DB::select('select * from task_status');
        $issues = DB::select('select * from issues');
        $assignee = DB::select('select * from users');
        $reporter = DB::select('select * from users');
        $labels = DB::select('select * from labels');
        $flagges = DB::select('select * from flagges');
        $posts = Activity::where('project', $id)
                             ->where('isactive', 1)
                             ->orderBy('order','asc')
                             ->get();
        $permission = Permission::get();
        return view('activity.index', ['page_name'=>$this->page_name,
            'posts'=>$posts,
            'projects'=>$projects,
            'issues'=>$issues,
            'assignee'=>$assignee,
            'reporter'=>$reporter,
            'labels'=>$labels,
            'flagges'=>$flagges,
            'task_status'=>$task_status]);
     }



      public function create_activity_profile(Request $request)
    { 
         $data= new Activity();
         $data->project=$request->project;
         $data->key='AP-T';
         $data->icon_picture='';
         $data->type=$request->type;
         $data->taskstatus=1;
         $data->summary=$request->summary;
         $data->description=$request->description;
         $data->assignee=$request->assignee;
         $data->reporter=$request->reporter;
         $data->labels=$request->labels;
         $data->flagged=$request->flagged;
         $data->start=date('Y-m-d');
         $data->options='1';
         $data->isconfirm='1';
         $data->remarks='';
         $data->save();
         $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Activity Created',
                            'description' =>$request->summary.'New Activity Created by '.Auth::user()->name,
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);

        return redirect('activity');                      
    }


 public function updateOrder(Request $request){
        foreach ($request->order as $key => $order) 
        {            
                 $data= new Activity();
                 $data=Activity::find($order['id']);
                 $data->taskstatus=$order['status'];
                 $data->order=$order['order'];
                 $event =$data->update();
        }

        return response('Update Successfully.', 200);
    }


    

public function get_activity_info(Request $request)
    {

       // return response()->json($request->order);
        $projects = DB::select('SELECT * from projects');
        $Activity = Activity::where('id', $request->id)
                             ->first();
        return response()->json($Activity);
       // return response($Activity);
    }

     public function update_activity_profile(Request $request)
    { 
         $data= new Activity();
         $data=Activity::find($request->id);
         $data->project=$request->project;
         $data->key='AP-T';
         $data->icon_picture='';
         $data->type=$request->type;
         $data->summary=$request->summary;
         $data->description=$request->description;
         $data->assignee=$request->assignee;
         $data->reporter=$request->reporter;
         $data->labels=$request->labels;
         $data->flagged=$request->flagged;
         $data->isactive=$request->isactive;
         $data->start=date('Y-m-d');
         $data->options='1';
         $data->isconfirm='1';
         $data->remarks='';
         $data->save();

         $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Activity Updated',
                            'description' =>$request->summary.'New Activity Updated by '.Auth::user()->name,
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);
          return back();;                      
    }


   /* public function create()

    {
        $permission = Permission::get();
        return view('activity.create',compact('permission'));

    }*/



}
