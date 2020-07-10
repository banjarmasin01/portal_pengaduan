<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\LoginModel;
class LoginController extends Controller
{
    public function signIn(Request $request)
    {
        $data = $request->data;
        $admin = LoginModel::where([
            'username' => $data['username'],
            'password' => md5($data['password'])
        ])->get();
        $result = array();
        if($admin->count() > 0)
        {
            $session_user = array(
					'username' => $data['username'],
					'level' => 'admin',										
				);				
            session($session_user);
            $result['message'] = 'sukses';
        } else 
        {
            $result['message'] = 'gagal';
        }

        echo json_encode(array('result' => $result['message']));
    }

    public function signOut(Request $request)
    {
        $request->session()->flush();
        return redirect('/login');
    }
}
