<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;
use Carbon\Carbon;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
    if (Schema::hasTable('settings')) 
      {
         $currentTime = Carbon::now();
         $user_logs = DB::select('SELECT a.id,a.action_id,a.module_id,a.title,a.description,a.created_at,b.name,b.profile_photo_path from userlogs as a left join users as b on b.id=a.created_by order by id desc limit 5');
         $settings = DB::select('SELECT * from settings where id=1');
         $sidebars = DB::select('SELECT * from sidebars');

            View::share('main_settings', $settings);
            View::share('sidebars', $sidebars);
            View::share('user_logs', $user_logs);
            View::share('currentTime', $currentTime);
        }
    }
}
