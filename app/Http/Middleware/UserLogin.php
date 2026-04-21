<?php

namespace App\Http\Middleware;

use Closure, Auth;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class UserLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if(auth('user')->check() && !empty(auth('user')->user()->email) && auth('user')->user()->status == 1) {
            return $next($request);
        }

        auth('user')->logout();

        return redirect()->route('index.home')->withErrors('Vui lòng đăng nhập');
    }
}
