<?php

namespace App\Http\Controllers\Admin;

use App\Course;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class CourseController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Course::where('kep', 0)->get();
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
        return view('admin.mapel');
    }


    public function store(Request $request)
    {


        if ($request->kode != null) {
            $request->validate([
                'kode_kursus' =>  'required|unique:courses,kode_kursus,' . $request->kode,
                'nama_kursus' => 'required',
            ]);
        } else {
            $request->validate([
                'kode_kursus' =>  'required||unique:courses,kode_kursus',
                'nama_kursus' => 'required',
            ]);
        }



        Course::updateOrCreate(
            ['id' => $request->kode],
            [
                'kode_kursus' => $request->kode_kursus,
                'nama_kursus' => $request->nama_kursus,
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
        $unit = Course::find($id);
        return response()->json($unit);
    }



    public function destroy($id)
    {
        $deleted = Course::destroy($id);
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
}
