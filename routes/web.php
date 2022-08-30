<?php

use Illuminate\Support\Facades\Route;  

use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\Projects;
use App\Http\Controllers\Activitys;
use App\Http\Controllers\Settings;
use App\Http\Controllers\Dashboard;

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

Route::get('/', function () {
    return view('welcome');
});

/*Route::get('setting',Settings::class);
Route::post('update_setting', [Settings::class, 'update_setting'])->name('update_setting'); */
Route::resource('setting', Settings::class);
Route::post('update_setting', [Settings::class, 'update_setting'])->name('update_setting');
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () 
{
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
    Route::resource('products', ProductController::class);
    Route::resource('project', Projects::class);
    Route::post('save_project', [Projects::class,'save_project'])->name('save_project'); 
    Route::resource('activity', Activitys::class);
    Route::post('create_activity', [Activitys::class,'create_activity_profile'])->name('create_activity'); 
    Route::post('activity_save', [Activitys::class,'updateOrder'])->name('activity_save'); 
    Route::resource('event', Events::class); 


    Route::resource('/dashboard', Dashboard::class);

    /*Route::get('/dashboard', function () 
    { return view('dashboard');})->name('dashboard');*/
});
