<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StatusServer extends Model
{
    protected $fillable = [
        'username',
        'kode_ruangan',
        'kode_sesi',
        'jml_jwb_lokal',
        'jml_jwb_pusat',
        'jmh_kehadiran',
        'tgl_ujian',
        'status_memenuhi',
        'total_peserta'
    ];

    public function ruangan()
    {
        return $this->belongsTo(Room::class, 'kode_ruangan', 'kode_ruangan');
    }
    public function server()
    {
        return $this->belongsTo(Server::class, 'username', 'username');
    }
    public function sesi()
    {
        return $this->belongsTo(Sesi::class, 'kode_sesi', 'kode_sesi');
    }
}
