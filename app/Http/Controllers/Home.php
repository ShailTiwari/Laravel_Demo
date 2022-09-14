<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Project;
use App\Models\Contact;
use Illuminate\Support\Facades\DB;

class Home extends Controller
{
      public function index()
    {
      $page_name="Home";
      $banners = DB::select('SELECT * from banners where isactive=1 and isdelete=0 and inuse=1 order by action_id ASC');
      $projects= Project::all(); 
      return view('home.home',['page_name'=>$page_name,
                'banners'=>$banners,'projects'=>$projects]);
    }



      public function view($id)
    {
        //return $id;
         $page_name="Game View";
         $data=Project::find($id);
         $project_info=Project::where(['id'=>$id])->first();
         $project_category = DB::select('select * from project_category');
         $game_result = DB::select('select id,employee_id,remarks, DATE_FORMAT(start, "%e-%b-%Y") as start from attendances where employee_id='.$id);
        // return  $game_result;
        $assignee = DB::select('select * from users');
         return view('home.game_view',['page_name'=>$page_name,'project_info'=>$project_info,'game_result'=>$game_result,
            'project_category'=>$project_category,
            'assignee'=>$assignee]);
    }


      public function jodi($id)
    {
        //return $id;
         $page_name="Game View";
         $data=Project::find($id);
         $project_info=Project::where(['id'=>$id])->first();
         $project_category = DB::select('select * from project_category');
         $game_result = DB::select('select id,employee_id,remarks, DATE_FORMAT(start, "%e-%b-%Y") as start from attendances where employee_id='.$id);
        // return  $game_result;
        $assignee = DB::select('select * from users');
         return view('home.jodi_view',['page_name'=>$page_name,'project_info'=>$project_info,'game_result'=>$game_result,
            'project_category'=>$project_category,
            'assignee'=>$assignee]);
    }


      public function pannel($id)
    {
        //return $id;
         $page_name="Game View";
         $data=Project::find($id);
         $project_info=Project::where(['id'=>$id])->first();
         $project_category = DB::select('select * from project_category');
         $game_result = DB::select('select id,employee_id,remarks, DATE_FORMAT(start, "%e-%b-%Y") as start from attendances where employee_id='.$id);
        // return  $game_result;
        $assignee = DB::select('select * from users');
         return view('home.pannel_view',['page_name'=>$page_name,'project_info'=>$project_info,'game_result'=>$game_result,
            'project_category'=>$project_category,
            'assignee'=>$assignee]);
    }



      public function contact_us (Request $request)
    {

               $validatedData = $request->validate([
                  'name' => 'required',
                  'email' => 'required|max:255',
                  'subject' => 'required',
                  'message' => 'required'
                ]);

                 $data= new Contact();
                 $data->name=$request->name;
                 $data->email=$request->email;
                 $data->subject=$request->subject;
                 $data->message=$request->message;
                 $contact =$data->save();
                 return back()->with('success', 'Your message has been sent. Thank you!');

    }
  }
