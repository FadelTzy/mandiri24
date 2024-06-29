<?php

namespace App\Http\Controllers\API;

use App\Answer;
use App\Category;
use App\Course;
use App\Exam;
use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Question;
use App\Room;
use App\Server;
use App\ServerDetail;
use App\Sesi;
use App\StatusServer;
use App\Student;
use App\Teacher;
use App\ViewPengawas;
use App\ViewPengawasJadwal;
use App\ViewPengawasJadwalKursus;
use App\ViewPengawasPeserta;
use App\ViewPengawasUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ServerController extends Controller
{
    public function soal()
    {

        # username > server detail > pengawas > kode ruangan > jadwal
        $username = Auth::user()->username;

        $soal = Question::all();
        $kategori = Category::all();
        $kursus = Course::all();
        $jadwal = ViewPengawasJadwal::where('username_server', $username)->get();
        $detail_jadwal = ViewPengawasJadwalKursus::where('username_server', $username)->get();


        return ResponseFormatter::success([
            'kursus' => $kursus,
            'kategori' => $kategori,
            'jadwal' => $jadwal,
            'detail_jadwal' => $detail_jadwal,
            'jumlah-soal' => Question::count(),
            'soal' => $soal
        ], 'Berhasil');
    }

    public function get_user()
    {
        $username = Auth::user()->username;

        $data_pengawas = ViewPengawasUser::where('username_server', $username)->get();
        $data_peserta = ViewPengawasPeserta::where('username_server', $username)->get();
        $detail_pengawas = ViewPengawas::where('username_server', $username)->get();
        return ResponseFormatter::success([

            'pengawas' => $data_pengawas,
            'peserta' => $data_peserta,
            'ruangan' => Room::all(),
            'sesi' => Sesi::all(),
            'detail_pengawas' => $detail_pengawas,
            'jumlah_pengawas' => ViewPengawasUser::where('username_server', $username)->count(),
            'jumlah_peserta' => ViewPengawasPeserta::where('username_server', $username)->count()
        ], 'Berhasil');
    }





    public function tes(Request $re)

    {

        $array = ['asdar' => $re->data];
        return response()->json($array);
    }

    public function curltes()
    {

        $headers = array(
            // 'x-api-key:CAT-Riset-UNM----'
        );

        $fields = [
            'data' => Answer::all(),
        ];

        $api_path = "https://cat-mandiri.unm.ac.id/api/tes";
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

            return response()->json($result);
        }
    }

    public function jumlah()
    {
        $username = Auth::user()->username;

        $server = Server::where('username', $username)->first();
        return ResponseFormatter::success([
            'jumlah_soal' => Question::count(),
            'jumlah_pengawas' => ViewPengawasUser::where('username_server', $username)->count(),
            'jumlah_peserta' => ViewPengawasPeserta::where('username_server', $username)->count(),
            'is_active' => $server->is_active
        ], 'Berhasil');
    }

    public function total_jawaban()
    {
        $username = Auth::user()->username;
        return ResponseFormatter::success([
            'total_jawaban' => StatusServer::where('username', $username)->get(),
        ], 'Berhasil');
    }

    public function rollback()
    {
        $username = Auth::user()->username;
        $server = Server::where('username', $username)->first();
        return ResponseFormatter::success([
            'aksi' => 1,
            'is_active' => $server->is_active
        ], 'Berhasil');
    }
}
