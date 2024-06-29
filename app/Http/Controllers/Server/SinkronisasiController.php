<?php

namespace App\Http\Controllers\Server;

use App\Category;
use App\Category_course;
use App\Course;
use App\Exam;
use App\Http\Controllers\Controller;
use App\Question;
use App\Room;
use App\ServerDetail;
use App\Sesi;
use App\Student;
use App\Teacher;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SinkronisasiController extends Controller
{

    public function user()
    {
    }
    public function download_soal()
    {
        $token = $_COOKIE['X-MANDIRI-UNM'];
        $headers = array(
            "Content-Type: application/json",
            "Authorization:Bearer $token}"
        );

        $api_path = "https://cat-mandiri.unm.ac.id/api/get-soal";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $api_path);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
        // curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        //curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $featuredJobs = curl_exec($ch);

        if (curl_errno($ch)) {
            echo 'Curl error: ' . curl_error($ch);
            $return = array(
                'status'    => false,
                'message'    => 'Gagal download soal 1',
            );
            return $return;
        } else {
            // check the HTTP status code of the request
            $resultStatus = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            $result = (array)json_decode($featuredJobs);
            if ($resultStatus != 200) {
                $return = array(
                    'status'    => false,
                    'message'    => 'Gagal download soal 2',
                );
                return $return;
            }

            $kursus = $result['data']->kursus;
            $kategori = $result['data']->kategori;
            $jadwal = $result['data']->jadwal;
            $detail_jadwal = $result['data']->detail_jadwal;
            $soal = $result['data']->soal;

            // kursus
            foreach ($kursus as $k) {
                $cek =  DB::table('courses')->where('id', $k->id)->first();
                if ($cek != null) {
                    Course::where('id', $k->id)
                        ->update([
                            'kode_kursus' => $k->kode_kursus,
                            'nama_kursus' => $k->nama_kursus,
                            'kep' => $k->kep,

                        ]);
                } else {
                    Course::create([
                        'id' => $k->id,
                        'kode_kursus' => $k->kode_kursus,
                        'nama_kursus' => $k->nama_kursus,
                        'kep' => $k->kep,
                    ]);
                }
            }
            // kategori
            foreach ($kategori as $k) {
                $cek =  DB::table('categories')->where('id', $k->id)->first();
                if ($cek != null) {
                    Category::where('id', $k->id)
                        ->update([
                            'kode_kategori' => $k->kode_kategori,
                            'nama_kategori' => $k->nama_kategori,
                        ]);
                } else {
                    Category::create([
                        'id' => $k->id,
                        'kode_kategori' => $k->kode_kategori,
                        'nama_kategori' => $k->nama_kategori,
                    ]);
                }
            }

            // jadwal
            foreach ($jadwal as $k) {
                $cek =  DB::table('exams')->where('id', $k->id)->first();
                if ($cek != null) {
                    Exam::where('id', $k->id)
                        ->update([
                            'kode_kategori' => $k->kode_kategori,
                            'ujian_mulai' => $k->ujian_mulai,
                            'ujian_selesai' => $k->ujian_selesai,
                            'token' => $k->token,
                            'kode_ruangan' => $k->kode_ruangan,
                            'kode_sesi' => $k->kode_sesi,
                            'working_time' => $k->working_time,
                        ]);
                } else {
                    Exam::create([
                        'id' => $k->id,
                        'kode_kategori' => $k->kode_kategori,
                        'ujian_mulai' => $k->ujian_mulai,
                        'ujian_selesai' => $k->ujian_selesai,
                        'token' => $k->token,
                        'kode_ruangan' => $k->kode_ruangan,
                        'kode_sesi' => $k->kode_sesi,
                        'working_time' => $k->working_time,
                    ]);
                }
            }
            // detail
            foreach ($detail_jadwal as $k) {
                $cek =  DB::table('category_courses')->where('id', $k->id)->first();
                if ($cek != null) {
                    Category_course::where('id', $k->id)
                        ->update([
                            'exam_id' => $k->exam_id,
                            'kode_kursus' => $k->kode_kursus,
                            'total_question' => $k->total_question,
                            'working_time' => $k->working_time,
                            'random' => $k->random,

                        ]);
                } else {
                    Category_course::create([
                        'id' => $k->id,
                        'exam_id' => $k->exam_id,
                        'kode_kursus' => $k->kode_kursus,
                        'total_question' => $k->total_question,
                        'working_time' => $k->working_time,
                        'random' => $k->random,

                    ]);
                }
            }
            // soal
            foreach ($soal as $k) {
                $cek =  DB::table('questions')->where('id', $k->id)->first();
                if ($cek != null) {
                    Question::where('id', $k->id)
                        ->update([
                            'kode_kursus' => $k->kode_kursus,
                            'soal' => $k->soal,
                            'file_soal' => $k->file_soal,
                            'opsi_1' => $k->opsi_1,
                            'file_1' => $k->file_1,
                            'poin_1' => $k->poin_1,
                            'opsi_2' => $k->opsi_2,
                            'file_2' => $k->file_2,
                            'poin_2' => $k->poin_2,
                            'opsi_2' => $k->opsi_2,
                            'file_3' => $k->file_3,
                            'poin_3' => $k->poin_3,
                            'opsi_3' => $k->opsi_3,
                            'file_4' => $k->file_4,
                            'poin_4' => $k->poin_4,
                            'opsi_4' => $k->opsi_4,
                            'file_5' => $k->file_5,
                            'poin_5' => $k->poin_5,
                            'opsi_5' => $k->opsi_5,
                            'current_answer' => 'O',

                        ]);
                } else {
                    Question::create([
                        'id' => $k->id,
                        'kode_kursus' => $k->kode_kursus,
                        'soal' => $k->soal,
                        'file_soal' => $k->file_soal,
                        'opsi_1' => $k->opsi_1,
                        'file_1' => $k->file_1,
                        'poin_1' => $k->poin_1,
                        'opsi_2' => $k->opsi_2,
                        'file_2' => $k->file_2,
                        'poin_2' => $k->poin_2,
                        'opsi_2' => $k->opsi_2,
                        'file_3' => $k->file_3,
                        'poin_3' => $k->poin_3,
                        'opsi_3' => $k->opsi_3,
                        'file_4' => $k->file_4,
                        'poin_4' => $k->poin_4,
                        'opsi_4' => $k->opsi_4,
                        'file_5' => $k->file_5,
                        'poin_5' => $k->poin_5,
                        'opsi_5' => $k->opsi_5,
                        'current_answer' => 'O',

                    ]);
                }
            }

            $return = array(
                'status'    => true,
                'message'    => 'Berhasil download soal',
            );

            return response()->json($return);
        }
    }


    public function sinkronisasi_user()
    {

        $token = $_COOKIE['X-MANDIRI-UNM'];
        $headers = array(
            "Content-Type: application/json",
            "Authorization:Bearer $token}"
        );

        $api_path = "https://cat-mandiri.unm.ac.id/api/get-user";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $api_path);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
        // curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        //curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $featuredJobs = curl_exec($ch);

        if (curl_errno($ch)) {
            echo 'Curl error: ' . curl_error($ch);
            $return = array(
                'status'    => false,
                'message'    => 'Gagal sinkronisasi user 1',
            );
            return $return;
        } else {
            // check the HTTP status code of the request
            $resultStatus = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            $result = (array)json_decode($featuredJobs);
            if ($resultStatus != 200) {
                $return = array(
                    'status'    => false,
                    'message'    => 'Gagal sinkronisasi user 2',
                );
                return $return;
            }

            $pengawas = $result['data']->pengawas;
            $peserta = $result['data']->peserta;
            $detail_pengawas = $result['data']->detail_pengawas;
            $ruangan = $result['data']->ruangan;
            $sesi = $result['data']->sesi;

            // ruangan
            foreach ($ruangan as $k) {
                $cek =  DB::table('rooms')->where('id', $k->id)->first();
                if ($cek != null) {
                    Room::where('id', $k->id)
                        ->update([
                            'kode_ruangan' => $k->kode_ruangan,
                            'nama_ruangan' => $k->nama_ruangan,


                        ]);
                } else {
                    Room::create([
                        'id' => $k->id,
                        'kode_ruangan' => $k->kode_ruangan,
                        'nama_ruangan' => $k->nama_ruangan,
                    ]);
                }
            }

            // sesi
            foreach ($sesi as $k) {
                $cek =  DB::table('sesis')->where('id', $k->id)->first();
                if ($cek != null) {
                    Sesi::where('id', $k->id)
                        ->update([
                            'kode_sesi' => $k->kode_sesi,
                            'nama_sesi' => $k->nama_sesi,


                        ]);
                } else {
                    Sesi::create([
                        'id' => $k->id,
                        'kode_sesi' => $k->kode_sesi,
                        'nama_sesi' => $k->nama_sesi,
                    ]);
                }
            }

            // peserta
            foreach ($pengawas as $k) {
                $cek =  DB::table('teachers')->where('id', $k->id)->first();
                $cek_user =  DB::table('users')->where('username', $k->username)->first();
                if ($cek != null) {
                    Teacher::where('id', $k->id)
                        ->update([
                            'nama' => $k->nama,
                            'kode_ruangan' => $k->kode_ruangan,
                            'kode_sesi' => $k->kode_sesi,
                            'username' => $k->username,
                        ]);
                } else {
                    Teacher::create([
                        'id' => $k->id,
                        'nama' => $k->nama,
                        'kode_ruangan' => $k->kode_ruangan,
                        'kode_sesi' => $k->kode_sesi,
                        'username' => $k->username,
                    ]);
                }
                // users
                if ($cek_user != null) {
                    User::where('username', $k->username)
                        ->update([
                            'name' => $k->nama,
                            'username' => $k->username,
                            'password' => $k->password,
                            'role_id' => 2
                        ]);
                } else {
                    User::create([
                        'name' => $k->nama,
                        'username' => $k->username,
                        'password' => $k->password,
                        'role_id' => 2
                    ]);
                }
            }
            // peserta
            foreach ($peserta as $k) {
                $cek =  DB::table('students')->where('id', $k->id)->first();
                $cek_user =  DB::table('users')->where('username', $k->username)->first();
                if ($cek != null) {
                    Student::where('id', $k->id)
                        ->update([
                            'nama' => $k->nama,
                            'kode_ruangan' => $k->kode_ruangan,
                            'kode_sesi' => $k->kode_sesi,
                            'username' => $k->username,
                            'foto' => $k->foto,
                            'kode_jurusan' => $k->kode_jurusan,
                            'status' => $k->status,
                        ]);
                } else {
                    Student::create([
                        'id' => $k->id,
                        'nama' => $k->nama,
                        'kode_ruangan' => $k->kode_ruangan,
                        'kode_sesi' => $k->kode_sesi,
                        'username' => $k->username,
                        'foto' => $k->foto,
                        'kode_jurusan' => $k->kode_jurusan,
                        'status' => $k->status,
                    ]);
                }

                // users
                if ($cek_user != null) {
                    User::where('username', $k->username)
                        ->update([
                            'name' => $k->nama,
                            'username' => $k->username,
                            'password' => $k->password,
                            'role_id' => 3
                        ]);
                } else {
                    User::create([
                        'name' => $k->nama,
                        'username' => $k->username,
                        'password' => $k->password,
                        'role_id' => 3
                    ]);
                }
            }
            // detail pengawas
            foreach ($detail_pengawas as $k) {
                try {
                    ServerDetail::create([
                        'username_server' => $k->username_server,
                        'username_pengawas' => $k->username,
                    ]);
                } catch (\Throwable $th) {
                    //throw $th;
                }
            }
            $return = array(
                'status'    => true,
                'message'    => 'Berhasil sinkronisasi user',
            );

            return response()->json($return);
        }
    }

    public function get_jumlah()
    {
        $token = $_COOKIE['X-MANDIRI-UNM'];
        $headers = array(
            "Content-Type: application/json",
            "Authorization:Bearer $token}"
        );

        $api_path = "https://cat-mandiri.unm.ac.id/api/jumlah";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $api_path);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
        // curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        //curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $featuredJobs = curl_exec($ch);

        if (curl_errno($ch)) {
            echo 'Curl error: ' . curl_error($ch);
            $return = array(
                'status'    => false,
                'message'    => 'Gagal jumlah 1',
            );
            return $return;
        } else {
            // check the HTTP status code of the request
            $resultStatus = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            $result = (array)json_decode($featuredJobs);
            if ($resultStatus != 200) {
                $return = array(
                    'status'    => false,
                    'message'    => 'Gagal jumlah 1',
                );
                return $return;
            }



            $return = array(
                'status'    => true,
                'jumlah_soal'    => $result['data']->jumlah_soal,
                'jumlah_pengawas'    => $result['data']->jumlah_pengawas,
                'jumlah_peserta'    => $result['data']->jumlah_peserta,
                'is_active'    => $result['data']->is_active,
            );

            return response()->json($return);
        }
    }
    public function total_jawaban()
    {
        $token = $_COOKIE['X-MANDIRI-UNM'];
        $headers = array(
            "Content-Type: application/json",
            "Authorization:Bearer $token}"
        );

        $api_path = "https://cat-mandiri.unm.ac.id/api/total-jawaban";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $api_path);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
        // curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        //curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $featuredJobs = curl_exec($ch);

        if (curl_errno($ch)) {
            echo 'Curl error: ' . curl_error($ch);
            $return = array(
                'status'    => false,
                'message'    => 'Gagal total jawaban 1',
            );
            return $return;
        } else {
            // check the HTTP status code of the request
            $resultStatus = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            $result = (array)json_decode($featuredJobs);
            if ($resultStatus != 200) {
                $return = array(
                    'status'    => false,
                    'message'    => 'Gagal total jawaban 2',
                );
                return $return;
            }

            $return = array(
                'status'    => true,
                'total_jawaban'    => $result['data']->total_jawaban,

            );

            return response()->json($return);
        }
    }

    public function get_rollback()
    {
        $token = $_COOKIE['X-MANDIRI-UNM'];
        $headers = array(
            "Content-Type: application/json",
            "Authorization:Bearer $token}"
        );

        $api_path = "https://cat-mandiri.unm.ac.id/api/rollback";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $api_path);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
        // curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        //curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $featuredJobs = curl_exec($ch);

        if (curl_errno($ch)) {
            echo 'Curl error: ' . curl_error($ch);
            $return = array(
                'status'    => false,
                'message'    => 'Gagal rollback 1',
            );
            return $return;
        } else {
            // check the HTTP status code of the request
            $resultStatus = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            $result = (array)json_decode($featuredJobs);
            if ($resultStatus != 200) {
                $return = array(
                    'status'    => false,
                    'message'    => 'Gagal rollback 2',
                );
                return $return;
            }



            $return = array(
                'status'    => true,
                'aksi'    => $result['data']->aksi,
                'is_active'    => $result['data']->is_active,
            );

            return response()->json($return);
        }
    }
}
