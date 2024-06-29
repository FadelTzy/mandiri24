<?php

namespace App\Http\Controllers\Student;

use App\Category;
use App\Category_course;
use App\Exam;
use App\Http\Controllers\Controller;
use App\Student;
use Carbon\Carbon;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StudentController extends Controller
{
    public function __construct()
    {
        date_default_timezone_set('Asia/Makassar');
    }
    public function mulai_ujian()
    {
        $kategori = Category::all();
        return view('students.mulai-ujian', ['kategori' => $kategori]);
    }
    public function tutorial()
    {
        $student = Student::where('username', Auth::user()->username)->first();
        $exam = Exam::where('kode_ruangan', $student['kode_ruangan'])->where('kode_sesi', $student['kode_sesi'])->first();
        $category = Category::where('kode_kategori', $exam['kode_kategori'])->first();
        // erroo jika tidak memiliki 
        return view('students.tutorial');
    }

    public function token()
    {

        $student = Student::where('username', Auth::user()->username)->first();
        $exam = Exam::where('kode_ruangan', $student['kode_ruangan'])->where('kode_sesi', $student['kode_sesi'])->first();
        $category = Category::where('kode_kategori', $exam['kode_kategori'])->first();
        $course = Category_course::where('exam_id', $exam['id'])->with('course')->get();
        return view('students.token', ['course' => $course, 'category' => $category, 'exam' => $exam]);
    }

    public function check_token(Request $request)
    {

        date_default_timezone_set('Asia/Makassar');
        $token = $request->token;


        $student = Student::where('username', Auth::user()->username)->first();
        #aktivasi user 
        if ($student->status == 1) {
            $exam = Exam::where('kode_ruangan', $student['kode_ruangan'])->where('kode_sesi', $student['kode_sesi'])->first();
            #cek tanggal ujian
            $mulai_ujian =  strtotime($exam->ujian_mulai);
            $selesai_ujian =  strtotime($exam->ujian_selesai);
            $hari_ini =  strtotime(date('Y-m-d H:i:s'));
            if ($hari_ini > $mulai_ujian && $hari_ini < $selesai_ujian) {

                $check_token = Exam::where('kode_ruangan', $student['kode_ruangan'])->where('kode_sesi', $student['kode_sesi'])->where('token', $token)->first();
                if ($check_token['token'] == $token) {
                    if ($token) {
                        $return = array(
                            'status'    => true,
                            'message'    => 'good',
                        );
                    } else {
                        $return = array(
                            'status'    => false,
                            'message'    => 'Token Kosong !!!',
                        );
                    }
                } else {
                    $return = array(
                        'status'    => false,
                        'message'    => 'Token yang anda masukan salah, mohon diperiksa !!!',
                    );
                }
            } else {
                $return = array(
                    'status'    => false,
                    // 'message'    => date('Y-m-d H:i:s', $hari_ini),
                    'message'    => 'Anda Tidak memiliki jadwal ujian / Jadwal ujian Anda selesai',
                );
            }
        } else {
            $return = array(
                'status'    => false,
                'message'    => 'Akun anda belum aktif',
            );
        }

        return response()->json($return);
    }

    public function subtes()
    {
        return view('students.subtes');
    }
}
