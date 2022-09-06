<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Project;
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
}
