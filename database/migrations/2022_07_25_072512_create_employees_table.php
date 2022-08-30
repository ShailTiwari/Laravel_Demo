<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->id();  
            $table->string('github_id')->nullable();
            $table->string('google_id')->nullable();
            $table->string('linkedin_id')->nullable();
            $table->string('amazon_id')->nullable();
            $table->string('instagram_id')->nullable();
            $table->string('flipkart_id')->nullable();
            $table->string('twiter_id')->nullable();
            $table->string('email')->unique();
            $table->rememberToken();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('name')->nullable();
            $table->string('lastname')->nullable();
            $table->text('profile_picture')->default('profile.jpg');
            $table->date('dob')->nullable();
            $table->text('address')->nullable();
            $table->string('phone_no')->nullable();
            $table->string('company')->nullable();
            $table->integer('department')->nullable();
            $table->integer('post');
            $table->double('salary', 15, 8);
            $table->integer('isactive')->default(1);
            $table->integer('isdelete')->default(0);
            $table->integer('inuse')->default(1);
            $table->integer('created_by');
            $table->integer('updated_by');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employees');
    }
}
