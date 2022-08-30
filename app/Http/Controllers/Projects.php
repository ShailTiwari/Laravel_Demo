<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
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
        
         $projects= Project::all(); 
        $project_category = DB::select('select * from project_category');
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
        return redirect('project');                      
    }

      public function update_projects_profile(Request $request)
    { 
         $data= new Project();
                  
         $data=Project::find($request->id);
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
         $data->description='';
         $data->category=$request->category;
         $data->lead=$request->lead;
         $data->default_assigned=$request->default_assigned;
         $data->options='1';
         $data->isconfirm='1';
         $data->remarks='';
         $data->save();
        return redirect('project');   
    }

      public function delete($id)
    { 
        $date=Project::find($id);
        $date->delete(); 
        return redirect('project');
    }
}
