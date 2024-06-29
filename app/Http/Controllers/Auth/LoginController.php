<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\User;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\JsonResponse;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

        $this->middleware('guest')->except('logout');
    }



    protected function authenticated(Request $request, $user)
    {
        if ($user->ip_address != '' && $user->role_id == 3) {
            $this->guard()->logout();
            return redirect('/reset/login');
        }

        User::where('id', $user->id)
            ->update([
                'ip_address' => request()->ip(),
            ]);
    }


    public function logout(Request $request)
    {
        $role = $this->guard()->user()->role_id;

        $this->guard()->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        if ($role == 1 || $role == 2) {
            return  redirect('/admin/login');
        } else if ($role == 4) {
            return  redirect('/server/login');
        } else {
            return  redirect('/');
        }
        // return ($role == 1 || $role == 2) ? view('admin.login') : ($role == 4) ? view('server.login') :  redirect('/login');
    }





    public function username()
    {
        return 'username';
    }
}
