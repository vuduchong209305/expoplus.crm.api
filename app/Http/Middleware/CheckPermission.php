<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CheckPermission
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $user = auth('api')->user();

        if (!$user) {
            return sendError('Tài khoản chưa đăng nhập');
        }

        /*
        |--------------------------------------------------------------------------
        | SUPER ADMIN BYPASS
        |--------------------------------------------------------------------------
        */

        if ($user->is_admin) {
            return $next($request);
        }
        /*
        |--------------------------------------------------------------------------
        | CHECK STATUS
        |--------------------------------------------------------------------------
        */

        if($user->status != 1) {
            auth('api')->logout();
            return sendError('Tài khoản đã bị khóa');
        }
        /*
        |--------------------------------------------------------------------------
        | CHECK PERMISSION
        |--------------------------------------------------------------------------
        */

        $routeName = $request->route()->getName();
        
        if (!$user->hasPermission($routeName)) {
            return sendError('Không có quyền');
        }

        return $next($request);
    }
}
