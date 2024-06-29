<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStatusServersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('status_servers', function (Blueprint $table) {
            $table->id();
            $table->string('username')->nullable();
            $table->string('kode_ruangan')->nullable();
            $table->string('kode_sesi')->nullable();
            $table->integer('jml_jwb_lokal')->nullable();
            $table->integer('jml_jwb_pusat')->nullable();
            $table->integer('jmh_kehadiran')->nullable();
            $table->dateTime('tgl_ujian', 0);
            $table->enum('status_memenuhi', [0, 1]);
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
        Schema::dropIfExists('status_servers');
    }
}
