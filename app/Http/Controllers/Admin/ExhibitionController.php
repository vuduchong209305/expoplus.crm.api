<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\Exhibition;
use App\Models\Organizer;

class ExhibitionController extends BaseController
{
    public function index()
    {
        $this->html['data'] = Exhibition::paginate();
        return view('admin.exhibition.index', $this->html);
    }

    public function create(Request $request)
    {
        $this->html['organizers'] = Organizer::status()->get();

        if(!empty($request->id))
            $this->html['exhibition'] = Exhibition::findOrFail($request->id);

        return view('admin.exhibition.create', $this->html);
    }

    public function store(Request $request, Exhibition $exhibition)
    {
        if(!empty($request->id)) {
            $exhibition = Exhibition::findOrFail($request->id);
        }
        
        $exhibition->title = $request->title;
        $exhibition->organizer_id = $request->organizer_id;
        $exhibition->save();

        return !empty($request->id) ? back()->with('success', 'Cập nhật thành công') : redirect()->route('exhibition.index')->with("success", "Thêm mới thành công");

    }

    public function sort(Request $request)
    {
        foreach ($request->orders as $item) {
            Exhibition::where('id', $item['id'])->update(['order' => $item['order']]);
        }

        return sendResponse($request->orders, 'Cập nhật thứ tự thành công');
    }
}
