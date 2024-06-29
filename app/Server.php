<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Server extends Model
{
    protected $fillable = [
        'username',
        'nama',
        'is_active'
    ];
}
