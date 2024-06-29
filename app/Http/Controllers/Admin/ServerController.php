<?php

namespace App\Http\Controllers\Admin;

use App\Answer;
use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\KirimJawaban;
use App\Server;
use App\ServerDetail;
use App\StatusServer;
use App\Student;
use App\Teacher;
use App\User;
use Carbon\Carbon;
use GuzzleHttp\Promise\Create;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Yajra\DataTables\Facades\DataTables;

class ServerController extends Controller
{

    public function index(Request $request)
    {
        if ($request->ajax()) {

            // $data = User::latest()->get();
            $data = Server::all();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {
                    $btn = '
                        <div class="d-flex">
                        <a class="btn btn-icon btn-icon-warning px-3" href="' . url('server/detail') . '/' . $row->id . '"  ><i
                                class="fas fa-eye" aria-hidden="true"></i></a>

                        <button type="button" class="btn btn-icon btn-icon-primary px-3" onclick="edit(\'' . $row->id . '\'); return false;" ><i
                                class="fas fa-pen" aria-hidden="true"></i></button>
                        <button type="button" class="btn btn-icon btn-icon-danger px-3" onclick="hapus(\'' . $row->id . '\'); return false;" ><i
                                class="fas fa-trash" aria-hidden="true"></i></button>
                    </div>';

                    return $btn;
                })
                ->addColumn('status', function ($row) {

                    if ($row->is_active == '1') {
                        $btn = '<div class="text-success" >Aktif</div>';
                    } else {

                        $btn = 'Tidak Aktif';
                    }

                    return $btn;
                })


                ->rawColumns(['action', 'status'])
                ->make(true);
        }
        return view('admin.server');
    }


    public function store(Request $request)
    {
        $id = $request->kode;
        $rcstat = $request->rcstat;
        $user =  User::where('username', $request->username_old)->first();
        if ($rcstat == 1) {

            $request->validate([
                'nama' => 'required',
                'is_active' => 'required',
                'username'    =>  'required||unique:users,username',
                'password' => 'required', 'string', 'min:6',
            ]);
        } else {


            $request->validate([
                'nama' => 'required',
                'is_active' => 'required',
                'username'    =>  'required|unique:users,username,' . $user['id'],
            ]);
        }

        #input user
        $input = [
            'name' => $request->nama,
            'role_id' => 4,
            'username' => $request->username,

        ];

        if ($rcstat == 1) {
            #tambah
            $input['password'] = Hash::make($request->password);
            User::updateOrCreate(['id' => $request->username], $input);
            $return = array(
                'status'    => true,
                'message'    => 'Data berhasil disimpan..',
            );
        } else {
            #ubah
            if ($request->password != "") {
                $input['password'] = Hash::make($request->password);
            } else {
                $input['password'] = $user['password'];
            }

            User::updateOrCreate(['username' => $request->username_old], $input);
            $return = array(
                'status'    => true,
                'message'    => 'Data berhasil disimpan..',
            );
        }


        #input Pengawas
        $teacher = [
            'nama' => $request->nama,
            'username' => $request->username,
            'is_active' => $request->is_active,

        ];




        Server::updateOrCreate(['id' => $id], $teacher);
        $return = array(
            'status'    => true,
            'message'    => 'Data berhasil disimpan..',
        );


        return response()->json($return);
    }

    public function edit($id)
    {
        $user = Server::find($id);

        return response()->json($user);
    }

    public function destroy($id)
    {
        $cek = Server::find($id);
        $user =  User::where('username', $cek['username'])->first();
        User::destroy($user['id']);
        $deleted = Server::destroy($id);
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

    public function user_server()
    {
        $data =  Server::all();

        foreach ($data as $data) {
            $user = DB::table('users')->where('username', $data->username)->first();
            if (!$user) {
                User::create([
                    'name' => $data->nama,
                    'role_id' => 4,
                    'username' => $data->username,
                    'password' => Hash::make(substr($data->username, -5)),
                ]);
            }
        }

        return  redirect('server');
    }


    public function detail_server($id)
    {
        $server = Server::where('id', $id)->first();
        return view('admin.detail-server', ['server' => $server]);
    }

    public function semua_data_pengawas()
    {
        $query = 'SELECT teachers.*,rooms.nama_ruangan FROM teachers JOIN rooms ON teachers.kode_ruangan=rooms.kode_ruangan  WHERE username NOT IN (SELECT username_pengawas FROM server_details) ';
        $data = DB::select(DB::raw($query));

        return DataTables::of($data)
            ->addIndexColumn()
            ->addColumn('action', function ($row) {
                $btn = '
                    <div class="d-flex">
                    <button type="button" class="btn btn-icon btn-icon-primary px-3" onclick="tambah(\'' . $row->username . '\'); return false;" ><i class="fas fa-plus" aria-hidden="true"></i></button>
                   
                </div>';

                return $btn;
            })
            ->addColumn('ruangan', function ($row) {

                return $row->nama_ruangan;
            })



            ->rawColumns(['action', 'ruangan'])
            ->make(true);
    }

    public function data_pengawas_server($username_server)
    {
        // var_dump($username_server);
        $query = "SELECT 
        a.*,
        b.nama,
        c.nama_ruangan
        FROM server_details a
        INNER JOIN teachers b
            ON a.username_pengawas = b.username
        INNER JOIN rooms c
            ON b.kode_ruangan = c.kode_ruangan
        WHERE a.username_server='$username_server'

    ";
        $data = DB::select(DB::raw($query));

        return DataTables::of($data)
            ->addIndexColumn()
            ->addColumn('action', function ($row) {
                $btn = '
                    <div class="d-flex">
                    <button type="button" class="btn btn-icon btn-icon-danger px-3" onclick="hapus(\'' . $row->id . '\'); return false;" ><i class="fas fa-trash" aria-hidden="true"></i></button>
                   
                </div>';

                return $btn;
            })
            ->addColumn('ruangan', function ($row) {

                return $row->nama_ruangan;
            })



            ->rawColumns(['action', 'ruangan'])
            ->make(true);
    }

    public function hapus($id)
    {

        $deleted = ServerDetail::destroy($id);
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

    public function tambah(Request $request)
    {
        ServerDetail::create([
            'username_server' => $request->username_server,
            'username_pengawas' => $request->username_pengawas,
        ]);

        echo 1;
    }

    public function status_server(Request $request)
    {
        if ($request->ajax()) {

            // $data = User::latest()->get();
            $data = StatusServer::with('ruangan', 'sesi', 'server')
                // ->where('kode_sesi', '<>', '11')
                // ->where('kode_sesi', '<>', '12')
                // ->where('kode_sesi', '11')
                // ->where('kode_sesi', '12')
                // ->where('kode_sesi', '<>', '13')
                // ->where('kode_sesi', '<>', '14')
                // ->orWhere('kode_sesi', '51')
                // ->orWhere('kode_sesi', '52')
                // ->orWhere('kode_sesi', '43')

                ->get();
            // ->groupBy(function ($date) {
            //     // return Carbon::parse($date->created_at)->format('Y'); // grouping by years
            //     //return Carbon::parse($date->created_at)->format('m'); // grouping by months
            //     return Carbon::parse($date->tgl_ujian)->format('m'); // grouping by months
            // });
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {
                    $btn = '';
                    return $btn;
                })
                ->addColumn('status', function ($row) {
                    if ($row->status_memenuhi == '1') {
                        $btn = '<div class="text-success" >Memenuhi</div>';
                    } else {
                        $btn = '<div class="text-danger" >Tidak Memenuhi</div>';
                    }
                    return $btn;
                })



                ->rawColumns(['action', 'status'])
                ->make(true);
        }
        return view('admin.status-server');
    }

    public function hasil(Request $request)
    {
        // $json = json_decode(file_get_contents('php://input'), true);
        $data = json_decode($request->data);


        foreach ($data as $k) {
            //  return response()->json($k->kode_kursus);
            $cek =  DB::table('answers')
                ->where('exam_id', $k->exam_id)
                ->where('username', $k->username)
                ->where('kode_kursus', $k->kode_kursus)
                ->first();

            // return response()->json($cek);
            //return 1;

            if ($cek != null) {
                Answer::where('exam_id', $k->exam_id)
                    ->where('username', $k->username)
                    ->where('kode_kursus', $k->kode_kursus)
                    ->update([
                        'remaining_time_minute' => $k->remaining_time_minute,
                        'remaining_time_second' => $k->remaining_time_second,
                        'question_id' => $k->question_id,
                        'total_question' => $k->total_question,
                        'current_answer' => $k->current_answer,
                        'score' => $k->score,
                    ]);
            } else {
                Answer::create([
                    'exam_id' => $k->exam_id,
                    'username' => $k->username,
                    'kode_kategori' => $k->kode_kategori,
                    'kode_kursus' => $k->kode_kursus,
                    'remaining_time_minute' => $k->remaining_time_minute,
                    'remaining_time_second' => $k->remaining_time_second,
                    'question_id' => $k->question_id,
                    'total_question' => $k->total_question,
                    'current_answer' => $k->current_answer,
                    'score' => $k->score,
                ]);
            }
        }

        $pusat = KirimJawaban::where('kode_ruangan', $request->kode_ruangan)
            ->where('kode_sesi', $request->kode_sesi)
            ->whereDate('ujian_mulai', Carbon::now()->format('Y-m-d'));
        $jumlah_peserta = Student::where('kode_ruangan', $request->kode_ruangan)
            ->where('kode_sesi', $request->kode_sesi)->count();


        $cek = StatusServer::where('username', $request->username)
            ->where('kode_ruangan', $request->kode_ruangan)
            ->where('kode_sesi', $request->kode_sesi)
            ->first();
        $status_memenuhi = $pusat->count() / 3;
        if ($cek != null) {
            StatusServer::where('username', $request->username)
                ->where('kode_ruangan', $request->kode_ruangan)
                ->where('kode_sesi', $request->kode_sesi)
                ->update([
                    'jml_jwb_lokal' => $request->jumlah_jawaban,
                    'jml_jwb_pusat' => $pusat->count(),
                    'tgl_ujian' => $request->ujian_mulai,
                    'jmh_kehadiran' => $request->jumlah_kehadiran,
                    'total_peserta' => $jumlah_peserta,
                    'status_memenuhi' => ($request->jumlah_kehadiran == $status_memenuhi) ? '1' : '0',
                ]);
        } else {
            $status_memenuhi = $pusat->count() / 3;
            StatusServer::create([
                'username' => $request->username,
                'kode_ruangan' => $request->kode_ruangan,
                'kode_sesi' => $request->kode_sesi,
                'jml_jwb_lokal' => $request->jumlah_jawaban,
                'jml_jwb_pusat' => $pusat->count(),
                'tgl_ujian' => $request->ujian_mulai,
                'jmh_kehadiran' => $request->jumlah_kehadiran,
                'total_peserta' => $jumlah_peserta,
                'status_memenuhi' => ($request->jumlah_kehadiran == $status_memenuhi) ? '1' : '0',
            ]);
        }


        // return 1;
        return ResponseFormatter::success([
            'message' => 'berhasil dikirim ke pusat',
        ], 'Berhasil');


        // array_sum($score)
    }
}
