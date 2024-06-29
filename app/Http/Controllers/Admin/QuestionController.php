<?php

namespace App\Http\Controllers\Admin;

use App\Course;
use App\Http\Controllers\Controller;
use App\Question;
use Illuminate\Http\Request;
use Illuminate\Support\HtmlString;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Str;

use App\Imports\QuestionImport;
use Maatwebsite\Excel\Facades\Excel;

class QuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request, $code_course)
    {
        $course = Course::where('kode_kursus', $code_course)->first();
        if ($request->ajax()) {
            $data = Question::where('kode_kursus', $code_course)->get();
            return Datatables::of($data)
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
                ->addColumn('kep', function ($row) {


                    $btn = '
                    <div class="d-flex justify-content-center">
                   
                    <button type="button" class="btn btn-icon btn-icon-danger px-3" onclick="hapus(\'' . $row->id . '\'); return false;"  ><i
                            class="fas fa-trash" aria-hidden="true"></i></button>
                </div>

                ';
                    return $btn;
                })
                ->addColumn('pertanyaan', function ($row) {
                    return  new HtmlString($row->soal);
                })
                ->rawColumns(['action', 'pertayaan', 'kep'])
                ->make(true);
        }

        return view('admin.soal.soal', ['course' => $course]);
    }


    public function store(Request $request)
    {
        $request->validate([
            'soal' => 'required',
            'opsi_1' => 'required',
            'opsi_2' => 'required',
            'opsi_3' => 'required',
            'opsi_4' => 'required',
            'opsi_5' => 'required',
            'current_answer' => 'required',
        ]);

        $input = [
            'soal' => $request->soal,
            'kode_kursus' => $request->kode_kursus,
            'opsi_1' => $request->opsi_1,
            'opsi_2' => $request->opsi_2,
            'opsi_3' => $request->opsi_3,
            'opsi_4' => $request->opsi_4,
            'opsi_5' => $request->opsi_5,
            'current_answer' => $request->current_answer,
            'point_1' => $request->point_1,
            'point_2' => $request->point_2,
            'point_3' => $request->point_3,
            'point_4' => $request->point_4,
            'point_5' => $request->point_5,
        ];

        // dd($input);

        #soal
        $file_soal = $request->file('file_soal');
        $file_1 = $request->file('file_1');
        $file_2 = $request->file('file_2');
        $file_3 = $request->file('file_3');
        $file_4 = $request->file('file_4');
        $file_5 = $request->file('file_5');
        if ($file_soal) {
            $extension = $file_soal->getClientOriginalExtension();
            $filename = 'soal_' . time() . '.' . $extension;
            $file_soal->move('soal/', $filename);
            // hapus
            $cek = Question::where('id', $request->kode)->first();
            $path = 'soal/' . $cek['file_soal'];
            if (is_file($path)) {
                unlink($path);
            }

            $input['file_soal'] = $filename;
        }

        if ($file_1) {
            $extension = $file_1->getClientOriginalExtension();
            $filename = 'file1_' . time() . '.' . $extension;
            $file_1->move('soal/', $filename);
            // hapus
            $cek = Question::where('id', $request->kode)->first();
            $path = 'soal/' . $cek['file_1'];
            if (is_file($path)) {
                unlink($path);
            }

            $input['file_1'] = $filename;
        }
        if ($file_2) {
            $extension = $file_2->getClientOriginalExtension();
            $filename = 'file2_' . time() . '.' . $extension;
            $file_2->move('soal/', $filename);
            // hapus
            $cek = Question::where('id', $request->kode)->first();
            $path = 'soal/' . $cek['file_2'];
            if (is_file($path)) {
                unlink($path);
            }

            $input['file_2'] = $filename;
        }
        if ($file_3) {
            $extension = $file_3->getClientOriginalExtension();
            $filename = 'file3_' . time() . '.' . $extension;
            $file_3->move('soal/', $filename);
            // hapus
            $cek = Question::where('id', $request->kode)->first();
            $path = 'soal/' . $cek['file_3'];
            if (is_file($path)) {
                unlink($path);
            }

            $input['file_3'] = $filename;
        }
        if ($file_4) {
            $extension = $file_4->getClientOriginalExtension();
            $filename = 'file4_' . time() . '.' . $extension;
            $file_4->move('soal/', $filename);
            // hapus
            $cek = Question::where('id', $request->kode)->first();
            $path = 'soal/' . $cek['file_4'];
            if (is_file($path)) {
                unlink($path);
            }

            $input['file_4'] = $filename;
        }
        if ($file_5) {
            $extension = $file_5->getClientOriginalExtension();
            $filename = 'file5_' . time() . '.' . $extension;
            $file_5->move('soal/', $filename);
            // hapus
            $cek = Question::where('id', $request->kode)->first();
            $path = 'soal/' . $cek['file_5'];
            if (is_file($path)) {
                unlink($path);
            }

            $input['file_5'] = $filename;
        }


        Question::updateOrCreate(
            ['id' => $request->kode],
            $input

        );
        $return = array(
            'status'    => true,
            'message'    => 'Data berhasil disimpan..',
        );


        return response()->json($return);
    }


    public function edit($id)
    {
        $data = Question::find($id);
        return response()->json($data);
    }


    public function destroy($id)
    {
        // hapus
        $file = Question::where('id', $id)->first();
        $file_soal = 'soal/' . $file['file_soal'];
        if (is_file($file_soal)) {
            unlink($file_soal);
        }
        $file_1 = 'soal/' . $file['file_1'];
        if (is_file($file_1)) {
            unlink($file_1);
        }
        $file_2 = 'soal/' . $file['file_2'];
        if (is_file($file_2)) {
            unlink($file_2);
        }
        $file_3 = 'soal/' . $file['file_3'];
        if (is_file($file_3)) {
            unlink($file_3);
        }
        $file_4 = 'soal/' . $file['file_4'];
        if (is_file($file_4)) {
            unlink($file_4);
        }
        $file_5 = 'soal/' . $file['file_5'];
        if (is_file($file_5)) {
            unlink($file_5);
        }
        $deleted = Question::destroy($id);
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



    public function import_soal(Request $request)
    {
        $this->validate($request, [
            'file' => 'required|mimes:xls,xlsx'
        ]);

        if ($request->hasFile('file')) {
            $file = $request->file('file'); //GET FILE
            Excel::import(new QuestionImport($request->kode_kursus), $file); //IMPORT FILE 
        }
        $return = array(
            'status'    => true,
            'message'    => 'Data berhasil disimpan..',
        );

        return response()->json($return);
    }

    public function fileStore(Request $request)
    {

        $image = $request->file('file');
        $imageName = $image->getClientOriginalName();
        $image->move(public_path('soal'), $imageName);

        return response()->json(['success' => $imageName]);
    }



    #halaman mapel
    public function soal()
    {

        $course = Course::where('kep', 0)->get();
        $kep = Course::where('kep', '!=', 0)->get();
        return view('admin.soal.mapel-soal', ['course' => $course, 'kep' => $kep]);
    }

    public function kepribadian(Request $request, $code_course)
    {
        $course = Course::where('kode_kursus', $code_course)->first();

        if ($code_course == 'kep1') {
            return view('admin.kepribadian.aktivitas', ['course' => $course]);
        } elseif ($code_course == 'kep2') {
            return view('admin.kepribadian.kompetensi', ['course' => $course]);
        } elseif ($code_course == 'kep3') {
            return view('admin.kepribadian.menilai-diri', ['course' => $course]);
        } elseif ($code_course == 'kep4') {
            return view('admin.kepribadian.pekerjaan', ['course' => $course]);
        } elseif ($code_course == 'minat') {
            return view('admin.kepribadian.minat', ['course' => $course]);
        } else {
            return abort(503, 'Kembalilah ke jalan yang benar...');
        }
    }


    public function rollback_kepribadian($kode_kursus)
    {

        Question::where('kode_kursus', $kode_kursus)->delete();
        $return = array(
            'status'    => true,
            'message'    => 'Berhasil di hapus..',
        );
        return response()->json($return);
    }
}
