<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Result extends Model
{

    protected $fillable = [
        'username',
        'r',
        'i',
        'a',
        's',
        'e',
        'c',
    ];
    protected $hidden = [
        'created_at', 'updated_at',
    ];
}
