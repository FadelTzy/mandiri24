<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category_course extends Model
{
    protected $fillable = [
        'id', 'exam_id', 'kode_kursus', 'total_question', 'working_time', 'random'
    ];

    public function course()
    {
        return $this->belongsTo(Course::class, 'kode_kursus', 'kode_kursus');
    }
}
