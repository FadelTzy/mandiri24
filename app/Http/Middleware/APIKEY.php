<?php

namespace App\Http\Middleware;

use App\Helpers\ResponseFormatter;
use Closure;

class APIKEY
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {



        $token = $request->header('x-api-key');
        $key = 'CAT-Riset-UNM----';

        if ($token != $key) :
            return response()->json(['message' => 'App Key Tidak Ditemukan'], 401);
        endif;

        return $next($request);
    }
}
