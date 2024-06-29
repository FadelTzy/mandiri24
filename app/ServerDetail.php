<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ServerDetail extends Model
{
    protected $fillable = [
        'username_server',
        'username_pengawas'
    ];
}
