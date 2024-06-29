<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use DataTables;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{

    public function index(Request $request)
    {
        if ($request->ajax()) {

            // $data = User::latest()->get();
            $data = DB::table('users as a')->select('a.name', 'a.role_id', 'a.id', 'a.username', 'b.name_role')
                ->leftJoin('roles as b', 'a.role_id', '=', 'b.id')
                ->orderBy('a.id', 'ASC')
                ->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->editColumn('name_role', function ($data) {

                    if ($data->name_role == "Admin") {
                        return '<td><span class="badge badge-warning">' . $data->name_role . '</span></td>';
                    } else if ($data->name_role == "Pengawas") {
                        return '<td><span class="badge badge-danger">' . $data->name_role . '</span></td>';
                    } else {
                        return '<td><span class="badge badge-primary">' . $data->name_role . '</span></td>';
                    }
                })
                ->addColumn('action', function ($row) {
                    if ($row->name_role == 'Admin') {
                        $btn = '
                        <div class="d-flex">
                        <button type="button" class="btn btn-icon btn-icon-primary px-3" onclick="edit(\'' . $row->id . '\'); return false;" ><i
                                class="fas fa-pen" aria-hidden="true"></i></button>
                        <button type="button" class="btn btn-icon btn-icon-danger px-3" onclick="hapus(\'' . $row->id . '\'); return false;" ><i
                                class="fas fa-trash" aria-hidden="true"></i></button>
                    </div>';
                    } else {

                        $btn = '
                        <div class="d-flex">
                        <button type="button" class="btn btn-icon  btn-icon-primary px-3" disabled ><i
                                class="fas fa-pen" aria-hidden="true"></i></button>
                        <button type="button" class="btn btn-icon btn-icon-danger px-3" disabled ><i
                                class="fas fa-trash" aria-hidden="true"></i></button>
                    </div>';
                    }


                    return $btn;
                })

                ->rawColumns(['action', 'name_role'])
                ->make(true);
        }
        return view('admin.user');
    }

    public function store(Request $request)
    {
        $id = $request->kode;
        $rcstat = $request->rcstat;

        if ($rcstat == 1) {
            $request->validate([
                'name' => 'required',
                'username'    =>  'required||unique:users,username',
                'password' => 'required', 'string', 'min:3',
            ]);
        } else {
            $request->validate([
                'name' => 'required',
                'username'    =>  'required|unique:users,username,' . $id,
            ]);
        }

        $input = [
            'name' => $request->name,
            'role_id' => 1,
            'username' => $request->username,
        ];

        if ($rcstat == 1) {
            $input['password'] = Hash::make($request->password);
        } else {
            if ($request->password != "") {
                $input['password'] = Hash::make($request->password);
            }
        }


        User::updateOrCreate(['id' => $id], $input);
        $return = array(
            'status'    => true,
            'message'    => 'Data berhasil disimpan..',
        );


        return response()->json($return);
    }



    public function edit($id)
    {
        $user = User::find($id);

        return response()->json($user);
    }




    public function destroy($id)
    {
        $deleted = User::destroy($id);
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
}
