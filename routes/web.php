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
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
    Route::resource('products', ProductController::class);
    Route::resource('project', Projects::class);
    Route::post('save_project', [Projects::class,'save_project'])->name('save_project'); 
    Route::resource('activity', Activitys::class);
    Route::get('projects/activity/{projectname}/{id}', [Activitys::class, 'projects_view'])->name('projects_view');
    Route::post('activity_info_get', [Activitys::class,'get_activity_info'])->name('activity_info_get');  
    Route::post('create_activity', [Activitys::class,'create_activity_profile'])->name('create_activity'); 
    Route::post('update_activity', [Activitys::class, 'update_activity_profile'])->name('update_activity'); 
    Route::post('activity_save', [Activitys::class,'updateOrder'])->name('activity_save'); 
    Route::resource('event', Events::class); 
    Route::post('event_save', [Events::class,'ajax_event_save'])->name('ajax_event_save');  


    Route::resource('setting', Settings::class);
    Route::post('update_setting', [Settings::class, 'update_setting'])->name('update_setting');
    Route::get('flags', [Settings::class, 'flags'])->name('flags');
});
