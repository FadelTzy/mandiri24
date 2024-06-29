<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function login(Request $request)
    {
        try {
            #validasi input
            $request->validate([
                'username' => 'required',
                'password' => 'required'
            ]);
            # mengecek credentials (login)
            $credentials = request(['username', 'password']);


            if (!Auth::attempt($credentials)) {
                return ResponseFormatter::error([
                    'message' => 'Unauthorized'
                ], 'Authentication Failed', 500);
            }

            # Jika hash tidak sesuai
            $user = User::where('username', $request->username)->first();
            // return $user;
            if (!Hash::check($request->password, $user->password, [])) {
                throw new \Exception('Invalid Credentials');
            }





            // cek cookie
            // username -> 
            // 12345




            # jika berhasil maka loginkan
            $tokenResult = $user->createToken('Personal Access Token');
            $token = $tokenResult->token;
            $token->save();

            return ResponseFormatter::success([
                'access_token' => $tokenResult->accessToken,
                'token_type' => 'Bearer',
                'user' => $user
            ], 'Authenticated');
        } catch (Exception $error) {
            return ResponseFormatter::error([
                'message' => 'Something went error',
                'error' => $error,

            ], 'Authentication Failed', 500);
        }
    }

    public function fetch(Request $request)
    {
        return $request->user();
    }
}
