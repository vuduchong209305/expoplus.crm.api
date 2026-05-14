<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Organizer;
use App\Models\Position;
use App\Models\Agency;
use App\Models\Country;
use App\Helpers\HTMLHelper;
use Excel;

class UserController extends Controller
{
    public function index(Request $request)
    {
        $this->html['organizers'] = Organizer::get();
        
        $this->html['data'] = User::search($request->q)
                                    ->organizer($request->organizer_id)
                                    ->latest()
                                    ->paginate($request->per_page);

        if(!empty($request->id))
            $this->html['user'] = User::findOrFail($request->id);

        return view('admin.user.index', $this->html);
    }

    public function create(Request $request)
    {
        $this->html['organizers'] = Organizer::get();

        if(!empty($request->id))
            $this->html['user'] = User::findOrFail($request->id);
        
        return view('admin.user.create', $this->html);
    }

    public function store(Request $request, User $user)
    {
        if(!empty($request->id))
            $user = User::findOrFail($request->id);

        $user->email         = $request->email;
        $user->phone         = $request->phone;
        $user->fullname      = $request->fullname;
        $user->organizer_id  = $request->organizer_id;
        $user->avatar        = HTMLHelper::uploadImage($user->avatar);
        $user->status        = $request->boolean('status');

        if($user->save()) {

            return !empty($request->id) ? back()->with('success', 'Lưu thành công') : redirect()->route('organizer.user.index')->with("success", "Lưu thành công");
        }
        
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

                    if(User::destroy($ids)) {
                        
                        \DB::commit();

                        return back()->with('success', "Xóa thành công " . count($ids) . " dữ liệu");

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
}
