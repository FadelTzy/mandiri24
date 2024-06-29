<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Sesi;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class SessionController extends Controller
{


    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Sesi::get();
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
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.sesi');
    }


    public function store(Request $request)
    {


        if ($request->kode != null) {
            $request->validate([
                'kode_sesi' =>  'required|unique:sesis,kode_sesi,' . $request->kode,
                'nama_sesi' => 'required',
            ]);
        } else {
            $request->validate([
                'kode_sesi' =>  'required||unique:sesis,kode_sesi',
                'nama_sesi' => 'required',
            ]);
        }



        Sesi::updateOrCreate(
            ['id' => $request->kode],
            [
                'kode_sesi' => $request->kode_sesi,
                'nama_sesi' => $request->nama_sesi,
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
        $unit = Sesi::find($id);
        return response()->json($unit);
    }



    public function destroy($id)
    {
        $deleted = Sesi::destroy($id);
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
