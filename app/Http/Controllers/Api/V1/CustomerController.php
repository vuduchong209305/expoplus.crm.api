<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Source;
use App\Models\Comment;
use App\Models\ActivityLogs;
use App\Helpers\HTMLHelper;

class CustomerController extends Controller
{
    public function index(Request $request)
    {
        $customers = Customer::select('id', 'avatar', 'fullname', 'email', 'phone', 'company', 'assigned_to', 'bookmark', 'type_id', 'created_at', 'updated_at')
        ->type($request->type_id)
        ->assignedTo()
        ->search($request->search)
        ->with('assigned')
        ->latest()
        ->paginate();

        return sendResponse($customers);
    }

    public function store(Request $request, Customer $customer)
    {
        $customer = Customer::where(function($q) use ($request) {
                                if (!empty($request->email)) {
                                    $q->orWhere('email', $request->email);
                                }

                                if (!empty($request->phone)) {
                                    $q->orWhere('phone', $request->phone);
                                }
                            })->where('organizer_id', auth('api')->user()->organizer_id)
                            ->exists();

        if($customer) return sendError('Email hoặc số điện thoại đã tồn tại');
        
        $customer = new Customer;
        $customer->fullname = $request->fullname;
        $customer->email = $request->email;
        $customer->phone = $request->phone;
        $customer->birthday = $request->birthday;

        $customer->gender = $request->gender;
        $customer->contact = $request->contact;
        $customer->type_id = $request->type_id;
        $customer->assigned_to = $request->assigned_to;
        $customer->organizer_id = auth('api')->user()->organizer_id ?? null;

        $customer->company = $request->company;
        $customer->mst = $request->mst;
        $customer->address = $request->address;
        $customer->profession = $request->profession;
        $customer->website = $request->website;

        $customer->description = $request->description;
        $customer->note = $request->note;

        $customer->owner_id = auth('api')->id();

        if($customer->save()) return sendResponse($customer, 'Thêm khách hàng mới');

        return sendError('Có lỗi xảy ra');
    }

    public function view(Request $request)
    {
        $customer = Customer::assignedTo()->with('organizer', 'owner', 'source')->findOrFail($request->id);
        return sendResponse($customer);
    }

    public function update(Request $request)
    {
        try {

            $customer = Customer::assignedTo()->findOrFail($request->id);

            $field = $request->field;
            $newValue = $request->value;

            // 👉 lấy giá trị cũ trước
            $oldValue = $customer->{$field};

            if($newValue == $oldValue) return sendResponse($customer, 'Dữ liệu không thay đổi');

            // 👉 update
            $customer->{$field} = $newValue;
            $customer->save();

            // 👉 log
            activityLog(
                $customer,
                'update',
                "Cập nhật $field",
                [
                    'field' => $field,
                    'old' => $oldValue,
                    'new' => $newValue
                ]
            );

            return sendResponse($customer, 'Cập nhật thành công');

        } catch (\Exception $e) {
            return sendError($e->getMessage());
        }
    }

    public function source()
    {
        $source = Source::get();
        return sendResponse($source);
    }

    public function bookmark(Request $request)
    {
        $customer = Customer::assignedTo()->findOrFail($request->id);

        $oldValue = $customer->bookmark;
        $newValue = $oldValue ? null : 1;

        $customer->update([
            'bookmark' => $newValue
        ]);

        activityLog(
            $customer,
            'update',
            $newValue ? 'Đã đánh dấu sao' : 'Đã bỏ đánh dấu sao',
            [
                'field' => 'bookmark',
                'old' => $oldValue,
                'new' => $newValue
            ]
        );

        return sendResponse($customer, $newValue ? 'Đã đánh dấu sao' : 'Đã bỏ đánh dấu sao');
    }

    public function delete(Request $request)
    {
        $customer = Customer::assignedTo()->findOrFail($request->id);

        $customer->delete();

        return sendResponse($customer, "Xóa thành công " . $customer->fullname ?? $customer->email);
    }

    public function avatar(Request $request)
    {
        try {
            $customer = Customer::assignedTo()->findOrFail($request->id);
            $customer->avatar = HTMLHelper::uploadImage($customer->avatar);

            if($customer->save()) {
                return sendResponse($customer->avatar, 'Cập nhật hình ảnh thành công');
            }

        } catch (\Exception $e) {
            return sendError($e->getMessage());
        }
    }

    public function comment(Request $request, Comment $comment)
    {
        $comment->customer_id = $request->customer_id;
        $comment->content = $request->content;
        $comment->owner_id = auth('api')->id();
        $comment->save();

        return sendResponse($comment, 'Gửi bình luận thành công');
    }

    public function listComment(Request $request)
    {
        $comment = Comment::where('customer_id', $request->customer_id)->latest()->with('owner')->paginate();
        return sendResponse($comment);
    }

    public function activityLogs(Request $request)
    {
        $activityLogs = ActivityLogs::where([
                                                'subject_type' => 'App\Models\Customer',
                                                'subject_id' => $request->customer_id
                                            ])
                                            ->latest()
                                            ->with('customer', 'user')
                                            ->paginate();

        return sendResponse($activityLogs);
    }
}
