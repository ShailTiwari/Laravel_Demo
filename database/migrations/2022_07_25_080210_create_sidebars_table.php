<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSidebarsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sidebars', function (Blueprint $table) {
            $table->id();
            $table->integer('parent_id')->default(0);;
            $table->string('icon')->nullable();
            $table->string('name')->nullable();
            $table->string('route')->nullable();
            $table->integer('order')->default(0);
            $table->integer('Isactive')->default(1);
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
        Schema::dropIfExists('sidebars');
    }
}


/*
INSERT INTO `hrm`.`sidebars` (`id`, `name`, `route`, `Isactive`) VALUES ('1', 'Dashboard', 'home', '1');
INSERT INTO `hrm`.`sidebars` (`id`, `name`, `route`, `Isactive`) VALUES ('2', 'Users', 'user', '1');
INSERT INTO `hrm`.`sidebars` (`id`, `name`, `route`, `Isactive`) VALUES ('3', 'Department', 'department', '1');
INSERT INTO `hrm`.`sidebars` (`id`, `name`, `route`, `Isactive`) VALUES ('4', 'Employee', 'employee', '1');
INSERT INTO `hrm`.`sidebars` (`id`, `name`, `route`, `Isactive`) VALUES ('5', 'Activity', 'activity', '1');
INSERT INTO `hrm`.`sidebars` (`id`, `name`, `route`, `Isactive`) VALUES ('6', 'Holidays', 'holiday', '1');
INSERT INTO `hrm`.`sidebars` (`id`, `name`, `route`, `Isactive`) VALUES ('7', 'Event', 'event', '1');
INSERT INTO `hrm`.`sidebars` (`id`, `name`, `route`, `Isactive`) VALUES ('8', 'Payroll', 'payroll', '1');
INSERT INTO `hrm`.`sidebars` (`id`, `name`, `route`, `Isactive`) VALUES ('9', 'Accounts', 'accunts', '1');
INSERT INTO `hrm`.`sidebars` (`id`, `name`, `route`, `Isactive`) VALUES ('10', 'Reports', 'report', '1');
INSERT INTO `hrm`.`sidebars` (`id`, `name`, `route`, `Isactive`) VALUES ('11', 'Projects', 'project', '1');

'1', '0', 'home', 'Dashboard', 'home', '1', '1', '', ''
'2', '0', 'layout', 'User', 'user', '2', '0', '', ''
'3', '0', 'dialpad-alt', 'Department', 'department', '3', '1', '', ''
'4', '0', 'user', 'Employee', 'employee', '4', '1', '', ''
'5', '11', 'car', 'Activity', 'activity', '6', '1', '', ''
'6', '0', 'calendar-x', 'Holiday', 'holiday', '8', '1', '', ''
'7', '0', 'calendar', 'Event', 'event', '9', '1', '', ''
'8', '0', 'pen', 'Payroll', 'payroll', '10', '1', '', ''
'9', '0', 'money', 'Accounts', 'accunts', '11', '1', '', ''
'10', '0', 'file', 'Reports', 'report', '12', '1', '', ''
'11', '0', 'layout', 'Project', 'project', '5', '1', '', ''
'12', '0', 'clipboard', 'Attendance', 'Attendance', '7', '1', '', ''
'13', '0', 'setting', 'Setting', 'setting', '13', '1', '', ''

*/