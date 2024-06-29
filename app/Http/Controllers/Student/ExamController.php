<?php

namespace App\Http\Controllers\Student;

use App\Answer;
use App\Category;
use App\Category_course;
use App\Course;
use App\Exam;
use App\Http\Controllers\Controller;
use App\Question;
use App\Result;
use App\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ExamController extends Controller
{
    public function __construct()
    {
        date_default_timezone_set('Asia/Makassar');
    }

    public function index(Request $request)
    {

        #jawaban terakhir ujian peserta
        $last_answer = Answer::where('username', Auth::user()->username)->get();
        #peserta 
        $student = Student::where('username', Auth::user()->username)->first();
        #jadwal ujian
        $exam = Exam::where('kode_ruangan', $student['kode_ruangan'])->where('kode_sesi', $student['kode_sesi'])->first();

        #Jika jawaban terkahir kosong => baru mulai ujian...

        if ($last_answer->isEmpty()) {

            #kursus/mapel berdasarkan jadwal ujian 
            $course = Category_course::where('exam_id', $exam['id'])->get();
            # loop kursus
            foreach ($course as $course) {
                # get soal berdsarkan kursus
                if ($course->random == 1) {
                    # jika random pertanyaanya
                    $question = Question::where('kode_kursus', $course->kode_kursus)->inRandomOrder()->limit($course->total_question)->get();
                } else {
                    # jika tidak random pertanyaanya
                    $question = Question::where('kode_kursus', $course->kode_kursus)->limit($course->total_question)->get();
                }
                #loop pertayaan 
                $soal = '';
                $jawaban = '';
                foreach ($question as $question) {
                    $soal .= $question->id . ",";
                    $jawaban .= $question->id . ":N,";
                }

                #untuk mengcreate soal baru cek jawaban di result dan cek dia reguler atw non regular
                // $result = Result::where('username', Auth::user()->username)->orderBy('created_at', 'desc')->first();

                Answer::create([
                    'username' => Auth::user()->username,
                    'exam_id' => $exam['id'],
                    'kode_kursus' =>  $course->kode_kursus,
                    'kode_kategori' =>  $exam->kode_kategori,
                    'current_answer' =>  $jawaban,
                    'question_id' => $soal,
                    'remaining_time_minute' => $course->working_time,
                    'remaining_time_second' => 1,
                    'total_question' => $course->total_question,
                ]);
            }

            return view('students.check');
        } else {
            #jawaban terakhir
            foreach ($last_answer as $last) {
                $time = $last->remaining_time_minute;
                if ($last->remaining_time_minute >= 0 && $last->remaining_time_second != 0 || $last->remaining_time_minute > 0) {
                    $a['jam'] = floor($time / 60);
                    $a['menit'] = ($time % 60);
                    $a['detik'] = $last->remaining_time_second;
                    $a['jumlah_soal'] = $last->total_question;
                    $a['course'] = Course::where('kode_kursus', $last->kode_kursus)->first();
                    $a['answer'] = $last->id;

                    break;
                }
            }

            #jika sudah selesai
            $final1 = Answer::where('username', Auth::user()->username)->where('exam_id', $exam['id'])->count();
            $final2 = Answer::where('username', Auth::user()->username)->where('exam_id', $exam['id'])->where('remaining_time_minute', 0)->where('remaining_time_second', 0)->count();
            if ($final1 == $final2) {
                return redirect('selesai');
            }
        }


        return view('students.jawab-soal', ['exam' => $exam, 'student' => $student, 'data' => $a]);
    }

    public function get_soal(Request $request)
    {
        #id answer
        $id = $request->id;
        #return semua data 
        $data = Answer::where('id', $id)->first();
        $soal = explode(",", $data['current_answer']);
        $no = 1;
        $no_buka = 1;
        $no_aktifkan = 1;
        $no_lihat_soal = 1;
        $no_lihat_opsi = 1;
        $soal_jwb = '';
        $soal_view = '';
        $opsi = '';


        foreach ($soal as $s) {
            if ($s != '') {
                #navigasi soal
                $lj = explode(":", $s);
                $list_soal = $lj[0];
                $list_jawaban = $lj[1];

                if ($list_jawaban == 'N') {
                    $soal_jwb .= '
                   <div class="col-md-3 pl-0 pr-0 mr-0 ml-0" onClick=" return buka(\'' . $no_buka++ . '\'); " >
                            <div class="tombol-nomor non-aktif" id="aktifkan' . $no_aktifkan++ . '">
                            ' . $no++ . '
                            </div>
                    </div>
                   ';
                } else {
                    $soal_jwb .= '
                    <div class="col-md-3 pl-0 pr-0 mr-0 ml-0"  onClick=" return buka(\'' . $no_buka++ . '\'); " >
                        <div class="tombol-nomor tombol-nomor-active" id="aktifkan' . $no_aktifkan++ . '" >
                        ' . $no++ . '
                        </div>
                    </div>
                    
                    ';
                }
                #tampilan soal
                $retrieve_soal =  Question::where('id', $list_soal)->first();


                #kepribadian 
                if ($data['kode_kursus'] == 'kep3') {
                    #menilai diri
                    #soal view
                    $soal_view .= '
                                        <div class="scrollable hidden-soal " style="display: none;" id="_view_soal' . $no_lihat_soal++ . '">
                                            <div class="card mb-5 pb-5">
                                                <div class="card-body">
                                                        <div class="alert alert-warning " role="alert">
                                                        Petunjuk: Berilah penilaian yang paling tepat tentang diri Anda sendiri untuk pernyataan-pernyataan berikut.
                                                        Pilih 1 jika Anda merasa kemampuan Anda terhadap bidang tersebut Rendah, jika tidak pilih yang menurut Anda sesuai. Angka 1-7 menandakan tingkat dari yang Terendah sampai yang Tertinggi.
                                                        </div>
                                                    <p class="text-justify soal-bold">' . $retrieve_soal['soal'] . '</p>
                    
                                                    <ul class="soal-bold" style="list-style-type: upper-alpha;">
                                                        <li>
                                                        &nbsp 1 (RENDAH) 
                                                        </li>
                                                        <li>
                                                        &nbsp 2 (RENDAH)
                                                        </li>
                                                        <li>
                                                        &nbsp 3 (SEDANG)
                                                        </li>
                                                        <li>
                                                        &nbsp 4 (SEDANG)
                                                        </li>
                                                        <li>
                                                        &nbsp 4 (SEDANG)
                                                        </li>
                                                        <li>
                                                        &nbsp 6 (TINGGI)
                                                        </li>
                                                        <li>
                                                        &nbsp 7 (TINGGI)
                                                        </li>
                                                    </ul>
                    
                                                </div>
                                            </div>
                                            <br>
                                            <br>
                                            <br>
                    
                    
                                        </div>
                    
                                        ';

                    $opsi .= '
                                    <div class="d-flex flex-row hidden mb-3 tambah-hidden-opsi hidden-opsi   _view_opsi' . $no_lihat_opsi++ . '">
                                        <div class="tombol-jawaban ' . $this->aktikan_opsi('A', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',A' . '\'); " >
                                            A
                                        </div>
                                        <div class="tombol-jawaban ' . $this->aktikan_opsi('B', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',B' . '\'); "  >
                                            B
                                        </div>
                                        <div class="tombol-jawaban ' . $this->aktikan_opsi('C', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',C' . '\'); " >
                                            C
                                        </div>
                                        <div class="tombol-jawaban ' . $this->aktikan_opsi('D', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',D' . '\'); " >
                                            D
                                        </div>
                                        <div class="tombol-jawaban ' . $this->aktikan_opsi('E', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',E' . '\'); " >
                                            E
                                        </div>
                                        <div class="tombol-jawaban ' . $this->aktikan_opsi('F', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',F' . '\'); " >
                                            F
                                        </div>
                                        <div class="tombol-jawaban ' . $this->aktikan_opsi('G', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',G' . '\'); " >
                                            G
                                        </div>
                                    </div>
                    
                    
                                    ';
                } else if ($data['kode_kursus'] == 'kep4' || $data['kode_kursus'] == 'kep2' || $data['kode_kursus'] == 'kep1') {
                    # aktivitas, kompetensi, pekerjaan
                    #soal view
                    $soal_view .= '
                                        <div class="scrollable hidden-soal " style="display: none;" id="_view_soal' . $no_lihat_soal++ . '">
                                                <div class="card mb-5 pb-5">
                                                    <div class="card-body">
                                                            <div class="alert alert-warning " role="alert">
                                                            Petunjuk: Bacalah dengan seksama pernyataan-pernyataan berikut ini kemudian pilih salah satu dari pilihan
                                                            SANGAT SUKA, SUKA, TIDAK SUKA, dan SANGAT TIDAK SUKA.!
                                                            </div>
                                                        <p class="text-justify soal-bold">' . $retrieve_soal['soal'] . '</p>

                                                        <ul class="soal-bold" style="list-style-type: upper-alpha;">
                                                            <li>
                                                            &nbsp SANGAT SUKA
                                                            </li>
                                                            <li>
                                                            &nbsp SUKA
                                                            </li>
                                                            <li>
                                                            &nbsp TIDAK SUKA
                                                            </li>
                                                            <li>
                                                            &nbsp SANGAT TIDAK SUKA
                                                            </li>
                                                        </ul>

                                                    </div>
                                                </div>
                                                <br>
                                                <br>
                                                <br>


                                            </div>

                                            ';

                    $opsi .= '
                                    <div class="d-flex flex-row hidden mb-3 tambah-hidden-opsi hidden-opsi   _view_opsi' . $no_lihat_opsi++ . '">
                                        <div class="tombol-jawaban ' . $this->aktikan_opsi('A', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',A' . '\'); " >
                                            A
                                        </div>
                                        <div class="tombol-jawaban ' . $this->aktikan_opsi('B', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',B' . '\'); "  >
                                            B
                                        </div>
                                        <div class="tombol-jawaban ' . $this->aktikan_opsi('C', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',C' . '\'); " >
                                            C
                                        </div>
                                        <div class="tombol-jawaban ' . $this->aktikan_opsi('D', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',D' . '\'); " >
                                            D
                                        </div>
                                    </div>


                                    ';
                } elseif ($data['kode_kursus'] == 'minat') {
                    # minat
                    $soal_view .= '
                    <div class="scrollable hidden-soal " style="display: none;" id="_view_soal' . $no_lihat_soal++ . '">
                        <div class="card mb-5 pb-5">
                            <div class="card-body">
                                  
                                <p class="text-justify soal-bold">' . $retrieve_soal['soal'] . '</p>
                            
                              
                            <ul class="soal-bold" style="list-style-type: upper-alpha;">
                                <li>
                                &nbsp SANGAT SUKA 
                                </li>
                                <li>
                                &nbsp SUKA
                                </li>
                                <li>
                                &nbsp TIDAK SUKA
                                </li>
                                <li>
                                &nbsp SANGAT TIDAK SUKA
                                </li>
                            </ul>

                            </div>
                        </div>
                        <br>
                        <br>
                        <br>


                    </div>

                    ';

                    $opsi .= '
                <div class="d-flex flex-row hidden mb-3 tambah-hidden-opsi hidden-opsi   _view_opsi' . $no_lihat_opsi++ . '">
                    <div class="tombol-jawaban ' . $this->aktikan_opsi('A', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',A' . '\'); " >
                        A
                    </div>
                    <div class="tombol-jawaban ' . $this->aktikan_opsi('B', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',B' . '\'); "  >
                        B
                    </div>
                    <div class="tombol-jawaban ' . $this->aktikan_opsi('C', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',C' . '\'); " >
                        C
                    </div>
                    <div class="tombol-jawaban ' . $this->aktikan_opsi('D', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',D' . '\'); " >
                        D
                    </div>

                </div>


                ';
                } else {
                    #akademik
                    #soal view
                    $soal_view .= '
                                    <div class="scrollable hidden-soal " style="display: none;" id="_view_soal' . $no_lihat_soal++ . '">
                                        <div class="card mb-5 pb-5">
                                            <div class="card-body">
                                                  
                                                <p class="text-justify soal-bold">' . $retrieve_soal['soal'] . '</p>
                                            
                                                ' . $this->gambar($retrieve_soal['file_soal'], 'soal') .  '
                                            

                                                <ul class="soal-bold" style="list-style-type: upper-alpha;">
                                                    <li>
                                                    &nbsp' . $this->gambar($retrieve_soal['file_1'], 'o') . '
                                                    ' . $retrieve_soal['opsi_1'] . '
                                                    </li>
                                                    <li>
                                                    &nbsp' . $this->gambar($retrieve_soal['file_2'], 'o') . '
                                                    ' . $retrieve_soal['opsi_2'] . '
                                                    </li>
                                                    <li>
                                                    &nbsp' . $this->gambar($retrieve_soal['file_3'], 'o') . '
                                                    ' . $retrieve_soal['opsi_3'] . '
                                                    </li>
                                                    <li>
                                                    &nbsp' . $this->gambar($retrieve_soal['file_4'], 'o') . '
                                                    ' . $retrieve_soal['opsi_4'] . '
                                                    </li>
                                                    <li>
                                                    &nbsp' . $this->gambar($retrieve_soal['file_5'], 'o') . '
                                                    ' . $retrieve_soal['opsi_5'] . '
                                                    </li>
                                                </ul>

                                            </div>
                                        </div>
                                        <br>
                                        <br>
                                        <br>


                                    </div>

                                    ';

                    $opsi .= '
                                <div class="d-flex flex-row hidden mb-3 tambah-hidden-opsi hidden-opsi   _view_opsi' . $no_lihat_opsi++ . '">
                                    <div class="tombol-jawaban ' . $this->aktikan_opsi('A', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',A' . '\'); " >
                                        A
                                    </div>
                                    <div class="tombol-jawaban ' . $this->aktikan_opsi('B', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',B' . '\'); "  >
                                        B
                                    </div>
                                    <div class="tombol-jawaban ' . $this->aktikan_opsi('C', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',C' . '\'); " >
                                        C
                                    </div>
                                    <div class="tombol-jawaban ' . $this->aktikan_opsi('D', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',D' . '\'); " >
                                        D
                                    </div>
                                    <div class="tombol-jawaban ' . $this->aktikan_opsi('E', $list_jawaban) . '" onClick=" return save(\'' . $list_soal . ',E' . '\'); " >
                                        E
                                    </div>
                                </div>


                                ';
                }
            }
        }



        $return =  array(
            'soal' => $soal_jwb,
            '_view_soal' => $soal_view,
            'opsi' => $opsi,
            'nomor_1' => 1
            // 'nomor_1' => explode(":", reset($soal))[0]
        );
        $id_soal = $request->id_soal;
        if ($id_soal) {
            $return['nomor_1'] = $id_soal;
        }

        echo json_encode($return);
    }

    public function save_answer(Request $request)
    {

        $id_soal = $request->id_soal;
        $opsi = $request->opsi;
        $id_answer = $request->id_answer;
        $data = Answer::where('id', $id_answer)->first();
        $soal = explode(",", $data['current_answer']);

        $jawaban = '';
        foreach ($soal as $s) {
            if ($s != '') {
                #navigasi soal
                $lj = explode(":", $s);
                $list_soal = $lj[0];
                $list_jawaban = $lj[1];

                if ($list_soal == $id_soal) {
                    $jawaban .= $list_soal . ":" . $opsi . ",";
                } else {

                    $jawaban .= $list_soal . ":" . $list_jawaban . ",";
                }
            }
        }
        Answer::where('id', $request->id_answer)
            ->update([
                'current_answer' =>  $jawaban,
                'remaining_time_minute' => $request->menit,
                'remaining_time_second' => $request->detik,

            ]);


        echo 1;
    }


    public function save_time(Request $request)
    {

        Answer::where('id', $request->id_answer)
            ->update([
                'remaining_time_minute' => $request->menit,
                'remaining_time_second' => $request->detik,

            ]);


        echo 1;
    }

    public function save_time_finish(Request $request)
    {


        $time = $request->time;
        // save time
        if ($time == 0) {
            Answer::where('id', $request->id_answer)
                ->update([
                    'remaining_time_minute' => 0,
                    'remaining_time_second' => 0,
                    // 'status' => '1',

                ]);
        }

        #peserta 
        $student = Student::where('username', Auth::user()->username)->first();
        #jadwal ujian
        $exam = Exam::where('kode_ruangan', $student['kode_ruangan'])->where('kode_sesi', $student['kode_sesi'])->first();
        #jika sudah selesai
        $final1 = Answer::where('username', Auth::user()->username)->where('exam_id', $exam['id'])->count();
        $final2 = Answer::where('username', Auth::user()->username)->where('exam_id', $exam['id'])->where('remaining_time_minute', 0)->where('remaining_time_second', 0)->count();

        if ($final1 == $final2) {
            $return =  array(
                'status' => false
            );
        } else {
            $return =  array(
                'status' => true
            );
        }


        echo json_encode($return);
    }



    function aktikan_opsi($opsi, $jawaban)
    {
        if ($opsi == $jawaban) {

            return 'active';
        }
    }

    function gambar($gambar, $cek)
    {
        if ($gambar) {
            if ($cek == 'soal') {
                #soal
                return '<img src="' . url('soal') . '/' . $gambar . '" style="width: 20%; padding-bottom: 15px;" alt=""> <br>';
            } else {
                return '<img src="' . url('soal')  . '/' . $gambar . '" style="width: 20%; padding-bottom: 15px;" alt=""> <br>';
            }
        }
    }
}
