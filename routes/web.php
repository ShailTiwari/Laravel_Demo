<?php

use Illuminate\Support\Facades\Route;  

use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\Events;
use App\Http\Controllers\Projects;
use App\Http\Controllers\Activitys;
use App\Http\Controllers\Settings;
use App\Http\Controllers\Dashboard;
use App\Http\Controllers\Home;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

    Route::resource('/', Home::class);
    Route::post('contact_us', [Home::class,'contact_us'])->name('contact_us'); 



/*Route::get('/', function () {
    return view('welcome');
});*/

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () 
{

    Route::resource('/dashboard', Dashboard::class);
    Route::get('get_graph', [Dashboard::class,'Get_graph_data']);
    Route::get('get_attendence_graph', [Dashboard::class,'Get_Attendence_graph_data']);



    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
    Route::resource('products', ProductController::class);
    Route::resource('project', Projects::class);
    Route::post('save_project', [Projects::class,'save_project'])->name('save_project'); 
    Route::get('projects_edit/{id}', [Projects::class, 'edit']); 
    Route::post('update_projects_profile', [Projects::class, 'update_projects_profile'])->name('update_projects_profile'); 
    Route::resource('activity', Activitys::class);
    Route::get('projects/activity/{projectname}/{id}', [Activitys::class, 'projects_view'])->name('projects_view');
    Route::post('activity_info_get', [Activitys::class,'get_activity_info'])->name('activity_info_get');  
    Route::post('create_activity', [Activitys::class,'create_activity_profile'])->name('create_activity'); 
    Route::post('update_activity', [Activitys::class, 'update_activity_profile'])->name('update_activity'); 
    Route::post('activity_save', [Activitys::class,'updateOrder'])->name('activity_save'); 


    Route::resource('event', Events::class); 
    Route::post('event_save', [Events::class,'ajax_event_save'])->name('ajax_event_save');  
    Route::get('holiday', [Events::class, 'holiday'])->name('holiday');
    Route::post('save_holiday', [Events::class, 'save_holiday'])->name('save_holiday');


    Route::resource('setting', Settings::class);
    Route::post('update_setting', [Settings::class, 'update_setting'])->name('update_setting');


    Route::get('flags', [Settings::class, 'flags'])->name('flags');
    Route::post('save_flags', [Settings::class, 'save_flags'])->name('save_flags');
    Route::post('get_flags_info', [Settings::class, 'get_flags_info'])->name('get_flags_info');
    Route::post('update_flags', [Settings::class, 'update_flags'])->name('update_flags');

    Route::get('labels', [Settings::class, 'labels'])->name('labels');
    Route::post('save_labels', [Settings::class, 'save_labels'])->name('save_labels');
    Route::post('get_labels_info', [Settings::class, 'get_labels_info'])->name('get_labels_info');
    Route::post('update_labels', [Settings::class, 'update_labels'])->name('update_labels');

    Route::get('task', [Settings::class, 'task'])->name('task');
    Route::post('save_task', [Settings::class, 'save_task'])->name('save_task');
    Route::post('get_task_info', [Settings::class, 'get_task_info'])->name('get_task_info');
    Route::post('update_task', [Settings::class, 'update_task'])->name('update_task');


    Route::get('issue', [Settings::class, 'issue'])->name('issue');
    Route::post('save_issue', [Settings::class, 'save_issue'])->name('save_issue');
    Route::post('get_issue_info', [Settings::class, 'get_issue_info'])->name('get_issue_info');
    Route::post('update_issue', [Settings::class, 'update_issue'])->name('update_issue');


    Route::get('department', [Settings::class, 'department'])->name('department');
    Route::post('save_department', [Settings::class, 'save_department'])->name('save_department');
    Route::post('get_department_info', [Settings::class, 'get_department_info'])->name('get_department_info');
    Route::post('update_department', [Settings::class, 'update_department'])->name('update_department');

    Route::get('post', [Settings::class, 'post'])->name('post');
    Route::post('save_post', [Settings::class, 'save_post'])->name('save_post');
    Route::post('get_post_info', [Settings::class, 'get_post_info'])->name('get_post_info');
    Route::post('update_post', [Settings::class, 'update_post'])->name('update_post');

    Route::get('banner', [Settings::class, 'banner'])->name('banner');
    Route::post('save_banner', [Settings::class, 'save_banner'])->name('save_banner');
    Route::post('get_banner_info', [Settings::class, 'get_banner_info'])->name('get_banner_info');
    Route::post('update_banner', [Settings::class, 'update_banner'])->name('update_banner');
});
