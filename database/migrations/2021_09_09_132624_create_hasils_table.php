<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHasilsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hasils', function (Blueprint $table) {
            $table->id();
            $table->string('username')->nullable();
            $table->string('kode_kursus')->nullable();
            $table->integer('1')->nullable();
            $table->integer('2')->nullable();
            $table->integer('3')->nullable();
            $table->integer('4')->nullable();
            $table->integer('5')->nullable();
            $table->integer('6')->nullable();
            $table->integer('7')->nullable();
            $table->integer('8')->nullable();
            $table->integer('9')->nullable();
            $table->integer('10')->nullable();
            $table->integer('11')->nullable();
            $table->integer('12')->nullable();
            $table->integer('13')->nullable();
            $table->integer('14')->nullable();
            $table->integer('15')->nullable();
            $table->integer('16')->nullable();
            $table->integer('17')->nullable();
            $table->integer('18')->nullable();
            $table->integer('19')->nullable();
            $table->integer('20')->nullable();
            $table->integer('21')->nullable();
            $table->integer('22')->nullable();
            $table->integer('23')->nullable();
            $table->integer('24')->nullable();
            $table->integer('25')->nullable();
            $table->integer('26')->nullable();
            $table->integer('27')->nullable();
            $table->integer('28')->nullable();
            $table->integer('29')->nullable();
            $table->integer('30')->nullable();
            $table->integer('31')->nullable();
            $table->integer('32')->nullable();
            $table->integer('33')->nullable();
            $table->integer('34')->nullable();
            $table->integer('35')->nullable();
            $table->integer('36')->nullable();
            $table->integer('37')->nullable();
            $table->integer('38')->nullable();
            $table->integer('39')->nullable();
            $table->integer('40')->nullable();
            $table->integer('41')->nullable();
            $table->integer('42')->nullable();
            $table->integer('43')->nullable();
            $table->integer('44')->nullable();
            $table->integer('45')->nullable();
            $table->integer('46')->nullable();
            $table->integer('47')->nullable();
            $table->integer('48')->nullable();
            $table->integer('49')->nullable();
            $table->integer('50')->nullable();
            $table->integer('51')->nullable();
            $table->integer('52')->nullable();
            $table->integer('53')->nullable();
            $table->integer('54')->nullable();
            $table->integer('55')->nullable();
            $table->integer('56')->nullable();
            $table->integer('57')->nullable();
            $table->integer('58')->nullable();
            $table->integer('59')->nullable();
            $table->integer('60')->nullable();

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
        Schema::dropIfExists('hasils');
    }
}
