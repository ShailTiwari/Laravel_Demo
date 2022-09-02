<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\DB;

class Dashboard extends Controller
{
    public function __construct() 
    {
         /*$this->middleware('permission:role-list|role-create|role-edit|role-delete', ['only' => ['index','store']]);
         $this->middleware('permission:role-create', ['only' => ['create','store']]);
         $this->middleware('permission:role-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:role-delete', ['only' => ['destroy']]);*/
         $this->page_name="Activitys";
    }


      public function index()
    {    
         
        $users = DB::table('users')->count();
         $projects = DB::table('projects')->count();
         $activities = DB::table('activities')->count();
         $holidays = DB::table('holidays')->count();
         $attendances = DB::table('attendances')->count();
         return view('dashboard',
            [
                'page_name'=>$this->page_name,
                'users_count'=>$users,
                'projects'=>$projects,
                'activities'=>$activities,
                'holidays'=>$holidays,
                'attendances'=>$attendances
            ]);
    }
}
