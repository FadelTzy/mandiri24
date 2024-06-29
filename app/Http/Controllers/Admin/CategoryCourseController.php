<?php

namespace App\Http\Controllers\Admin;

use App\Category_course;
use App\Http\Controllers\Controller;
use App\Question;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class CategoryCourseController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request, $id)
    {
        if ($request->ajax()) {
            $data = Category_course::where('exam_id', $id)->with('course')->get();
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
                ->addColumn('acak', function ($row) {
                    if ($row->random == 1) {
                        return 'Acak';
                    } else {
                        return 'Urut';
                        # code...
                    }
                })
                ->addColumn('kursus', function ($row) {
                    return $row->course->kode_kursus . '-' .  $row->course->nama_kursus;
                })






                ->rawColumns(['action', 'acak', 'kursus'])
                ->make(true);
        }
        return view('admin.jadwal.kursus');
    }


    public function store(Request $request)
    {

        $request->validate([
            'kode_kursus' =>  'required',
            'total_question' => 'required|numeric',
            'working_time' => 'required|numeric',
            'random' => 'required',
        ]);


        Category_course::updateOrCreate(
            ['id' => $request->kode],
            [
                'exam_id' => $request->exam_id,
                'kode_kursus' => $request->kode_kursus,
                'total_question' => $request->total_question,
                'working_time' => $request->working_time,
                'random' => $request->random,

            ]
        );
        $return = array(
            'status'    => true,
            'message'    => 'Data berhasil disimpan..',
        );


        return response()->json($return);
    }



    public function edit($id)
    {
        $data = Category_course::find($id);
        return response()->json($data);
    }



    public function destroy($id)
    {
        $deleted = Category_course::destroy($id);
        if ($deleted) {
            $return = array(
                'status' => true,
                'message' => 'Data berhasil dihapus..'
            );
        } else {
            $return = array(
                'status' => false,
                'message' => 'Gagal dihapus..'
            );
        }

        return response()->json($return);
    }

    public function jumlah_soal($kode_kursus)
    {
        $data =  Question::where('kode_kursus', $kode_kursus)->count();
        return response()->json($data);
    }
}
