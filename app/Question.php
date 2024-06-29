<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    protected $fillable = [
        'id',
        'kode_kursus',
        'soal',
        'file_soal',
        'opsi_1',
        'file_1',
        'poin_1',
        'opsi_2',
        'file_2',
        'poin_2',
        'opsi_3',
        'file_3',
        'poin_3',
        'opsi_4',
        'file_4',
        'poin_4',
        'opsi_5',
        'file_5',
        'poin_5',
        'current_answer'
    ];
}
