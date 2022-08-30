<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAttendancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('attendances', function (Blueprint $table) {
            $table->id();
            $table->integer('employee_id')->nullable();
            $table->date('start')->nullable();
            $table->time('puncin', $precision = 0);
            $table->time('puncout', $precision = 0);
            $table->time('work', $precision = 0);
            $table->time('break', $precision = 0);
            $table->time('overtime', $precision = 0);
            $table->time('shifttime', $precision = 0);
            $table->text('remarks')->nullable();
            $table->integer('isactive')->default(1);
            $table->integer('isdelete')->default(0);
            $table->integer('inuse')->default(1);
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
        Schema::dropIfExists('attendances');
    }
}
