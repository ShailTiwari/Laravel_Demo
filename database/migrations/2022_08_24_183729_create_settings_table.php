<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('settings', function (Blueprint $table) { 
            $table->id();
            $table->string('site_name')->nullable();
            $table->string('company_name')->nullable();
            $table->string('sort_name')->nullable();
            $table->text('description')->nullable();
            $table->string('logo')->default('no_image.png');
            $table->string('image')->default('no_image.png');
            $table->string('invoice_image')->default('no_image.png');
            $table->text('address')->nullable();
            $table->string('state')->nullable();
            $table->string('zipCode')->nullable();
            $table->string('pan_no')->nullable();
            $table->string('gst_no')->nullable();
            $table->string('est_info')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
            $table->string('owner')->nullable();
            $table->text('remarks')->nullable();
            $table->integer('isactive')->default(1);
            $table->integer('isdelete')->default(0);
            $table->integer('inuse')->default(1);
            $table->integer('created_by')->nullable();
            $table->integer('updated_by')->nullable();
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
        Schema::dropIfExists('settings');
    }
}
