<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->id();
            $table->string('title')->nullable();
            $table->string('key')->nullable();
            $table->date('start')->nullable();
            $table->text('description')->nullable();
            $table->text('icon_picture')->default('1.jpg');
            $table->integer('category')->nullable();
            $table->integer('lead')->nullable();
            $table->integer('default_assigned')->nullable();
            $table->integer('isconfirm')->nullable();
            $table->text('remarks')->nullable();
            $table->integer('isactive')->default(1);
            $table->integer('isdelete')->default(1);
            $table->integer('inuse')->default(1);
            $table->json('options')->nullable();
            $table->integer('created_by')->default(1);
            $table->integer('updated_by')->default(1);
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
        Schema::dropIfExists('projects');
    }
}
