<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sections', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('secrank', 10);
            $table->string('sec', 2);
            $table->char('afpsn', 5)->nullable();
            $table->char('servid', 30)->nullable();
            $table->char('yrgr', 4)->nullable();
            $table->char('coy', 1)->nullable();
            $table->string('term', 1)->nullable();
            $table->string('acadyr', 4)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sections');
    }
}
