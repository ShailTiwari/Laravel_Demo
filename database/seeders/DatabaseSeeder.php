<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
use Illuminate\Support\Str;
use Spatie\Permission\Models\Permission;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
     public function run() {
        $faker = Faker::create();

         foreach (range(1,100) as $index) 
        {
            DB::table('users')->insert([                       
                'name' => $faker->firstName, 
                'email' => $faker->unique()->freeEmail,
                'email_verified_at' => now(),
                'password' => '$10$WQpf4lYexhcp2sPDSJbEhe8RFMHpwiXLM3gjREyGbFi00HWONSAy.', // password
                'remember_token' => Str::random(10),         
                'profile_photo_path' =>'no_image.png'
            ]);


            DB::table('activities')->insert([                       
                'project' =>  $faker->numberBetween($min = 1, $max = 5),
                'type' =>  $faker->numberBetween($min = 1, $max = 5),
                'taskstatus' =>  $faker->numberBetween($min = 1, $max = 5),   
                'order' =>  $faker->numberBetween($min = 1, $max = 5),  
                'summary' => $faker->sentence($nbWords = 3, $variableNbWords = true),
                'description' => $faker->sentence($nbWords = 10, $variableNbWords = true),  
                'assignee' =>  $faker->numberBetween($min = 1, $max = 100),  
                'reporter' =>  $faker->numberBetween($min = 1, $max = 100), 
                'flagged' =>  $faker->numberBetween($min = 1, $max = 5),   
                'labels' =>  $faker->numberBetween($min = 1, $max = 5),  
                'start' => $faker->date($format = 'Y-m-d', $max = '2022-08-24',$min = '2022-08-01'),     
                'options' =>  $faker->numberBetween($min = 1, $max = 5), 
                'key' => $faker->sentence($nbWords = 1, $variableNbWords = true),            
                'icon_picture' =>'no_image.png', 
                'remarks' => $faker->sentence($nbWords = 6, $variableNbWords = true),    
                'isconfirm' => 1,
                'isactive' => 1,
                'isdelete' => 0,
                'inuse' => 1,
                'created_by' => 1,
                'updated_by' => 1
            ]);
             DB::table('attendances')->insert([                       
                'employee_id' => $faker->numberBetween($min = 1, $max = 20) ,                    
                'start' => $faker->date($format = 'Y-m-d', $max = '2022-08-24',$min = '2022-08-01'),                         
                'puncin' => $faker->time($format = 'H:i:s', $max = 'now'),                                          
                'puncout' => $faker->time($format = 'H:i:s', $max = 'now'),                                          
                'work' => $faker->time($format = 'H:i:s', $max = 'now'),                                          
                'break' => $faker->time($format = 'H:i:s', $max = 'now'),                                          
                'overtime' => $faker->time($format = 'H:i:s', $max = 'now'),                                        
                'shifttime' => $faker->time($format = 'H:i:s', $max = 'now'),                  
                'remarks' => $faker->sentence($nbWords = 6, $variableNbWords = true),                 
                'isactive' => 1,
                'isdelete' => 0,
                'inuse' => 1
            ]);

               DB::table('events')->insert([                       
                'title' => $faker->sentence($nbWords = 3, $variableNbWords = true),   
                'start' => $faker->date($format = 'Y-m-d', $max = '2022-08-24',$min = '2022-01-01'),   
                'end' => $faker->date($format = 'Y-m-d', $max = '2022-08-24',$min = '2022-01-01'),                    
                'isactive' => 1,
                'isdelete' => 0,
                'inuse' => 1,
                'created_by' => 1,
                'updated_by' => 1
            ]);


        }

        foreach (range(1,10) as $index) 
        {
                 DB::table('departments')->insert([                       
                'title' => $faker->jobTitle,          
                'description' => $faker->sentence($nbWords = 10, $variableNbWords = true),                 
                'isactive' => 1,
                'isdelete' => 0,
                'inuse' => 1,
                'created_by' => 1,
                'updated_by' => 1
            ]);

                

                  DB::table('holidays')->insert([                       
                'title' => $faker->sentence($nbWords = 3, $variableNbWords = true),
                'description' => $faker->sentence($nbWords = 10, $variableNbWords = true),   
                'start' => $faker->date($format = 'Y-m-d', $max = '2022-12-30',$min = '2022-01-01'),                  
                'isactive' => 1,
                'isdelete' => 0,
                'inuse' => 1,
                'created_by' => 1,
                'updated_by' => 1
            ]);


                  DB::table('projects')->insert([                       
                'title' => $faker->sentence($nbWords = 3, $variableNbWords = true),
                'key' => $faker->sentence($nbWords = 1, $variableNbWords = true),
                'description' => $faker->sentence($nbWords = 10, $variableNbWords = true),           
                'icon_picture' =>'no_image.png',  
                'start' => $faker->date($format = 'Y-m-d', $max = '2022-12-30',$min = '2022-01-01'),  
                'category' => $faker->numberBetween($min = 1, $max = 5),                  
                'lead' => $faker->numberBetween($min = 1, $max = 20),                     
                'default_assigned' => $faker->numberBetween($min = 1, $max = 20),                   
                'isconfirm' => 1,         
                'remarks' => $faker->sentence($nbWords = 6, $variableNbWords = true),               
                'isactive' => 1,
                'isdelete' => 0,
                'inuse' => 1,              
                'options' => 1,
                'created_by' => 1,
                'updated_by' => 1
            ]);



        }




  foreach (range(1,5) as $index) 
        {
  DB::table('flagges')->insert([                       
                'title' => $faker->domainWord,
                'description' => $faker->sentence($nbWords = 10, $variableNbWords = true),                
                'isactive' => 1,
                'isdelete' => 0,
                'inuse' => 1,
                'created_by' => 1,
                'updated_by' => 1
            ]);


  DB::table('issues')->insert([                       
                'title' => $faker->domainWord,
                'description' => $faker->sentence($nbWords = 10, $variableNbWords = true),                
                'isactive' => 1,
                'isdelete' => 0,
                'inuse' => 1,
                'created_by' => 1,
                'updated_by' => 1
            ]);

  DB::table('labels')->insert([                       
                'title' => $faker->domainWord,
                'description' => $faker->sentence($nbWords = 10, $variableNbWords = true),                
                'isactive' => 1,
                'isdelete' => 0,
                'inuse' => 1,
                'created_by' => 1,
                'updated_by' => 1
            ]);

  DB::table('posts')->insert([                    
                'dept_id' => $faker->numberBetween($min = 1, $max = 5),   
                'title' => $faker->jobTitle,   
                'description' => $faker->sentence($nbWords = 10, $variableNbWords = true),  
                'isactive' => 1,
                'isdelete' => 0,
                'inuse' => 1,
                'created_by' => 1,
                'updated_by' => 1
            ]);


  DB::table('project_category')->insert([                           
                'title' => $faker->jobTitle,   
                'description' => $faker->sentence($nbWords = 10, $variableNbWords = true),               
                'isactive' => 1,
                'isdelete' => 0,
                'inuse' => 1
            ]);


  DB::table('task_status')->insert([                           
                'title' => $faker->colorName,   
                'description' => $faker->sentence($nbWords = 10, $variableNbWords = true),               
                'isactive' => 1,
                'isdelete' => 0,
                'inuse' => 1
            ]);


  DB::table('banner_master')->insert([                           
                'title' => $faker->jobTitle,   
                'description' => $faker->sentence($nbWords = 10, $variableNbWords = true),               
                'isactive' => 1,
                'isdelete' => 0,
                'inuse' => 1
            ]);
        }


        /*Role Master*/
            DB::table('roles')->insert([                           
                'name' => 'Admin',   
                'guard_name' =>'web'
            ]);

        /*Setting */
          DB::table('settings')->insert([                       
                'site_name' => $faker->company,
                'company_name' => $faker->company,
                'sort_name' => $faker->company,
                'description' => $faker->catchPhrase,
                'logo' => 'logo.png',
                'image' => 'logo.png',
                'invoice_image' => 'logo.png',
                'address' => $faker->address,
                'state' => $faker->state,
                'zipCode' => $faker->postcode,
                'pan_no' => $faker->swiftBicNumber,
                'gst_no' => $faker->swiftBicNumber,
                'est_info' => $faker->year($max = '2020') ,
                'phone' => $faker->e164PhoneNumber,
                'email' => $faker->companyEmail,
                'owner' => $faker->name,
                'remarks' => $faker->sentence($nbWords = 6, $variableNbWords = true), 
                'gst_no' => $faker->swiftBicNumber,
                'description' => $faker->sentence($nbWords = 10, $variableNbWords = true), 
                'isactive' => 1,
                'isdelete' => 0,
                'inuse' => 1,    
                'created_by' => 1,
                'updated_by' => 1
            ]);


           $permissions = [
           'role-list',
           'role-create',
           'role-edit',
           'role-delete',
           'product-list',
           'product-create',
           'product-edit',
           'product-delete'
        ];

     

        foreach ($permissions as $permission) {

             Permission::create(['name' => $permission]);

        }


    }
}
