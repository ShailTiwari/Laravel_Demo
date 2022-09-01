<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\DB;
use App\Models\Event;

class Events extends Controller
{
    public function __construct() 
    {
         $this->middleware('permission:role-list|role-create|role-edit|role-delete', ['only' => ['index','store']]);
         $this->middleware('permission:role-create', ['only' => ['create','store']]);
         $this->middleware('permission:role-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:role-delete', ['only' => ['destroy']]);
         $this->page_name="Events";
    }



      public function index(Request $request)
    {
        //

        if($request->ajax()) 
        {  
             $data = Event::whereDate('start', '>=', $request->start)
                       ->whereDate('end',   '<=', $request->end)
                       ->get(['id', 'title', 'start', 'end']);
      return response()->json($data);

        return $data;

        }
        return view('event',['page_name'=>$this->page_name]);
    }


    public function ajax_event_save (Request $request)

    {
        switch ($request->type) 
        {
           case 'add':
                 $data= new Event();
                 $data->title=$request->title;
                 $data->start=$request->start;
                 $data->end=$request->end;
                 $event =$data->save();
                 return response()->json($event);
                 break;  

           case 'update':
                 $data= new Event();
                 $data=Event::find($request->id);
                 $data->title=$request->title;
                 $data->start=$request->start;
                 $data->end=$request->end;
                 $event =$data->update();

                 return response()->json($event);
                 break;  

          case 'delete':
                $flight= new Event();
                $flight = Event::find($request->id); 
                $flight->delete();
                return response()->json($flight);
                break;
        }

    }




      public function create(Request $request)
    {
        $page_name='Holidays';
        $list = DB::select('SELECT * from holidays where isactive=1 and isdelete=0 and inuse=1');
        //return $list;
        return view('holiday',['page_name'=>$page_name,'holidays'=>$list]);
    }

}
