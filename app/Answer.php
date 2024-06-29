<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    protected $fillable = [
        'exam_id', 'username', 'total_question', 'remaining_time_minute', 'remaining_time_second', 'kode_kursus', 'question_id', 'current_answer', 'score', 'kode_kategori'
    ];

    protected $hidden = [
        'created_at', 'updated_at',
    ];


}


