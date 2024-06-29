<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $fillable = [
        'kode_ruangan',
        'kode_sesi',
        'nama',
        'kode_jurusan',
        'username',
        'foto',

    ];

    protected $hidden = [
        'created_at', 'updated_at',
    ];

    public function ruangan()
    {
        return $this->belongsTo(Room::class, 'kode_ruangan', 'kode_ruangan');
    }
    public function sesi()
    {
        return $this->belongsTo(Sesi::class, 'kode_sesi', 'kode_sesi');
    }
    public function jurusan()
    {
        return $this->belongsTo(Major::class, 'kode_jurusan', 'kode_jurusan');
    }
}
