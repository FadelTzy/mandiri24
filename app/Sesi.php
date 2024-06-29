<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sesi extends Model
{
    protected $fillable = [
        'nama_sesi',
        'kode_sesi',
    ];
}
