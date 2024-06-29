<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Teacher;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Yajra\DataTables\Facades\DataTables;

class TeacherController extends Controller
{

    public function index(Request $request)
    {
        if ($request->ajax()) {

            // $data = User::latest()->get();
            $data = Teacher::with('room', 'session');
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
        return view('admin.pengawas');
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
                'username'    =>  'required||unique:users,username',
                'password' => 'required', 'string', 'min:3',
            ]);
        } else {


            $request->validate([
                'nama' => 'required',

                'kode_sesi' => 'required',
                'username'    =>  'required|unique:users,username,' . $user['id'],
            ]);
        }

        #input user
        $input = [
            'name' => $request->nama,
            'role_id' => 2,
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


        #input Pengawas
        $teacher = [
            'nama' => $request->nama,
            'username' => $request->username,
            'kode_ruangan' => $request->kode_ruangan,
            'kode_sesi' => $request->kode_sesi,
        ];




        Teacher::updateOrCreate(['id' => $id], $teacher);
        $return = array(
            'status'    => true,
            'message'    => 'Data berhasil disimpan..',
        );


        return response()->json($return);
    }



    public function edit($id)
    {
        $user = Teacher::find($id);

        return response()->json($user);
    }




    public function destroy($id)
    {
        $cek = Teacher::find($id);
        $user =  User::where('username', $cek['username'])->first();
        User::destroy($user['id']);
        $deleted = Teacher::destroy($id);
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

    public function user_pengawas()
    {
        $data =  Teacher::all();

        foreach ($data as $data) {
            $user = DB::table('users')->where('username', $data->username)->first();
            if (!$user) {
                User::create([
                    'name' => $data->nama,
                    'role_id' => 2,
                    'username' => $data->username,
                    'password' => Hash::make(substr($data->username, -5)),
                ]);
            }
        }

        return  redirect('pengawas');
    }
}
