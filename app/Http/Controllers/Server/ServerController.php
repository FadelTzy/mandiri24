<?php

namespace App\Http\Controllers\Server;

use App\Answer;
use App\Category;
use App\Category_course;
use App\Course;
use App\Exam;
use App\Http\Controllers\Controller;
use App\KirimJawaban;
use App\Question;
use App\Room;
use App\ServerDetail;
use App\Sesi;
use App\Student;
use App\Teacher;
use App\User;
use App\ViewPengawas;
use App\ViewPengawasUserHari;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class ServerController extends Controller
{

    public function hasil()
    {
        return view('server.hasil');
    }


    public function soal()
    {
        return view('server.soal');
    }

    public function sinkronisasi()
    {

        $soal = Question::count();
        $pengawas = Teacher::count();
        $peserta = Student::count();

        $ruangan = ViewPengawasUserHari::where('username_server', Auth::user()->username)->whereDate('ujian_mulai', Carbon::now()->format('Y-m-d'))->get()->unique('kode_ruangan');

        // echo  json_encode($ruangan);
        return view('server.server', ['soal' => $soal, 'pengawas' => $pengawas, 'peserta' => $peserta, 'ruangan' => $ruangan]);
    }



    public function user_pengawas(Request $request)
    {
        // $data = ViewPengawasUserHari::get();
        // dd($data);
        if ($request->ajax()) {

            // $data = User::latest()->get();
            $data = ViewPengawasUserHari::whereDate('ujian_mulai', Carbon::now()->format('Y-m-d'))->get();
            // dd($data);
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {
                    $btn = '';
                    return $btn;
                })
                // ->addColumn('status', function ($row) {
                //     if ($row->status_memenuhi == '1') {
                //         $btn = 'Memenuhi';
                //     } else {
                //         $btn = 'Tidak Memenuhi';
                //     }
                //     return $btn;
                // })
                ->addColumn('password', function ($row) {
                    return substr($row->username, -5);
                })


                ->rawColumns(['action',  'password'])
                ->make(true);
        }
        return view('server.users');
    }

    // web
    public function kirim_jawaban(Request $request)
    {
        $token = $_COOKIE['X-MANDIRI-UNM'];
        $kode_ruangan  = $request->kode_ruangan;
        $kode_sesi  = $request->kode_sesi;
        $ujian_mulai  = $request->ujian_mulai;
        $headers = array(
            //"Content-Type: application/json",
            "Authorization:Bearer $token}"
        );
        $jawaban = DB::table('kirim_jawaban')->where('kode_ruangan', $kode_ruangan)
            ->where('kode_sesi', $kode_sesi)
            ->whereDate('ujian_mulai', Carbon::now()->format('Y-m-d'))->get();
        // $jawaban = DB::table('kirim_jawaban')->where('kode_ruangan', $kode_ruangan)
        //     ->where('kode_sesi',  $kode_sesi)
        //     ->whereDate('ujian_mulai', Carbon::now()->format('Y-m-d'))->get();


        $kehadiran = Student::where('kode_ruangan', $request->kode_ruangan)
            ->where('kode_sesi', $request->kode_sesi)
            ->where('status', '1');



        $fields = [
            'data' => $jawaban,
            'jumlah_jawaban' => $jawaban->count(),
            'jumlah_kehadiran' => $kehadiran->count(),
            'username' => Auth::user()->username,
            'kode_ruangan' => $kode_ruangan,
            'kode_sesi' => $kode_sesi,
            'ujian_mulai' => $ujian_mulai
        ];


        // $payload = json_encode(array("json" => $fields));

        $api_path = "https://cat-mandiri.unm.ac.id/api/kirim-jawaban";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $api_path);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        //curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $featuredJobs = curl_exec($ch);

        if (curl_errno($ch)) {
            echo 'Curl error: ' . curl_error($ch);
            $return = array(
                'status'    => false,
                'message'    => 'Gagal kirim jawaban',
            );
            return $return;
        } else {
            // check the HTTP status code of the request
            $resultStatus = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            $result = (array)json_decode($featuredJobs);
            if ($resultStatus != 200) {
                $return = array(
                    'status'    => false,
                    'message'    => 'Gagal kirim jawaban',
                );
                return $return;
            }

            $return = array(
                'status'    => true,
                'message'    => 'Berhasil kirim jawaban',
            );

            return response()->json($result);
        }
    }



    public function login(Request $request)
    {
        $username = $request->username;
        $password = $request->password;

        $headers = array(
            // 'x-api-key:CAT-Riset-UNM----'
        );

        $fields = [
            'username' => $username,
            'password' => $password,

        ];

        $api_path = "https://cat-mandiri.unm.ac.id/api/login";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $api_path);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        //curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $featuredJobs = curl_exec($ch);

        if (curl_errno($ch)) {
            echo 'Curl error: ' . curl_error($ch);
            return response()->json([
                'message' => 'Gagal login'
            ], 422);
        } else {
            // check the HTTP status code of the request
            $resultStatus = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            $result = (array)json_decode($featuredJobs);
            if ($resultStatus != 200) {
                return response()->json($result);
            }
            // setcookie('X-MANDIRI-UNM', $result['data']->access_token, time() + 3600);
            setcookie('X-MANDIRI-UNM', $result['data']->access_token);
            // get token $_COOKIE['X-MANDIRI-UNM'];
            return response()->json($result);
        }
    }

    public function rollback($aksi)
    {

        if ($aksi == 1) {
            Answer::truncate();
            User::where('role_id', '<>', 4)->delete();
            Exam::truncate();
            Student::truncate();
            Teacher::truncate();
            Room::truncate();
            Sesi::truncate();
            ServerDetail::truncate();
            Course::truncate();
            Category::truncate();
            Category_course::truncate();
            Question::truncate();
        } else {
            User::where('role_id', '<>', 4)->delete();
            Exam::truncate();
            Student::truncate();
            Teacher::truncate();
            Room::truncate();
            Sesi::truncate();
            ServerDetail::truncate();
            Course::truncate();
            Category::truncate();
            Category_course::truncate();
            Question::truncate();
        }

        $return = array(
            'status'    => true,
            'message'    => 'Berhasil rollback',
        );

        return response()->json($return);
    }
}
