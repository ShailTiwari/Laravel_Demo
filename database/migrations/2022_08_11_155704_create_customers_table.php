<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCustomersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customers', function (Blueprint $table) {
            $table->id(); 
            $table->string('name')->nullable();
            $table->string('lastname')->nullable();
            $table->text('profile_picture')->nullable();
            $table->text('address')->nullable();
            $table->text('state_code')->nullable();
            $table->integer('pincode')->nullable();
            $table->text('phone_no')->nullable();
            $table->text('aadhar_no')->nullable();
            $table->text('pan_no')->nullable();
            $table->text('gst_no')->nullable();
            $table->text('start_from')->nullable();
            $table->date('dob')->nullable();
            $table->integer('department')->nullable();
            $table->double('turnover', 15, 8);
            $table->integer('post')->nullable();
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
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
        Schema::dropIfExists('customers');
    }
}
