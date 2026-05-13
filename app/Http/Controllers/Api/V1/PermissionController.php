<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Permission;

class PermissionController extends Controller
{
    public function index()
    {
        $permissions = Permission::orderBy('group')
                                ->orderBy('title')
                                ->get()
                                ->groupBy('group');

        return sendResponse($permissions);
    }
}
