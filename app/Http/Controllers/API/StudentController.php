<?php

namespace App\Http\Controllers\API;

use App\Faculty;
use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Major;
use App\Result;
use App\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $data = DB::table('students as a')
            ->join('majors as d', 'a.kode_jurusan', '=', 'd.kode_jurusan')
            ->join('faculties as e', 'd.kode_fakultas', '=', 'e.kode_fakultas')
            ->join('users as f', 'a.username', '=', 'f.username')
            ->select('a.nama', 'a.username', 'a.foto', 'a.kode_jurusan',  'd.nama_jurusan', 'e.kode_fakultas', 'e.nama_fakultas')
            ->orderBy('a.id', 'ASC')
            ->get();

        // $data =  Student::with('jurusan')->get();

        // $query = 'SELECT 
        //     a.*,
        //     b.nama_jurusan
        //     FROM students a
        //     INNER JOIN majors b
        //         ON a.kode_jurusan = b.kode_jurusan
        // ';
        // $data = DB::select(DB::raw($query));
        // dd($data);

        return ResponseFormatter::success(
            $data,
            'Data peserta berhasil diambil'
        );
    }

    public function prodi()
    {
        $data = Major::get();
        return ResponseFormatter::success(
            $data,
            'Data prodi berhasil diambil'
        );
    }

    public function fakultas()
    {
        $data = Faculty::get();
        return ResponseFormatter::success(
            $data,
            'Data fakultas berhasil diambil'
        );
    }

    public function kepribadian()
    {
        $data = DB::table('students as a')->select('a.nama', 'a.username', 'a.kode_jurusan',  'd.nama_jurusan', 'e.kode_fakultas', 'e.nama_fakultas', 'f.r', 'f.i', 'f.a', 'f.s', 'f.e', 'f.c')
            ->join('majors as d', 'a.kode_jurusan', '=', 'd.kode_jurusan')
            ->join('faculties as e', 'd.kode_fakultas', '=', 'e.kode_fakultas')
            ->join('results as f', 'a.username', '=', 'f.username')
            ->orderBy('a.id', 'ASC')
            ->get();
        return ResponseFormatter::success(
            $data,
            'Data Kepribadian berhasil diambil'
        );
    }

    public function minat()
    {
        $data = DB::table('students as a')->select('a.nama', 'a.username', 'a.kode_jurusan',  'd.nama_jurusan', 'e.kode_fakultas', 'e.nama_fakultas', 'f.score')
            ->leftJoin('majors as d', 'a.kode_jurusan', '=', 'd.kode_jurusan')
            ->leftJoin('faculties as e', 'd.kode_fakultas', '=', 'e.kode_fakultas')
            ->leftJoin('answers as f', 'a.username', '=', 'f.username')
            ->where('f.kode_kursus', 'minat')
            ->orderBy('a.id', 'ASC')
            ->get();

        return ResponseFormatter::success(
            $data,
            'Data Minat berhasil diambil'
        );
    }
    public function akademik()
    {
        $data = DB::table('view_hasil')
            ->get();

        return ResponseFormatter::success(
            $data,
            'Data Minat berhasil diambil'
        );
    }
}
