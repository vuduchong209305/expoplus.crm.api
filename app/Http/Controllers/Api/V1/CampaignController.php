<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Campaign;
use App\Models\CampaignDetail;
use App\Models\Progress;

class CampaignController extends Controller
{
    public function index(Request $request)
    {
        $campaigns = Campaign::assignedTo()
                                ->withCount('detail')
                                ->with('assigned')
                                ->search($request->search)
                                ->latest()
                                ->paginate();

        return sendResponse($campaigns);
    }

    public function save(Request $request)
    {
        \DB::beginTransaction();

        try {

            if ($request->id) {
                $campaign = Campaign::findOrFail($request->id);
                $campaign->update([
                    'title' => $request->title,
                    'note' => $request->note,
                    'start_date' => $request->start_date,
                    'end_date' => $request->end_date,
                    'assigned_to' => $request->assigned_to ?? auth('api')->id()
                ]);
            } else {
                $campaign = Campaign::create([
                    'title' => $request->title,
                    'note' => $request->note,
                    'start_date' => $request->start_date,
                    'end_date' => $request->end_date,
                    'assigned_to' => $request->assigned_to ?? auth('api')->id(),
                    'organizer_id' => auth('api')->user()->organizer_id
                ]);
            }

            // 👉 sync customer
            $campaign->customers()->sync($request->customers ?? []);

            \DB::commit();

            return sendResponse(
                $campaign,
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
        $keyword = $request->keyword;

        $campaign = Campaign::assignedTo()->with('assigned')->findOrFail($request->id);

        $customers = CampaignDetail::with(['customer', 'progress'])
            ->where('campaign_id', $campaign->id)
            ->when($keyword, function ($q) use ($keyword) {
                $q->whereHas('customer', function ($q2) use ($keyword) {
                    $q2->search($keyword);
                });
            })
            ->get();

        return sendResponse([
            'campaign' => $campaign,
            'customers' => $customers
        ]);
    }

    public function assign(Request $request)
    {
        try {
            $customer = Customer::where('type_id', 2)->assignedTo()->findOrFail($request->customer_id);

            $customer->groups()->sync($request->group_ids);

            return sendResponse($customer, 'Cập nhật nhóm thành công');
        } catch (\Exception $e) {
            return sendError('Chỉ áp dụng với Contact');
        }   
    }

    public function delete(Request $request)
    {
        $campaign = Campaign::assignedTo()->findOrFail($request->id);

        \DB::beginTransaction();

        try {
            // ❗ Xóa liên kết trong pivot table
            $campaign->customers()->detach();

            // ❗ Xóa campaign
            $campaign->delete();

            \DB::commit();

            return sendResponse($campaign, "Xóa thành công " . $campaign->title ?? null);

        } catch (\Exception $e) {
            \DB::rollBack();
            \Log::error($e);

            return sendError('Có lỗi xảy ra');
        }
    }

    public function deleteCustomer(Request $request)
    {
        try {
            $campaign = Campaign::assignedTo()->findOrFail($request->campaign_id);

            $campaign->customers()->detach($request->ids);

            return sendResponse([], "Xóa ".count($request->ids)." khách hàng khỏi chiến dịch thành công");

        } catch (\Exception $e) {
            \Log::error($e);
            return sendError('Có lỗi xảy ra');
        }
    }

    public function customer(Request $request)
    {
        try {
            $campaign = Campaign::assignedTo()->findOrFail($request->id);

            $customer = $campaign->customers()
                        ->where('customer_id', $request->customer_id)
                        ->first();

            if (!$customer) return sendError('Không tìm thấy khách hàng trong chiến dịch');
            
            return sendResponse([
                'customer' => [
                    'id' => $customer->id,
                    'fullname' => $customer->fullname,
                    'email' => $customer->email,
                    'phone' => $customer->phone,
                    'company' => $customer->company,

                    'progress_id' => $customer->pivot->progress_id,
                    'status' => $customer->pivot->status,
                    'rating' => $customer->pivot->rating,
                    'note' => $customer->pivot->note,
                ],

                'progress' => Progress::get()
            ]);

        } catch (\Exception $e) {
            \Log::error($e);
            return sendError('Có lỗi xảy ra');
        }
    }

    public function updateCustomer(Request $request)
    {
        try {
            $campaign = Campaign::assignedTo()->findOrFail($request->campaign_id);

            $campaign->customers()->updateExistingPivot(
                $request->customer_id,
                [
                    'progress_id' => $request->progress_id,
                    'status' => $request->status,
                    'rating' => $request->rating,
                    'note' => $request->note,
                ]
            );

            return sendResponse([], 'Cập nhật thành công');

        } catch (\Exception $e) {
            \Log::error($e);
            return sendError('Có lỗi xảy ra');
        }
    }
}
