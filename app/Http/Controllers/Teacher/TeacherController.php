<?php

namespace App\Http\Controllers\Teacher;

use App\Answer;
use App\Exam;
use App\Http\Controllers\Controller;
use App\Student;
use App\Teacher;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class TeacherController extends Controller
{
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

    public function token()
    {
        $teacher = Teacher::where('username', Auth::user()->username)->first();
        $exam = Exam::where('kode_ruangan', $teacher['kode_ruangan'])->where('kode_sesi', $teacher['kode_sesi'])->first();
        $sekarang = new \DateTime();
        $diff = date_diff($exam['updated_at'], $sekarang);
        $selisih = ($diff->days * 24 * 60) + ($diff->h * 60) + $diff->i;
        if ($selisih > 15) {
            Exam::where('id', $exam['id'])
                ->update([
                    'token' => $this->randomString(5),
                ]);
        }
        $examnew = Exam::where('kode_ruangan', $teacher['kode_ruangan'])->where('kode_sesi', $teacher['kode_sesi'])->first();

        return view('teacher.token', ['token' => $examnew['token']]);
    }
    public function kehadiran(Request $request)
    {
        $teacher = Teacher::where('username', Auth::user()->username)->first();
        if ($request->ajax()) {
            $data = DB::table('students')
                ->where('kode_ruangan', $teacher['kode_ruangan'])
                ->where('kode_sesi', $teacher['kode_sesi'])

                ->orderBy('id', 'ASC')
                ->get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('reset', function ($row) {


                    $btn = '
                    <div class="d-flex justify-content-center">
                                <button type="button" class="btn btn-icon btn-icon-primary px-3" onClick="reset_ip(\'' . $row->username . '\'); return false;" ><i
                                        class="fas fa-redo-alt" aria-hidden="true"></i></button>
                            </div>
                ';
                    return $btn;
                })
                ->addColumn('kehadiran', function ($row) {

                    if ($row->status == '1') {
                        $btn = '
                        <div class="form-check">
                                    <input type="checkbox" class="form-check-input"  onClick="hadir(\'' . $row->id . '\'); return false;" checked id="' . $row->id . '">
                                    <label class="form-check-label" for="' . $row->id . '">Hadir</label>
                                </div>
                    ';
                    } else {
                        $btn = '
                        <div class="form-check">
                                    <input type="checkbox" class="form-check-input" onClick="hadir(\'' . $row->id . '\'); return false;" id="' . $row->id . '">
                                    <label class="form-check-label" for="' . $row->id . '">Tidak Hadir</label>
                                </div>
                    ';
                    }


                    return $btn;
                })

                ->addColumn('lihat_foto', function ($row) {
                    $btn = '
                    <div class="d-flex justify-content-center">
                                <button type="button" class="btn btn-icon btn-icon-primary px-3" onClick="lihat_foto(\'' . $row->username . '\'); return false;" ><i
                                        class="fas fa-eye" aria-hidden="true"></i></button>
                            </div>
                ';
                    return $btn;
                })
                ->addColumn('status_ujian', function ($row) {
                    $status = Answer::where('username', $row->username)->first();

                    if (!$status) {
                        return '<div class="badge badge-secondary" >Belum Ujian</div>';
                    } else  if ($status['remaining_time_minute'] == 0 && $status['remaining_time_second'] == 0) {
                        return '<div class="badge badge-success" >Selesai</div>';
                    } else {
                        return '<div class="badge badge-primary" >Sedang Ujian</div>';
                    }
                })
                ->rawColumns(['reset', 'status_ujian', 'kehadiran', 'lihat_foto'])

                ->make(true);
        }
        return view('teacher.kehadiran');
    }


    public function hadir(Request $request)
    {
        $student = Student::where('id', $request->id)->first();

        if ($student['status'] == '1') {
            Student::where('id', $student->id)
                ->update([
                    'status' => '0',
                ]);

            echo 1;
        } else {
            Student::where('id', $student->id)
                ->update([
                    'status' => '1',
                ]);

            echo $request->id;
        }
    }

    public function hadir_semua()
    {
        $teacher = Teacher::where('username', Auth::user()->username)->first();
        $student = Student::where('kode_ruangan', $teacher['kode_ruangan'])
            ->where('kode_sesi', $teacher['kode_sesi'])->get();

        foreach ($student as $s) {
            Student::where('id', $s->id)
                ->update([
                    'status' => '1',
                ]);
        }
        echo 1;
    }

    public function reset_ip(Request $request)
    {
        User::where('username', $request->username)->update(['ip_address' => '']);
        echo 1;
    }

    public function lihat_foto(Request $request)
    {
        $peserta = Student::where('username', $request->username)->first();

        return response()->json($peserta);
    }
}
