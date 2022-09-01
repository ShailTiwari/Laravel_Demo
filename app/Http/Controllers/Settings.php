<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Setting;
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
        return redirect('setting');   

    }

    public function flags()
    {
         $page_name="flags";
         $id=1;
         $list = DB::select('SELECT * from flagges where isactive=1 and isdelete=0 and inuse=1');
         return view('master.flags',['page_name'=>$page_name,'flags'=>$list]);
    }



}
