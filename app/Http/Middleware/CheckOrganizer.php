<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use App\Models\Organizer;

class CheckOrganizer
{
    public function handle(Request $request, Closure $next): Response
    {
        if(auth('organizer')->check()) {

            if(auth('organizer')->user()->status != 1) {

                auth('organizer')->logout();
                return redirect()->route('organizer.get.login')->withErrors('Bạn không có quyền truy cập');

            } elseif(auth('organizer')->user()->company->status != 1) {

                auth('organizer')->logout();
                return redirect()->route('organizer.get.login')->withErrors('Công ty của bạn đã bị khóa');

            } elseif(auth('organizer')->user()->status == 1) {
                return $next($request);
            }
        }

        auth('organizer')->logout();
        return redirect()->route('organizer.get.login')->withErrors('Vui lòng đăng nhập');
    }
}
