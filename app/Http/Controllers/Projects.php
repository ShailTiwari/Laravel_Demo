<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\Project;

class Projects extends Controller
{
    public function __construct() 
    {
         $this->middleware('permission:role-list|role-create|role-edit|role-delete', ['only' => ['index','store']]);
         $this->middleware('permission:role-create', ['only' => ['create','store']]);
         $this->middleware('permission:role-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:role-delete', ['only' => ['destroy']]);
         $this->page_name="Projects";
    }

     public function index()
     {
        
        // $projects= Project::all(); 
        $project_category = DB::select('select * from project_category');

        $activitiesPosts = DB::table('activities')
                   ->select('project', DB::raw('COUNT(id) as count_activity'))
                   ->where('isactive',1)
                   ->groupBy('project');
 
       $projects = DB::table('projects')
        ->leftJoinSub($activitiesPosts, 'activities_posts', function ($join) {
            $join->on('projects.id', '=', 'activities_posts.project');
        })->get();



        $assignee = DB::select('select * from users');
        return view('project.index',['page_name'=>$this->page_name,'projects'=>$projects,'project_category'=>$project_category,'assignee'=>$assignee]);
     }

      public function create()
     {
        
         $projects= Project::all(); 
        $project_category = DB::select('select * from project_category');
        $assignee = DB::select('select * from users');
        return view('project.create',['page_name'=>$this->page_name,'projects'=>$projects,'project_category'=>$project_category,'assignee'=>$assignee]);
     }

     public function save_project(Request $request)
    { 
         $data= new Project();

        if($request->file('image'))
        {
            $file= $request->file('image');
            $filename= date('YmdHi').$file->getClientOriginalName();
            $file-> move(public_path('img/project_img'), $filename);
            //$data['profile_picture']= $filename;
            $data->icon_picture=$filename;
        }

         $data->title=$request->title;
         $data->key=$request->key;
         $data->start=date('Y-m-d');
         $data->description=$request->description;
         $data->category=$request->category;
         $data->lead=$request->lead;
         $data->default_assigned=$request->default_assigned;
         $data->options='1';
         $data->isconfirm='1';
         $data->remarks='';
         $data->save();

         $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Project Created',
                            'description' =>'New Project Created by '.Auth::user()->name,
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);


        return redirect('project');    

    }





      public function edit($id)
    {
        //return $id;
         $data=Project::find($id);
         $user=Project::where(['id'=>$id])->first();
        $project_category = DB::select('select * from project_category');
        $assignee = DB::select('select * from users');
         return view('project.edit',['page_name'=>$this->page_name,'member'=>$user,
            'project_category'=>$project_category,
            'assignee'=>$assignee]);
    }

  public function update_projects_profile(Request $request)
    { 
         $data= new Project();
                  
         $data=Project::find($request->id);
         if($request->file('image'))
        {
            $file= $request->file('image');
            $filename= date('YmdHi').$file->getClientOriginalName();
            $file-> move(public_path('images/project'), $filename);
            //$data['profile_picture']= $filename;
            $data->icon_picture=$filename;
        }

         $data->title=$request->title;
         $data->key=$request->key;
         $data->start=date('Y-m-d');
         $data->description='';
         $data->category=$request->category;
         $data->lead=$request->lead;
         $data->default_assigned=$request->default_assigned;
         $data->options='1';
         $data->isconfirm='1';
         $data->remarks='';
         $data->save();

         $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Project Updated',
                            'description' =>'Project Information Updated by '.Auth::user()->name,
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);


        return redirect('project');   
    }


      public function delete($id)
    { 
        $date=Project::find($id);
        $date->delete(); 
        return redirect('project');
    }
}
