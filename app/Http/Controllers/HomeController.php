<?php

namespace App\Http\Controllers;

use App\Student;
use App\Teacher;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        // return redirect('logout', 'refresh');

        if (Auth::user()->role_id == 1) {
            return view('admin.beranda');
        } else if (Auth::user()->role_id == 2) {
            $username = Auth::user()->username;
            $pengawas = Teacher::where('username', $username)->first();
            $jumlah = Student::where('kode_sesi', $pengawas['kode_sesi'])->where('kode_ruangan', $pengawas['kode_ruangan'])->count();
            return view('teacher.dashboard', ['jumlah' => $jumlah, 'pengawas' => $pengawas]);
        } else if (Auth::user()->role_id == 4) {

            return view('server.beranda');
        } else {
            return view('students.beranda');
        }
    }
}
