<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnswersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('answers', function (Blueprint $table) {
            $table->id();
            $table->integer('exam_id');
            $table->string('username');
            $table->string('kode_kategori');
            $table->string('kode_kursus');
            $table->integer('remaining_time_minute');
            $table->integer('remaining_time_second');
            $table->text('question_id');
            $table->integer('total_question');
            $table->text('current_answer');
            $table->integer('score')->nullable();

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
        Schema::dropIfExists('answers');
    }
}
