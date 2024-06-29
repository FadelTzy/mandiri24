<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    protected $fillable = [
        'kode_ruangan', 'kode_sesi', 'nama', 'username'
    ];

    public function room()
    {
        return $this->belongsTo(Room::class, 'kode_ruangan', 'kode_ruangan');
    }
    public function session()
    {
        return $this->belongsTo(Sesi::class, 'kode_sesi', 'kode_sesi');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'username', 'username');
    }
}
