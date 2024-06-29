<?php

namespace App\Http\Controllers\Admin;

use App\Category_course;
use App\Exam;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class ExamController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Exam::with('category', 'session', 'room')->get();
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
                ->addColumn('minat', function ($row) {
                    $cek = DB::table('category_courses')->where('exam_id', $row->id)->where('kode_kursus', 'minat')->first();
                    if ($cek) {
                        $btn = '
                        <div class="d-flex justify-content-center">
                        <button type="button" class="btn btn-icon btn-icon-danger px-3" onclick="minat(\'' . $row->id . '\'); return false;"  >Nonaktifkan</button>
                        
                    </div>
                    ';
                    } else {
                        $btn = '
                        <div class="d-flex justify-content-center">
                        <button type="button" class="btn btn-icon btn-icon-warning px-3" onclick="minat(\'' . $row->id . '\'); return false;"  >Aktifkan</button>
                        
                    </div>
                    ';
                    }


                    return $btn;
                })
                ->addColumn('mapel', function ($row) {
                    return ' <a href="' . url('jadwal-ujian/mapel') . '/' . $row->id . '" type="button" class="btn btn-icon btn-icon-warning px-3" ><i class="fas fa-eye" aria-hidden="true"></i></a>';
                    // return ' <a href="' . url('jadwal-ujian/mapel') . '/' . $row->code_category . '" class="btn-cs-trush" title="Detail"  ><i class="fas fa-eye"></i></a>';
                })

                ->addColumn('waktu_mulai', function ($data) {
                    $ujian_mulai = explode(" ", $data->ujian_mulai);
                    return $this->rev_date2($ujian_mulai[0]) . '  ' . substr($ujian_mulai[1], 0, 5);
                })
                ->addColumn('waktu_selesai', function ($data) {
                    $ujian_selesai = explode(" ", $data->ujian_selesai);
                    return $this->rev_date2($ujian_selesai[0]) . '  ' . substr($ujian_selesai[1], 0, 5);
                })





                ->rawColumns(['action', 'mapel', 'waktu_mulai', 'waktu_selesai', 'minat'])
                ->make(true);
        }
        return view('admin.jadwal.jadwal-ujian');
    }


    public function store(Request $request)
    {

        $request->validate([
            'nama_ujian' =>  'required',
            'tanggal_mulai' => 'required',
            'waktu_mulai' => 'required',
            'tanggal_selesai' => 'required',
            'waktu_selesai' => 'required',
            'kode_ruangan' => 'required',
            'kode_sesi' => 'required',
        ]);

        $tgl1 = $this->rev_date($request->tanggal_mulai);
        $tgl2 = $this->rev_date($request->tanggal_selesai);



        Exam::updateOrCreate(
            ['id' => $request->kode],
            [
                'kode_kategori' => $request->nama_ujian,
                'kode_ruangan' => $request->kode_ruangan,
                'kode_sesi' => $request->kode_sesi,
                'ujian_mulai' => $tgl1 . ' ' . $request->waktu_mulai,
                'ujian_selesai' => $tgl2 . ' ' . $request->waktu_selesai,
                'token' => $this->randomString(5),
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
        $unit = Exam::where('id', $id)->first();
        $ujian_mulai = explode(" ", $unit['ujian_mulai']);
        $ujian_selesai = explode(" ", $unit['ujian_selesai']);
        $array = [
            'waktu_mulai' => substr($ujian_mulai[1], 0, 5),
            'waktu_selesai' => substr($ujian_selesai[1], 0, 5),
            'tanggal_mulai' => $this->rev_date2($ujian_mulai[0]),
            'tanggal_selesai' => $this->rev_date2($ujian_selesai[0]),
            'kode_kategori' => $unit['kode_kategori'],
            'token' => $unit['token'],
            'kode_ruangan' => $unit['kode_ruangan'],
            'kode_sesi' => $unit['kode_sesi'],

        ];

        return response()->json($array);
    }



    public function destroy($id)
    {
        $deleted = Exam::destroy($id);
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


    public function minat($id)
    {
        $cek = DB::table('category_courses')->where('exam_id', $id)->where('kode_kursus', 'minat')->first();
        if ($cek) {
            DB::table('category_courses')->where('exam_id', $id)->where('kode_kursus', 'minat')->delete();
            DB::table('category_courses')->where('exam_id', $id)->where('kode_kursus', 'kep1')->delete();
            DB::table('category_courses')->where('exam_id', $id)->where('kode_kursus', 'kep2')->delete();
            DB::table('category_courses')->where('exam_id', $id)->where('kode_kursus', 'kep3')->delete();
            DB::table('category_courses')->where('exam_id', $id)->where('kode_kursus', 'kep4')->delete();
        } else {
            Category_course::create([
                'exam_id' => $id,
                'kode_kursus' => 'minat',
                'total_question' => 50,
                'working_time' => 2,
                'random' => '0'
            ]);
            // Aktivitas
            Category_course::create([
                'exam_id' => $id,
                'kode_kursus' => 'kep1',
                'total_question' => 66,
                'working_time' => 2,
                'random' => '0'
            ]);
            // kompetensi
            Category_course::create([
                'exam_id' => $id,
                'kode_kursus' => 'kep2',
                'total_question' => 66,
                'working_time' => 2,
                'random' => '0'
            ]);

            // menilai diri
            Category_course::create([
                'exam_id' => $id,
                'kode_kursus' => 'kep3',
                'total_question' => 12,
                'working_time' => 2,
                'random' => '0'
            ]);
            // pekerjaan
            Category_course::create([
                'exam_id' => $id,
                'kode_kursus' => 'kep4',
                'total_question' => 84,
                'working_time' => 2,
                'random' => '0'
            ]);
        }

        return 1;
    }


    function randomString($length)
    {
        $str        = "";
        $characters = '1234567890';
        // $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz123456789';
        $max        = strlen($characters) - 1;
        for ($i = 0; $i < $length; $i++) {
            $rand = mt_rand(0, $max);
            $str .= $characters[$rand];
        }
        return $str;
    }
    function rev_date($tgl)
    {
        $t = explode("/", $tgl);
        if ($tgl == '' || $tgl == null) {
            return '';
        } else {
            $tanggal  =  $t[0];
            $bulan    =  $t[1];
            $tahun    =  $t[2];
            return  $tahun . '-' . $bulan . '-' . $tanggal;
        }
    }

    function rev_date2($tgl)
    {

        $t = explode("-", $tgl);
        $tanggal  =  $t[2];
        $bulan    =  $t[1];
        $tahun    =  $t[0];
        return  $tanggal . '/' . $bulan . '/' . $tahun;
    }
}
