<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Organizer;
use App\Models\ActivityLogs;
use App\Helpers\HTMLHelper;

class CustomerController extends Controller
{
    public function index(Request $request)
    {
        $this->html['organizers'] = Organizer::get();

        $this->html['customers'] = Customer::search($request->q)
                                            ->organizer($request->organizer_id)
                                            ->latest()
                                            ->paginate();

        return view('admin.customer.index', $this->html);
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

    public function delete(Request $request)
    {
        $customer = Customer::assignedTo()->findOrFail($request->id);

        $customer->delete();

        return sendResponse($customer, "Xóa thành công " . $customer->fullname ?? $customer->email);
    }

}
