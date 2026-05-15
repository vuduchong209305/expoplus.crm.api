<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Stakeholder;

class StakeholderController extends Controller
{
    public function index(Request $request)
    {
        $this->html['data'] = Stakeholder::orderBy('title', 'ASC')->paginate(50);

        if(!empty($request->id))
            $this->html['stakeholder'] = Stakeholder::findOrFail($request->id);

        return view('admin.stakeholder.index', $this->html);
    }

    public function store(Request $request, Stakeholder $stakeholder)
    {
        if(!empty($request->id))
            $stakeholder = Stakeholder::findOrFail($request->id);

        $stakeholder->title = $request->title;
        
        if($stakeholder->save()) {
            return back()->with("success", "Lưu thành công {$stakeholder->title}");
        }

        return back()->withErrors('Đã có lỗi xảy ra, vui lòng thử lại');
    }
}
