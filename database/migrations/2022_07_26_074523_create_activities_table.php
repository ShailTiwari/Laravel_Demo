<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateActivitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('activities', function (Blueprint $table) {
            $table->id();
            $table->integer('project')->nullable();
            $table->integer('type')->nullable();
            $table->integer('taskstatus')->nullable();
            $table->integer('order')->nullable();
            $table->string('summary')->nullable();
            $table->text('description')->nullable();
            $table->integer('assignee')->default(0);
            $table->integer('reporter')->default(0);
            $table->integer('flagged')->default(0);
            $table->integer('labels')->default(0);
            $table->date('start')->nullable();
            $table->integer('options')->default(0);
            $table->string('key')->nullable();
            $table->string('icon_picture')->default('no_image.png');
            $table->integer('isconfirm')->default(1);
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
        Schema::dropIfExists('activities');
    }
}
