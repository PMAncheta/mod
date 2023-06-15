<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCadetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cadets', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->char('afpsn', 5);
            $table->char('servid', 30)->nullable();
            $table->char('majid', 1)->nullable();
            $table->char('yrgr', 4);
            $table->char('oyrgr', 4);
            $table->char('lname', 16);
            $table->char('fname', 25);
            $table->char('aname', 4)->nullable();
            $table->char('mname', 16)->nullable();
            $table->char('initls', 8)->nullable();
            $table->char('gender', 1);
            $table->dateTime('bdate')->nullable();
            $table->char('bplace', 30)->nullable();
            $table->char('papa', 30)->nullable();
            $table->binary('padead')->nullable();
            $table->char('mama', 30)->nullable();
            $table->binary('madead')->nullable();
            $table->char('guardian', 30)->nullable();
            $table->char('addr1', 60)->nullable();
            $table->char('addr2', 40)->nullable();
            $table->char('zipcode', 4)->nullable();
            $table->char('region', 4)->nullable();
            $table->char('highsch', 30)->nullable();
            $table->float('height')->nullable();
            $table->float('eescore')->nullable();
            $table->decimal('math', 18, 0)->nullable();
            $table->decimal('engl', 18, 0)->nullable();
            $table->decimal('spma', 18, 0)->nullable();
            $table->char('coy', 1)->nullable();
            $table->char('battalion', 1)->nullable();
            $table->char('battalion2', 1)->nullable();
            $table->char('cstat', 1)->nullable();
            $table->char('remarks', 30)->nullable();
            $table->char('pix')->nullable();
            $table->char('dategrad', 20)->nullable();
            $table->char('degree', 20)->nullable();
            $table->char('graduate', 1)->nullable();
            $table->char('password', 10)->nullable();
            $table->char('coybat', 10)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cadets');
    }
}
