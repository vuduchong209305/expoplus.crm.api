<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Organizer;

class OrganizerController extends Controller
{
    public function index(Request $request)
    {
        $this->html['organizers'] = Organizer::filter($request->q, $request->organizer_id)->paginate();
        return view('admin.organizer.index', $this->html);
    }

    public function create(Request $request)
    {
        $this->html = [];
        
        if(!empty($request->id))
            $this->html['organizer'] = Organizer::findOrFail($request->id);

        return view('admin.organizer.create', $this->html);
    }

    public function store(Request $request, Organizer $organizer)
    {
        if(!empty($request->id)) {
            $organizer = Organizer::findOrFail($request->id);
        }
        
        $organizer->email    = $request->email;
        $organizer->phone    = $request->phone;
        $organizer->name     = $request->name;
        $organizer->address  = $request->address;
        $organizer->avatar   = $request->avatar;
        $organizer->status   = $request->boolean('status');

        if($organizer->save())
            return !empty($request->id) ? back()->with('success', 'Lưu thành công') : redirect()->route('organizer.index')->with("success", "Lưu thành công");
        
        return back()->withErrors('Đã có lỗi xảy ra, vui lòng thử lại');
    }

    public function delete(Request $request)
    {
        $listID = $request->get('id');

        if(strlen($listID) > 0) {

            $ids = explode(';', $listID);

            if(count($ids) > 0) {

                \DB::beginTransaction();
                try {

                    if(Organizer::destroy($ids)) {

                        \DB::commit();

                        return back()->with('success', 'Xóa thành công');

                    }

                } catch (Exception $e) {

                    \DB::rollBack();
                    throw new Exception($e->getMessage());

                }

            }

            return back()->withErrors('Không có ID');
            
        }
        
        return back()->withErrors('Không có ID');
    }

    public function profile(Request $request)
    {
        if(!$request->isMethod('post')) {
            $this->html['role'] = Role::get();
            return view('admin.organizer.profile', $this->html);
        }
        
        $organizer           = Organizer::findOrFail(\Auth::id());
        $organizer->email    = $request->email;
        $organizer->phone    = $request->phone;
        $organizer->fullname = $request->fullname;
        $organizer->address  = $request->address;
        $organizer->birthday = date('Y-m-d', strtotime($request->birthday));
        $organizer->passport = $request->passport;
        $organizer->avatar   = $request->avatar;

        if($request->password != $request->password_confirmation) return back()->withErrors('Nhập lại mật khẩu không đúng');

        if($request->password != '') {
            $organizer->password = bcrypt($request->password);
        }

        if($organizer->save()) return back()->with('success', 'Cập nhật thành công');
        
        return back()->withErrors('Đã có lỗi xảy ra, vui lòng thử lại');

    }
}
