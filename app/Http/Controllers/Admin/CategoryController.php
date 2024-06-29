<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Yajra\DataTables\Facades\DataTables;

class CategoryController extends Controller
{

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Category::get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {


                    $btn = '
                    <div class="d-flex justify-content-center">
                    <button type="button" class="btn btn-icon btn-icon-primary px-3" onclick="edit(\'' . $row->id . '\'); return false;"  ><i
                            class="fas fa-pen" aria-hidden="true"></i></button>
                    <button type="button" class="btn btn-icon btn-icon-danger px-3" disabled onclick="hapus(\'' . $row->id . '\'); return false;"  ><i
                            class="fas fa-trash" aria-hidden="true"></i></button>
                </div>

                ';
                    return $btn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.kategori');
    }


    public function store(Request $request)
    {


        if ($request->kode != null) {
            $request->validate([
                'kode_kategori' =>  'required|unique:categories,kode_kategori,' . $request->kode,
                'nama_kategori' => 'required',
            ]);
        } else {
            $request->validate([
                'kode_kategori' =>  'required||unique:categories,kode_kategori',
                'nama_kategori' => 'required',
            ]);
        }



        Category::updateOrCreate(
            ['id' => $request->kode],
            [
                'kode_kategori' => $request->kode_kategori,
                'nama_kategori' => $request->nama_kategori,
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
        $unit = Category::find($id);
        return response()->json($unit);
    }



    public function destroy($id)
    {
        $deleted = Category::destroy($id);
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
