<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Exam extends Model
{
    protected $fillable = [
        'id',  'kode_kategori', 'ujian_mulai', 'ujian_selesai', 'token', 'kode_ruangan', 'kode_sesi'
    ];

    public function category()
    {
        return $this->belongsTo(Category::class, 'kode_kategori', 'kode_kategori');
    }

    public function room()
    {
        return $this->belongsTo(Room::class, 'kode_ruangan', 'kode_ruangan');
    }
    public function session()
    {
        return $this->belongsTo(Sesi::class, 'kode_sesi', 'kode_sesi');
    }
}
