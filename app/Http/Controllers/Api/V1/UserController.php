<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Helpers\HTMLHelper;

class UserController extends Controller
{
    public function index()
    {
        $user = User::organizer()->select('id', 'fullname', 'email')->get();
        return sendResponse($user);
    }

    public function update(Request $request)
    {
        try {
            $user = auth('api')->user();

            $rules = [
                'fullname' => 'required|string|max:255',
                'email'    => 'required|email|max:255',
                'phone'    => 'nullable|string|max:20',
                'birthday' => 'nullable|string',
            ];

            // 👉 chỉ validate password khi có nhập
            if ($request->filled('password')) {
                $rules['password'] = 'required|min:6|confirmed';
            }

            $validated = $request->validate($rules);

            // 👉 xử lý data update
            $data = collect($validated)->except(['password'])->toArray();

            if ($request->filled('password')) {
                $data['password'] = bcrypt($request->password);
            }

            $data['avatar'] = HTMLHelper::uploadImage($user->avatar, 'avatar', 'user');

            $user->update($data);

            return sendResponse($user, 'Cập nhật thành công');

        } catch (\Exception $e) {
            \Log::error($e);
            return sendError('Có lỗi xảy ra');
        }
    }
}
