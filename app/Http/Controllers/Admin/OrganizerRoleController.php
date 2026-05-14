<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\OrganizerRole;
use App\Helpers\RoleOrganizerHelper;

class OrganizerRoleController extends Controller
{
    public function index(Request $request)
    {
        $this->html['data'] = OrganizerRole::filter($request->q)->paginate();
        return view('admin.organizer_role.index', $this->html);
    }

    public function create(Request $request)
    {
        $this->html['permissions'] = RoleOrganizerHelper::getRoutesName();

        if(!empty($request->id))
            $this->html['role'] = OrganizerRole::findOrFail($request->id);

        return view('admin.organizer_role.create', $this->html);
    }

    public function store(Request $request, OrganizerRole $organizerRole)
    {
        if(!empty($request->id)) {
            $organizerRole = OrganizerRole::findOrFail($request->id);
        } 

        $organizerRole->name        = $request->name;
        $organizerRole->description = $request->description;
        $organizerRole->status      = $request->boolean('status');
        $organizerRole->permission  = !empty($request->permission) ? implode(';', $request->permission) : null;
        $organizerRole->avatar      = $request->avatar;
        
        if($organizerRole->save()) {
            vdh_activity_log("Lưu phân quyền Organizer " . $organizerRole->name);
            return !empty($request->id) ? back()->with('success', 'Thành công') : redirect()->route('organizer.role.index')->with("success", "Thành công");
        }
        
        return back()->withErrors('Đã có lỗi xảy ra, vui lòng thử lại');
    }

    public function delete(Request $request)
    {
        $listID = $request->get('id');

        if(strlen($listID) > 0) {

            $ids = explode(';', $listID);

            foreach($ids as $id) {

                $check_role = Role::findOrFail($id)->user;

                if(count($check_role) > 0) return back()->with('error', 'Không được xoá vì còn tài khoản trong nhóm này');

                \DB::beginTransaction();
                try {

                    if(Role::destroy($ids)) {

                        \DB::commit();

                        return back()->with('success', 'Xóa thành công');

                    }

                } catch (Exception $e) {

                    \DB::rollBack();
                    throw new Exception($e->getMessage());

                }

            }

            return back()->with('success', 'Xóa thành công');

        }
        
        return back()->withErrors('Xóa thất bại');
    }
}
