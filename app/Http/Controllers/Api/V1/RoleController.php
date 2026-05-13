<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\RoleOrganizer;

class RoleController extends Controller
{
    public function index(Request $request)
    {
        $roles = RoleOrganizer::where('organizer_id', auth('api')->user()->organizer_id)
                                ->withCount('user', 'permissions')
                                ->get();

        return sendResponse($roles);
    }

    public function edit(Request $request)
    {
        $role = RoleOrganizer::with('permissions')
                                ->where(
                                    'organizer_id',
                                    auth('api')->user()->organizer_id
                                )
                                ->findOrFail($request->id);

        return sendResponse($role);
    }

    public function save(Request $request, RoleOrganizer $role)
    {
        $request->validate([
            'name' => 'required|max:255'
        ]);

        if ($request->id) {

            $role = RoleOrganizer::where(
                'organizer_id',
                auth('api')->user()->organizer_id
            )->findOrFail($request->id);
        }

        $role->name = $request->name;
        $role->description = $request->description;
        $role->organizer_id = auth('api')->user()->organizer_id;

        $role->save();

        $role->permissions()->sync(
            $request->permissions ?? []
        );

        return sendResponse($role, 'Lưu nhóm quyền thành công');
    }

    public function delete(Request $request)
    {
        
    }
}
