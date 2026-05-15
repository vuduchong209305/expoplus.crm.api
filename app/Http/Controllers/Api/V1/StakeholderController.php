<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Stakeholder;

class StakeholderController extends Controller
{
    public function index()
    {
        $stakeholders = Stakeholder::orderBy('title', 'ASC')->get();
        return sendResponse($stakeholders);
    }
}
