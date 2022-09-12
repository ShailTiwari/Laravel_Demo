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
         $data=Project::find($id);
         $user=Project::where(['id'=>$id])->first();
        $project_category = DB::select('select * from project_category');
        $assignee = DB::select('select * from users');
         return view('home.game_view',['page_name'=>$this->page_name,'member'=>$user,
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
