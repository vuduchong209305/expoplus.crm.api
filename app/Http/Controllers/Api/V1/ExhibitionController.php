<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Exhibition;

class ExhibitionController extends Controller
{
    public function index()
    {
        $exhibitions = Exhibition::where('organizer_id', auth('api')->user()->organizer_id)->get();
        return sendResponse($exhibitions);
    }
}
