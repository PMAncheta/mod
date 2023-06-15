<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCadetcrsesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cadetcrses', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('courses_id');
            $table->bigInteger('cadets_id');
            $table->bigInteger('sections_id');
            $table->string('term', 1);
            $table->string('acadyr', 4);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cadetcrses');
    }
}
