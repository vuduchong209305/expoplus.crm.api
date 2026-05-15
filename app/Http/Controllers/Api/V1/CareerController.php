<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Career;

class CareerController extends Controller
{
    public function index()
    {
        $careers = Career::orderBy('title', 'ASC')->get();
        return sendResponse($careers);
    }
}
