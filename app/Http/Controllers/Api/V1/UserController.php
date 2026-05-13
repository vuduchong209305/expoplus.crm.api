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
        $user = User::where('organizer_id', auth('api')->user()->organizer_id)
                    ->with('role')
                    ->select('id', 'avatar', 'role_id', 'is_admin', 'fullname', 'email', 'phone', 'created_at', 'updated_at')
                    ->get();

        return sendResponse($user);
    }

    public function edit(Request $request)
    {
        $user = User::findOrFail($request->id);
        return sendResponse($user);
    }

    public function save(Request $request, User $user)
    {
        $isEdit = !empty($request->id);

        if ($isEdit) {
            $user = User::findOrFail($request->id);
        }

        /*
        |--------------------------------------------------------------------------
        | VALIDATE
        |--------------------------------------------------------------------------
        */

        $rules = [
            'fullname' => 'required|string|max:255',

            'email' => [
                'required',
                'email',
                'max:255',
                'unique:users,email' . ($isEdit ? ',' . $user->id : '')
            ],

            'phone' => 'nullable|string|max:20',
            'birthday' => 'nullable|string',
        ];

        /*
        |--------------------------------------------------------------------------
        | PASSWORD
        |--------------------------------------------------------------------------
        */

        if (!$isEdit || ($isEdit && $request->filled('password'))) {
            $rules['password'] = 'required|min:6|confirmed';
        }

        $validated = $request->validate($rules);

        /*
        |--------------------------------------------------------------------------
        | SAVE
        |--------------------------------------------------------------------------
        */

        $user->fullname = $request->fullname;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->birthday = $request->birthday;
        $user->role_id = $request->role_id;
        $user->organizer_id = auth('api')->user()->organizer_id;
        $user->status = $request->boolean('status');

        $user->avatar = HTMLHelper::uploadImage(
            $user->avatar,
            'avatar',
            'user'
        );

        // update password nếu có nhập
        if ($request->filled('password')) {
            $user->password = bcrypt($request->password);
        }

        $user->save();

        return sendResponse($user, 'Lưu thành công');
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
