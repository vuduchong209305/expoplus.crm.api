<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Exhibition;
use App\Helpers\HTMLHelper;

class ExhibitionController extends Controller
{
    public function index(Request $request)
    {
        $exhibitions = Exhibition::where('organizer_id', auth('api')->user()->organizer_id)
                                ->search($request->search)
                                ->latest()->get();

        return sendResponse($exhibitions);
    }

    public function save(Request $request, Exhibition $exhibition)
    {
        if ($request->id) {
            $exhibition = Exhibition::findOrFail($request->id);
        }

        $exhibition->title = $request->title;
        $exhibition->location = $request->location;
        $exhibition->start_date = $request->start_date;
        $exhibition->end_date = $request->end_date;
        $exhibition->organizer_id = auth('api')->user()->organizer_id;
        $exhibition->logo = HTMLHelper::uploadImage($exhibition->logo, 'logo', 'exhibition');

        if($exhibition->save()) return sendResponse($exhibition, 'Lưu thành công');
    }

    public function edit(Request $request)
    {
        $exhibition = Exhibition::findOrFail($request->id);
        return sendResponse($exhibition);
    }

    public function delete(Request $request)
    {
        $exhibition = Exhibition::findOrFail($request->id);

        $exhibition->delete();

        return sendResponse($exhibition, "Xóa thành công " . $exhibition->title ?? null);
    }
}
