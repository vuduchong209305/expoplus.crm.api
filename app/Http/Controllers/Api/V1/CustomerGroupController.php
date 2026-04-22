<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\CustomerGroup;
use App\Models\CustomerGroupDetail;

class CustomerGroupController extends Controller
{
    public function index(Request $request)
    {
        $customer_group = CustomerGroup::withCount('detail')
                                        ->search($request->search)
                                        ->latest()
                                        ->paginate();

        return sendResponse($customer_group);
    }

    public function save(Request $request)
    {
        \DB::beginTransaction();

        try {

            if ($request->id) {
                $customerGroup = CustomerGroup::findOrFail($request->id);
                $customerGroup->update([
                    'title' => $request->title,
                    'note'  => $request->note,
                ]);
            } else {
                $customerGroup = CustomerGroup::create([
                    'title' => $request->title,
                    'note'  => $request->note,
                ]);
            }

            // 👉 sync customer
            $customerGroup->customers()->sync($request->customers ?? []);

            \DB::commit();

            return sendResponse(
                $customerGroup,
                $request->id ? 'Cập nhật thành công' : 'Tạo mới thành công'
            );

        } catch (\Exception $e) {
            \DB::rollBack();
            \Log::error($e);

            return sendError($e->getMessage());
        }
    }

    public function detail(Request $request)
    {
        $customerGroup = CustomerGroup::with('customers')->findOrFail($request->id);
        return sendResponse($customerGroup);
    }

    public function assign(Request $request)
    {
        $customer = Customer::findOrFail($request->customer_id);

        $customer->groups()->sync($request->group_ids);

        return sendResponse($customer, 'Cập nhật nhóm thành công');
    }

    public function list(Request $request)
    {
        try {

            // 👉 tất cả group
            $groups = CustomerGroup::select('id', 'title')
                    ->withCount('customers')
                    ->orderByDesc('id')
                    ->get();

            // 👉 nếu có customer_id → lấy group của customer
            $customerGroups = [];

            if ($request->customer_id) {
                $customer = Customer::with('groups:id')->find($request->customer_id);

                if ($customer) {
                    $customerGroups = $customer->groups->pluck('id');
                }
            }

            return sendResponse([
                'groups' => $groups,
                'customer_groups' => $customerGroups
            ]);

        } catch (\Exception $e) {
            \Log::error($e);
            return sendError($e->getMessage());
        }
    }
}
