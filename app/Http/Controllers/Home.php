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
         $game_result = DB::select('select id,employee_id,puncin, DATE_FORMAT(start, "%e-%b-%Y") as start from attendances where employee_id='.$id);
        // return  $game_result;
        $assignee = DB::select('select * from users');

         $years =  array( date("Y",strtotime("-1 year")), date("Y") );
            foreach(range(0, 1) as $i) 
            {
            $year=$years[$i];
            $months =  array( 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'June', 'July', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec' );
            $months_int =  array( '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12' );
            $days = array( 31,(strtotime("1 Mar ".$year) - strtotime("1 Feb ".$year)) / ( 24 * 60 * 60 ),31, 30, 31, 30, 31, 31, 30, 31, 30, 31 );
            $wday = array( '', '', '', '', '', '', '' );
            $cal = array();
            foreach(range(0, 11) as $i) 
            {
              $firstday = getdate(strtotime('1 '.$months[$i].' '.$year));
              $fromday = $firstday['wday'];
              $leftday =  7 - ( $fromday + $days[$i] ) % 7;
              $cal[] = array_merge( array_slice($wday, 0, $fromday),
                                    range(1, $days[$i]),
                                    array_slice($wday, 0, $leftday)
                                  );
            }

             foreach(range(0, 11) as $i)
             {
              $totaldays = 0;
              $month_int=$i+1;
              $totaldays = cal_days_in_month(CAL_GREGORIAN, $months_int[$i], $year); 
                foreach($cal[$i] as $k => $v) 
                {
                 // print_r($cal[$i]);
                 

                   foreach ($game_result as $key => $val) 
                            {
                              if ($v!='' && $v.'-'.$months[$i].'-'.$year == $val->start) 
                              {
                               echo $v.'-'.$months[$i].'-'.$year.'</br>';
                               echo $val->employee_id;
                               echo $val->puncin;
                              }
                               
                            //  echo $val->start;
                              //echo $val['start'];
                             // print_r( $val->employee_id);
                              //echo $val;
                                 /*if ($val['uid'] === $id) {
                                     return $key;
                                 }*/
                             }



                }
              } 
              }




         return view('home.game_view',['page_name'=>$page_name,'project_info'=>$project_info,'game_result'=>$game_result,
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
