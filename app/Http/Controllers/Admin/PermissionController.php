<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Permission;
use Artisan;

class PermissionController extends Controller
{
    public function index(Request $request)
    {
        $this->html['data'] = Permission::orderBy('group', 'ASC')->get();
        return view('admin.permission.index', $this->html);
    }

    public function store(Request $request)
    {
        try {

            $permissions = $request->permissions ?? [];

            foreach ($permissions as $id => $item) {

                $permission = Permission::find($id);

                if (!$permission) {
                    continue;
                }

                $permission->title = $item['title'] ?? $permission->title;

                $permission->group = $item['group'] ?? $permission->group;

                $permission->save();
            }

            return back()->with(
                'success',
                'Cập nhật phân quyền thành công'
            );

        } catch (\Exception $e) {

            return back()->withErrors(
                $e->getMessage()
            );
        }
    }

    public function update()
    {
        Artisan::call('permission:sync');
        return back()->with('success', 'Cập nhật thành công');
    }
}
