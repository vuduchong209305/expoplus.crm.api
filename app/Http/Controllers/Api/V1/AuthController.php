<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function login(Request $request)
    {    
        $request->validate([
            "email"    => "required|email",
            "password" => "required"
        ]);

        $token = auth('api')->attempt([
            "email"     => $request->email,
            "password"  => $request->password
        ]);

        if(empty($token)) return sendError('Sai thông tin đăng nhập');

        return sendResponse([
                                'token' => $token,
                                'user' => auth('api')->user()->only(['id', 'fullname', 'email', 'avatar'])
                            ], 'Đăng nhập thành công');
    }

    public function me()
    {
        $user = auth('api')->user()->only(['id', 'fullname', 'email', 'avatar']);
        return sendResponse($user);
    }

    public function logout()
    {
        auth('api')->logout();
        return sendResponse(null, 'Đăng xuất thành công');
    }
}
