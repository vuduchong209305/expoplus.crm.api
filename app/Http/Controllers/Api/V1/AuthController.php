<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        $token = auth('api')->attempt([
            'email' => $request->email,
            'password' => $request->password,
        ]);

        if (!$token) {
            return sendError('Sai thông tin đăng nhập');
        }

        $user = auth('api')->user()->load('organizer');

        if (!$user->organizer || $user->organizer->status != 1) {

            auth('api')->logout();

            return sendError('Ban tổ chức đã bị khóa');
        }

        if ($user->status != 1) {

            auth('api')->logout();

            return sendError('Tài khoản đã bị khóa');
        }

        return sendResponse([
            'token' => $token,

            'user' => $user->only([
                'id',
                'fullname',
                'is_admin',
                'email',
                'avatar'
            ])
        ], 'Đăng nhập thành công');
    }

    public function me()
    {
        $user = auth('api')->user()->load([
            'organizer',
            'role.permissions'
        ]);

        return sendResponse([
            'id' => $user->id,
            'fullname' => $user->fullname,
            'email' => $user->email,
            'phone' => $user->phone,
            'avatar' => $user->avatar,
            'role_id' => $user->role_id,
            'is_admin' => $user->is_admin,
            'organizer_id' => $user->organizer_id,

            'organizer' => $user->organizer,
            'role' => $user->role,

            'permissions' => $user->role?->permissions?->pluck('key')->values()
        ]);
    }

    public function logout()
    {
        auth('api')->logout();
        return sendResponse(null, 'Đăng xuất thành công');
    }

    public function refresh()
    {
        $token = auth('api')->refresh();
        return sendResponse($token);
    }
}
