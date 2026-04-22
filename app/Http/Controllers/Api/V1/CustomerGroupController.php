<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CustomerGroup;
use App\Models\CustomerGroupDetail;

class CustomerGroupController extends Controller
{
    public function index(Request $request)
    {
        $customer_group = CustomerGroup::withCount('customerDetails')
                                        ->search($request->search)
                                        ->latest()
                                        ->paginate();

        return sendResponse($customer_group);
    }

    public function store(Request $request)
    {
        \DB::beginTransaction();

        try {

            $customerGroup = CustomerGroup::create([
                'title' => $request->title,
                'note' => $request->note,
            ]);

            $customerGroup->customers()->sync($request->customers);

            \DB::commit();

            return sendResponse($customerGroup, 'Tạo nhóm thành công');

        } catch (\Exception $e) {
            \DB::rollBack();
            \Log::error($e);
            return sendError($e->getMessage());
        }
    }
}
