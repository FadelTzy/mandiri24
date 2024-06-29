<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['middleware' => 'auth:api'], function () {
    // Route::get('logout', 'AuthController@logout');
    Route::get('user', 'API\UserController@fetch');
    Route::get('get-soal', 'API\ServerController@soal');
    Route::get('get-user', 'API\ServerController@get_user');
    Route::get('jumlah', 'API\ServerController@jumlah');
    Route::get('total-jawaban', 'API\ServerController@total_jawaban');
    Route::post('kirim-jawaban', 'Admin\ServerController@hasil');
    Route::get('rollback', 'API\ServerController@rollback');
});

Route::get('peserta', 'API\StudentController@index');
Route::get('prodi', 'API\StudentController@prodi');
Route::get('fakultas', 'API\StudentController@fakultas');
Route::get('akademik', 'API\StudentController@akademik');


Route::post('tes', 'API\ServerController@tes');
Route::post('login', 'API\UserController@login');
Route::get('logout', 'API\UserController@logout');
