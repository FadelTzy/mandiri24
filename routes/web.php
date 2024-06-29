<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('students.beranda');
});
Route::get('/petunjuk', function () {
    return view('students.petunjuk');
});

Route::get('/admin/login', function () {
    return view('admin.login');
});
Route::get('/server/login', function () {
    return view('server.login');
});


Route::get('/reset/login', function () {
    return view('students.reset-login');
});




Auth::routes();


Route::get('/beranda', 'HomeController@index')->name('home');

Route::get('/curltes', 'API\ServerController@curltes')->name('home');


// server
Route::post('login-server', 'Server\ServerController@login');




Route::group(['middleware' => ['web', 'auth', 'roles']], function () {
    Route::group(['roles' => 'Admin'], function () {
        Route::resource('user', 'Admin\UserController');
        Route::get('user-peserta', 'Admin\StudentController@user_peserta');
        Route::get('user-server', 'Admin\ServerController@user_server');
        Route::get('user-pengawas', 'Admin\TeacherController@user_pengawas');
        Route::resource('ruangan', 'Admin\RoomController');
        Route::resource('sesi', 'Admin\SessionController');
        Route::resource('kategori', 'Admin\CategoryController');
        Route::resource('pengawas', 'Admin\TeacherController');
        Route::resource('kursus', 'Admin\CourseController');

        Route::resource('server', 'Admin\ServerController');
        Route::get('/server/detail/{kode}', 'Admin\ServerController@detail_server')->name('detail_server');
        Route::get('/semua-data-pengawas', 'Admin\ServerController@semua_data_pengawas')->name('semua_data_pengawas');
        Route::get('/data-pengawas-server/{kode}', 'Admin\ServerController@data_pengawas_server')->name('data-pengawas-server');
        Route::delete('/pengawas-server/{kode}', 'Admin\ServerController@hapus');
        Route::delete('/hapus-pengawas-server/{kode}', 'Admin\ServerController@hapus');
        Route::post('/tambah-pengawas-server', 'Admin\ServerController@tambah');

        Route::get('/status-server', 'Admin\ServerController@status_server');
        Route::post('/status-server', 'Admin\ServerController@status_server');


        #peserta
        Route::post('import-peserta', 'Admin\StudentController@import_student');
        Route::resource('siswa', 'Admin\StudentController');

        #soal
        #1
        Route::get('/kursus-soal', 'Admin\QuestionController@soal')->name('Soal');
        #2
        Route::get('/mapel-soal/soal/{kode}', 'Admin\QuestionController@index');




        Route::resource('question', 'Admin\QuestionController');
        Route::post('import-soal', 'Admin\QuestionController@import_soal');
        Route::post('image/upload/store', 'Admin\QuestionController@fileStore');
        Route::get('/mapel-soal/upload-file', function () {
            return view('admin.soal.upload-file');
        });

        #kepribadian
        Route::get('/kepribadian/soal/{kode}', 'Admin\QuestionController@kepribadian');
        Route::get('rollback-kepribadian/{kode}', 'Admin\QuestionController@rollback_kepribadian');

        #jadwal
        Route::resource('jadwal-ujian', 'Admin\ExamController');
        Route::get('/minat/{kode}', 'Admin\ExamController@minat');
        #1
        Route::get('/jadwal-ujian/mapel/{kode}', 'Admin\CategoryCourseController@index')->name('Jadwal->mapel');
        Route::resource('category', 'Admin\CategoryCourseController');
        Route::get('/jumlah-soal/{kode}', 'Admin\CategoryCourseController@jumlah_soal');

        Route::resource('hasil-ujian', 'Admin\AnswerController');
        Route::get('akademik', 'Admin\AnswerController@akademik');
        Route::post('akademik', 'Admin\AnswerController@akademik');
        Route::get('minat', 'Admin\AnswerController@minat');
        Route::post('minat', 'Admin\AnswerController@minat');
        Route::get('kepribadian', 'Admin\AnswerController@kepribadian');
        Route::post('kepribadian', 'Admin\AnswerController@kepribadian');

        # proses hasil
        Route::post('proses-minat', 'Admin\ResultController@proses_minat');
        Route::post('proses-kepribadian', 'Admin\ResultController@proses_kepribadian');
        Route::post('proses-akademik', 'Admin\ResultController@proses_akademik');
    });

    # role peserta
    Route::group(['roles' => 'Peserta'], function () {

        Route::get('/mulai-ujian', 'Student\StudentController@mulai_ujian');
        Route::get('/subtes/{kode}', 'Student\StudentController@subtes');
        Route::get('/selesai', function () {
            return view('students.finish');
        });

        Route::get('/token', 'Student\StudentController@token');
        Route::post('/token', 'Student\StudentController@check_token');



        Route::get('/tutorial-ujian', 'Student\StudentController@tutorial');
        Route::post('/jawab-soal', 'Student\ExamController@index');
        // Route::get('/jawab-soal', 'Student\ExamController@index');
        Route::post('/get-soal', 'Student\ExamController@get_soal');
        Route::post('/save-time', 'Student\ExamController@save_time');
        Route::post('/save-answer', 'Student\ExamController@save_answer');
        Route::post('/save-time-finish', 'Student\ExamController@save_time_finish');
    });

    #role pengawas
    Route::group(['roles' => 'Pengawas'], function () {
        Route::get('/kehadiran', 'Teacher\TeacherController@kehadiran');
        Route::post('/kehadiran', 'Teacher\TeacherController@kehadiran');
        Route::get('/token-ujian', 'Teacher\TeacherController@token');
        Route::post('/hadir-semua', 'Teacher\TeacherController@hadir_semua');
        Route::post('/hadir', 'Teacher\TeacherController@hadir');
        Route::post('/reset-ip', 'Teacher\TeacherController@reset_ip');
        Route::post('/lihat-foto', 'Teacher\TeacherController@lihat_foto');
    });

    #role server
    Route::group(['roles' => 'Server'], function () {

        Route::get('/sinkronisasi', 'Server\ServerController@sinkronisasi');
        Route::get('/sinkron-hasil', 'Server\ServerController@hasil');
        Route::get('/sinkron-soal', 'Server\ServerController@soal');

        Route::get('/pengawas-user', 'Server\ServerController@user_pengawas');
        Route::post('/pengawas-user', 'Server\ServerController@user_pengawas');

        Route::get('/download-soal', 'Server\SinkronisasiController@download_soal');
        Route::get('/sinkronisasi-user', 'Server\SinkronisasiController@sinkronisasi_user');
        Route::get('/get-jumlah', 'Server\SinkronisasiController@get_jumlah');
        Route::get('/get-rollback', 'Server\SinkronisasiController@get_rollback');
        Route::get('/rollback/{kode}', 'Server\ServerController@rollback');

        Route::get('/total-jawaban', 'Server\SinkronisasiController@total_jawaban');
        Route::post('/kirim-hasil-jawaban', 'Server\ServerController@kirim_jawaban');
    });
});
