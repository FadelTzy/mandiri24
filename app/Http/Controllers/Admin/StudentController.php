<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Imports\StudentImport;
use App\Student;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Facades\Excel;
use Yajra\DataTables\Facades\DataTables;

class StudentController extends Controller
{

    public function index(Request $request)
    {
        if ($request->ajax()) {

            // $data = User::latest()->get();
            $data = Student::with('ruangan', 'sesi', 'jurusan');
            // $data = DB::table('students as a')->select('a.*', 'b.nama_ruangan', 'c.nama_sesi', 'd.nama_jurusan')
            //     ->leftJoin('rooms as b', 'a.kode_ruangan', '=', 'b.kode_ruangan')
            //     ->leftJoin('sesis as c', 'a.kode_sesi', '=', 'c.kode_sesi')
            //     ->leftJoin('majors as d', 'a.kode_jurusan', '=', 'd.kode_jurusan')
            //     ->orderBy('a.id', 'ASC')
            //     ->get();
            // dd($data);
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {
                    $btn = '
                        <div class="d-flex">
                        <button type="button" class="btn btn-icon btn-icon-primary px-3" onclick="edit(\'' . $row->id . '\'); return false;" ><i
                                class="fas fa-pen" aria-hidden="true"></i></button>
                        <button type="button" class="btn btn-icon btn-icon-danger px-3" onclick="hapus(\'' . $row->id . '\'); return false;" ><i
                                class="fas fa-trash" aria-hidden="true"></i></button>
                    </div>';

                    return $btn;
                })



                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.peserta');
    }

    public function store(Request $request)
    {
        $id = $request->kode;
        $rcstat = $request->rcstat;
        $user =  User::where('username', $request->username_old)->first();
        if ($rcstat == 1) {

            $request->validate([
                'nama' => 'required',
                'kode_ruangan' => 'required',
                'kode_sesi' => 'required',
                'jurusan' => 'required',
                'username'    =>  'required||unique:users,username',
                'password' => 'required', 'string', 'min:3',
            ]);
        } else {

            $request->validate([
                'nama' => 'required',
                'kode_ruangan' => 'required',
                'kode_sesi' => 'required',
                'jurusan' => 'required',
                'username'    =>  'required|unique:users,username,' . $user['id'],
            ]);
        }

        #input user
        $input = [
            'name' => $request->nama,
            'role_id' => 3,
            'username' => $request->username,

        ];

        if ($rcstat == 1) {
            #tambah
            $input['password'] = Hash::make($request->password);
            User::updateOrCreate(['username' => $request->username], $input);
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


        #input Peserta
        $student = [
            'nama' => $request->nama,
            'username' => $request->username,
            'kode_ruangan' => $request->kode_ruangan,
            'kode_jurusan' => $request->jurusan,
            'kode_sesi' => $request->kode_sesi,
            'foto' => 'default.jpg',
            'status' => '1',
        ];




        Student::updateOrCreate(['id' => $id], $student);
        $return = array(
            'status'    => true,
            'message'    => 'Data berhasil disimpan..',
        );


        return response()->json($return);
    }



    public function edit($id)
    {
        $unit = Student::find($id);
        return response()->json($unit);
    }


    public function destroy($id)
    {
        $cek = Student::find($id);
        $user =  User::where('username', $cek['username'])->first();
        User::destroy($user['id']);
        $deleted = Student::destroy($id);
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

    // public function import_student(Request $request)
    // {
    //     $this->validate($request, [
    //         'file' => 'required|mimes:xls,xlsx'
    //     ]);

    //     if ($request->hasFile('file')) {
    //         $file = $request->file('file'); //GET FILE
    //         Excel::import(new StudentImport, $file); //IMPORT FILE 
    //     }
    //     $return = array(
    //         'status'    => true,
    //         'message'    => 'Data berhasil disimpan..',
    //     );

    //     return response()->json($return);
    // }

    public function user_peserta()
    {
        $data =  Student::all();

        foreach ($data as $data) {
            $user = DB::table('users')->where('username', $data->username)->first();
            if (!$user) {
                User::create([
                    'name' => $data->nama,
                    'role_id' => 3,
                    'username' => $data->username,
                    'password' => Hash::make(substr($data->username, -5)),
                ]);
            }
        }

        return  redirect('siswa');
    }
}
