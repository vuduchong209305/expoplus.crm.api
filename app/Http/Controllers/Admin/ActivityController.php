<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Activity;

class ActivityController extends Controller
{
    public function index(Request $request)
    {
        $this->html['data'] = Activity::latest()->paginate(20);
        return view('admin.activity', $this->html);
    }
}
