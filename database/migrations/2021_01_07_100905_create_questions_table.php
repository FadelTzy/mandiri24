<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('questions', function (Blueprint $table) {
            $table->id();
            $table->string('kode_kursus');
            $table->text('soal')->nullable();
            $table->text('file_soal')->nullable();
            $table->text('opsi_1')->nullable();
            $table->text('file_1')->nullable();
            $table->text('poin_1')->nullable();
            $table->text('opsi_2')->nullable();
            $table->text('file_2')->nullable();
            $table->text('poin_2')->nullable();
            $table->text('opsi_3')->nullable();
            $table->text('file_3')->nullable();
            $table->text('poin_3')->nullable();
            $table->text('opsi_4')->nullable();
            $table->text('file_4')->nullable();
            $table->text('poin_4')->nullable();
            $table->text('opsi_5')->nullable();
            $table->text('file_5')->nullable();
            $table->text('poin_5')->nullable();
            $table->text('current_answer');
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
        Schema::dropIfExists('questions');
    }
}
