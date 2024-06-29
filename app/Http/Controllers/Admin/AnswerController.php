<?php

namespace App\Http\Controllers\Admin;

use App\Answer;
use App\Http\Controllers\Controller;
use App\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class AnswerController extends Controller
{

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Answer::get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {


                    $btn = '
                    <div class="d-flex justify-content-center">
                    <button type="button" class="btn btn-icon btn-icon-primary px-3" onclick="edit(\'' . $row->id . '\'); return false;"  ><i
                            class="fas fa-pen" aria-hidden="true"></i></button>
                    <button type="button" class="btn btn-icon btn-icon-danger px-3" onclick="hapus(\'' . $row->id . '\'); return false;"  ><i
                            class="fas fa-trash" aria-hidden="true"></i></button>
                </div>

                ';
                    return $btn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.hasil');
    }



    public function akademik(Request $request)
    {

        if ($request->ajax()) {
            $data = DB::table('students as a')->select('a.nama', 'a.username', 'a.kode_jurusan',  'd.nama_jurusan','f.score')
            // $data = DB::table('students as a')->select('a.nama', 'a.username', 'a.kode_jurusan',  'd.nama_jurusan', 'e.kode_fakultas', 'e.nama_fakultas', 'f.score')
                ->join('majors as d', 'a.kode_jurusan', '=', 'd.kode_jurusan')
                // ->join('faculties as e', 'd.kode_fakultas', '=', 'e.kode_fakultas')
                ->join('answers as f', 'a.username', '=', 'f.username')
                ->where('kode_kursus', '<>', 'minat')
                ->where('kode_kursus', '<>', 'kep1')
                ->where('kode_kursus', '<>', 'kep2')
                ->where('kode_kursus', '<>', 'kep3')
                ->where('kode_kursus', '<>', 'kep4')

                ->orderBy('a.id', 'ASC')
                ->get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.hasil.akademik');
    }
    public function minat(Request $request)
    {
        if ($request->ajax()) {
            $data =  DB::table('students as a')->select('a.nama', 'a.username', 'a.kode_jurusan',  'd.nama_jurusan', 'e.kode_fakultas', 'e.nama_fakultas', 'f.score')
                ->leftJoin('majors as d', 'a.kode_jurusan', '=', 'd.kode_jurusan')
                ->leftJoin('faculties as e', 'd.kode_fakultas', '=', 'e.kode_fakultas')
                ->leftJoin('answers as f', 'a.username', '=', 'f.username')
                ->where('f.kode_kursus', 'minat')
                ->orderBy('a.id', 'ASC')
                ->get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.hasil.minat');
    }
    public function kepribadian(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('students as a')->select('a.nama', 'a.username', 'a.kode_jurusan',  'd.nama_jurusan', 'e.kode_fakultas', 'e.nama_fakultas', 'f.r', 'f.i', 'f.a', 'f.s', 'f.e', 'f.c')
                ->join('majors as d', 'a.kode_jurusan', '=', 'd.kode_jurusan')
                ->join('faculties as e', 'd.kode_fakultas', '=', 'e.kode_fakultas')
                ->join('results as f', 'a.username', '=', 'f.username')
                ->orderBy('a.id', 'ASC')
                ->get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.hasil.kepribadian');
    }
}
