<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Project;

class Home extends Controller
{
      public function index()
    {
      $page_name="Home";
      $projects= Project::all(); 
      return view('Home.home',['page_name'=>$page_name,'projects'=>$projects]);
       return view('Home.home');
    }
}
