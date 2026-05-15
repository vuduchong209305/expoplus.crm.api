<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\Career;

class CareerController extends BaseController
{
    public function index(Request $request)
    {
        $this->html['data'] = Career::orderBy('title', 'ASC')->paginate(50);

        if(!empty($request->id))
            $this->html['career'] = Career::findOrFail($request->id);

        return view('admin.career.index', $this->html);
    }

    public function store(Request $request, Career $career)
    {
        if(!empty($request->id))
            $career = Career::findOrFail($request->id);

        $career->title = $request->title;
        
        if($career->save()) {
            return back()->with("success", "Lưu thành công {$career->title}");
        }

        return back()->withErrors('Đã có lỗi xảy ra, vui lòng thử lại');
    }
}
