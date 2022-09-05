<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Setting;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class Settings extends Controller
{
    
public function index()
    {
         $id=1;
         $page_name="Settings";
         $data=Setting::find($id);
         $user=Setting::where(['id'=>$id])->first();
         return view('settings',['page_name'=>$page_name,'member'=>$user]);
    }

       public function update_setting(Request $request)
    { 
         $data= new Setting();
        // return $request->input();

         $data=Setting::find($request->id);
        if($request->file('logo')){
            $file= $request->file('logo');
            $filename= date('YmdHi').$file->getClientOriginalName();
            $file-> move(public_path('images'), $filename);
            //$data['profile_picture']= $filename;
            $data->logo=$filename;
        }
        if($request->file('invoice_logo')){
            $file= $request->file('invoice_logo');
            $filename= date('YmdHi').$file->getClientOriginalName();
            $file-> move(public_path('images'), $filename);
            //$data['profile_picture']= $filename;
            $data->invoice_image=$filename;
        }
         $data->site_name=$request->site_name;
         $data->company_name=$request->company_name;
         $data->sort_name=$request->sort_name;
         $data->description=$request->description;
         $data->pan_no=$request->pan_no;
         $data->gst_no=$request->gst_no;
         $data->est_info=$request->est_info;
         $data->phone=$request->phone;
         $data->email=$request->email;
         $data->owner=$request->owner;
         $data->state=$request->state;
         $data->zipCode=$request->zipCode;
         $data->save();

            $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Settings  Updated',
                            'description' =>'Master Settings Updated',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);


        return redirect('setting');   

    }

    public function flags()
    {
         $page_name="flags";
         $id=1;
         $list = DB::select('SELECT * from flagges where  isdelete=0 and inuse=1');
         return view('master.flags',['page_name'=>$page_name,'flags'=>$list]);
    }
    
     public function save_flags(Request $request)
     {  
         $insData = array(
                            'title' => $request->title,
                            'description' =>$request->description,
                            'isactive' =>1,
                        );

         $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Flags Created',
                            'description' =>'Master Flags Created',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);


         DB::table('flagges')->insert($insData);
        return redirect('flags'); 

     }


     public function get_flags_info(Request $request)
    {
            $flagges = DB::table('flagges')
            ->select('id','title','description','isactive')
            ->where('id',$request->id)
            ->first();
        return response()->json($flagges);
    }


     public function update_flags(Request $request)
     {  
         $updateData = array(
                            'title' => $request->title,
                            'description' =>$request->description,
                            'isactive' =>$request->isactive,
                        );
         $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Flags  Updated',
                            'description' =>'Master Flags Updated',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);
         $affected = DB::table('flagges')
              ->where('id', $request->id)
              ->update($updateData);
        return redirect('flags'); 

     }




      public function labels()
    {
         $page_name="labels";
         $id=1;
         $list = DB::select('SELECT * from labels where  isdelete=0 and inuse=1');
         return view('master.labels',['page_name'=>$page_name,'flags'=>$list]);
    }
    
     public function save_labels(Request $request)
     {  
         $insData = array(
                            'title' => $request->title,
                            'description' =>$request->description,
                            'isactive' =>1,
                        );  

         $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Label  Created',
                            'description' =>'Master Label Created',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);
         DB::table('labels')->insert($insData);
        return redirect('labels'); 

     }


     public function get_labels_info(Request $request)
    {
            $labels = DB::table('labels')
            ->select('id','title','description','isactive')
            ->where('id',$request->id)
            ->first();
        return response()->json($labels);
    }
    

     public function update_labels(Request $request)
     {  
         $updateData = array(
                            'title' => $request->title,
                            'description' =>$request->description,
                            'isactive' =>$request->isactive,
                        );

          $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Label  Update',
                            'description' =>'Master Label Updated',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);




         $affected = DB::table('labels')
              ->where('id', $request->id)
              ->update($updateData);
        return redirect('labels'); 

     }




      public function task()
    {
         $page_name="task";
         $list = DB::select('SELECT * from task_status where  isdelete=0 and inuse=1');
         return view('master.task',['page_name'=>$page_name,'flags'=>$list]);
    }
    
     public function save_task(Request $request)
     {  
         $insData = array(
                            'title' => $request->title,
                            'description' =>$request->description,
                            'isactive' =>1,
                        );
           $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Task  Created',
                            'description' =>'Master Task Created',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);
         DB::table('task_status')->insert($insData);
        return redirect('task'); 

     }


     public function get_task_info(Request $request)
    {
            $task = DB::table('task_status')
            ->select('id','title','description','isactive')
            ->where('id',$request->id)
            ->first();
        return response()->json($task);
    }
    

     public function update_task(Request $request)
     {  
         $updateData = array(
                            'title' => $request->title,
                            'description' =>$request->description,
                            'isactive' =>$request->isactive,
                        );

           $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Task Type Update',
                            'description' =>'Master Task Type Updated',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);



         $affected = DB::table('task_status')
              ->where('id', $request->id)
              ->update($updateData);
        return redirect('task'); 

     }



      public function issue()
    {
         $page_name="issue";
         $id=1;
         $list = DB::select('SELECT * from issues where  isdelete=0 and inuse=1');
         return view('master.issue',['page_name'=>$page_name,'flags'=>$list]);
    }
    
     public function save_issue(Request $request)
     {  
         $insData = array(
                            'title' => $request->title,
                            'description' =>$request->description,
                            'isactive' =>1,
                        );
            $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Issue Type  Created',
                            'description' =>'Master Issue Type Created',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);

         DB::table('issues')->insert($insData);
        return redirect('issue'); 

     }


     public function get_issue_info(Request $request)
    {
            $issue = DB::table('issues')
            ->select('id','title','description','isactive')
            ->where('id',$request->id)
            ->first();
        return response()->json($issue);
    }
    

     public function update_issue(Request $request)
     {  
         $updateData = array(
                            'title' => $request->title,
                            'description' =>$request->description,
                            'isactive' =>$request->isactive,
                        );

           $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Issue Type Update',
                            'description' =>'Master Issue Type Updated',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);



         $affected = DB::table('issues')
              ->where('id', $request->id)
              ->update($updateData);
        return redirect('issue'); 

     }



      public function department()
    {
         $page_name="department";
         $id=1;
         $list = DB::select('SELECT * from departments where  isdelete=0 and inuse=1');
         return view('master.department',['page_name'=>$page_name,'flags'=>$list]);
    }
    
     public function save_department(Request $request)
     {  
         $insData = array(
                            'title' => $request->title,
                            'description' =>$request->description,
                            'isactive' =>1,
                        );
            $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Department  Created',
                            'description' =>'Master Department Created',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);

         DB::table('departments')->insert($insData);
        return redirect('department'); 

     }


     public function get_department_info(Request $request)
    {
            $department = DB::table('departments')
            ->select('id','title','description','isactive')
            ->where('id',$request->id)
            ->first();
        return response()->json($department);
    }
    

     public function update_department(Request $request)
     {  
         $updateData = array(
                            'title' => $request->title,
                            'description' =>$request->description,
                            'isactive' =>$request->isactive,
                        );

          $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Department Update',
                            'description' =>'Master Department Updated',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);




         $affected = DB::table('departments')
              ->where('id', $request->id)
              ->update($updateData);
        return redirect('department'); 

     }

      public function post()
    {
         $page_name="post";
         $departments = DB::select('SELECT * from departments where  isdelete=0 and inuse=1');
         $list = DB::select('SELECT * from posts where  isdelete=0 and inuse=1');
         return view('master.post',['page_name'=>$page_name,'flags'=>$list,'departments'=>$departments]);
    }
    
     public function save_post(Request $request)
     {  
         $insData = array(
                            'dept_id' => $request->departmentid,
                            'title' => $request->title,
                            'description' =>$request->description,
                            'isactive' =>1,
                        ); 

         $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Post Save',
                            'description' =>'Master Post Save',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);
            DB::table('posts')->insert($insData);
        return redirect('post'); 

     }


     public function get_post_info(Request $request)
    {
            $post = DB::table('posts')
            ->select('id','dept_id','title','description','isactive')
            ->where('id',$request->id)
            ->first();
        return response()->json($post);
    }
    

     public function update_post(Request $request)
     {  
         $updateData = array(
                            'dept_id' => $request->departmentid,
                            'title' => $request->title,
                            'description' =>$request->description,
                            'isactive' =>$request->isactive,
                        );

            $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'Post Update',
                            'description' =>'Master Post Updated',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);



         $affected = DB::table('posts')
              ->where('id', $request->id)
              ->update($updateData);
        return redirect('post'); 

     }


         public function banner()
    {
         $page_name="Banner";
         $banner_master = DB::select('SELECT * from banner_master where  isdelete=0 and inuse=1');
          $list = DB::select('SELECT a.id,a.action_id,a.module_id,a.title,a.description,a.icon,a.banner,a.isactive ,a.created_at,
            b.title as type,b.description from banners as a left join banner_master as b on b.id=a.id where  a.isdelete=0 and a.inuse=1 order by a.id ASC');
         //$list = DB::select('SELECT * from banners where  isdelete=0 and inuse=1');
         return view('master.banner',['page_name'=>$page_name,'banners'=>$list,'banner_masters'=>$banner_master]);
    }
    public function save_banner(Request $request)
     {  
         $insData = array(
                            'module_id' => $request->banner_masterid,
                            'title' => $request->title,
                            'description' =>$request->description,
                            'isactive' =>1,
                        );
          if($request->file('logo'))
        {
            $file= $request->file('logo');
            $filename= date('YmdHi').$file->getClientOriginalName();
            $file-> move(public_path('images/slider'), $filename);
            //$data['profile_picture']= $filename;

             $insData['icon'] = $filename;
             $insData['banner'] = $filename;
        }


         $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'banner Save',
                            'description' =>'Master banner Save',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);
            DB::table('banners')->insert($insData);
        return redirect('banner'); 

     }


     public function get_banner_info(Request $request)
    {
            $banner = DB::table('banners')
            ->select('id','action_id','module_id','title','description','icon','banner','isactive')
            ->where('id',$request->id)
            ->first();
        return response()->json($banner);
    }
    

     public function update_banner(Request $request)
     {  
           $updateData=[];
           


         $updateData = array(
                            'module_id' => $request->banner_masterid,
                            'title' => $request->title,
                            'description' =>$request->description,
                            'isactive' =>$request->isactive,
                        );

   if($request->file('invoice_logo'))
            {
                $file= $request->file('invoice_logo');
                $filename= date('YmdHi').$file->getClientOriginalName();
                $file-> move(public_path('images/slider'), $filename);
                //$data['profile_picture']= $filename;
                $updateData['icon'] = $filename;
                $updateData['banner'] = $filename;
            }
            $userlogs = array(
                            'action_id' =>1,
                            'module_id' =>1,
                            'title' =>'banner Update',
                            'description' =>'Master banner Updated',
                            'isactive' =>1,
                            'created_by' =>Auth::user()->id,
                        );
            DB::table('userlogs')->insert($userlogs);



         $affected = DB::table('banners')
              ->where('id', $request->id)
              ->update($updateData);
        return redirect('banner'); 

     }


}
