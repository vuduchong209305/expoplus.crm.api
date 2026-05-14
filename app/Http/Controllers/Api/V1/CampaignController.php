<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\CustomerGroupDetail;
use App\Models\Campaign;
use App\Models\CampaignDetail;
use App\Models\Progress;
use App\Models\Status;
use App\Models\User;

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
                $campaign = Campaign::assignedTo()->findOrFail($request->id);
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

    public function edit(Request $request)
    {
        $keyword = $request->keyword;
        $campaign = Campaign::assignedTo()->with(['customers' => function($q) use ($keyword) {
                                $q->search($keyword);
                            }])->findOrFail($request->id);

        return sendResponse($campaign);
    }

    public function detail(Request $request)
    {
        $keyword = $request->keyword;

        $campaign = Campaign::assignedTo()
                            ->with('assigned')
                            ->withCount('detail')
                            ->findOrFail($request->id);

        $customers = CampaignDetail::with(['customer', 'progress', 'status'])
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
                    'status_id' => $customer->pivot->status_id,
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
                    'status_id' => $request->status_id,
                    'rating' => $request->rating,
                    'note' => $request->note,
                ]
            );

            /*
            |--------------------------------------------------------------------------
            | CHECK COMPLETE
            |--------------------------------------------------------------------------
            */
            $campaign->refreshCompleteStatus();

            return sendResponse([], 'Cập nhật thành công');

        } catch (\Exception $e) {
            \Log::error($e);
            return sendError('Có lỗi xảy ra');
        }
    }

    public function report(Request $request)
    {
        $campaign = Campaign::assignedTo()->with('detail')->findOrFail($request->id);

        $details = $campaign->detail;

        $total = $details->count();

        // đã chuyển đổi = progress cuối
        $lastProgressId = Progress::max('id');
        $converted = $details->where('progress_id', $lastProgressId)->count();
        $convertedRate = $total > 0 ? round(($converted / $total) * 100) : 0;

        // có quan tâm = status đầu
        $firstStatusId = Status::min('id');
        $interested = $details->where('status_id', $firstStatusId)->count();
        $interestedRate = $total > 0 ? round(($interested / $total) * 100) : 0;
        
        $avgRating = round($details->avg('rating'), 1);

        // STATUS
        $status = Status::get()->map(function($s) use ($details, $total) {
            $count = $details->where('status_id', $s->id)->count();

            return [
                'id' => $s->id,
                'name' => $s->name,
                'count' => $count,
                'percent' => $total > 0 ? round(($count / $total) * 100) : 0
            ];
        });

        // PROGRESS
        $progress = Progress::get()->map(function($p) use ($details, $total) {
            $count = $details->where('progress_id', $p->id)->count();

            return [
                'id' => $p->id,
                'name' => $p->name,
                'count' => $count,
                'percent' => $total > 0 ? round(($count / $total) * 100) : 0
            ];
        });

        return sendResponse([
            'total' => $total,
            'converted' => $converted,
            'converted_rate' => $convertedRate,

            'interested' => $interested,
            'interested_rate' => $interestedRate,

            'avg_rating' => $avgRating,
            'status' => $status,
            'progress' => $progress
        ]);
    }

    public function customerGroup(Request $request)
    {
        $groupIds = $request->group_ids ? [$request->group_ids] : [];

        // 👉 lấy customer từ group
        $customers = CustomerGroupDetail::whereIn('customer_group_id', $groupIds)->with('customer')->get();

        return sendResponse($customers);
    }

    public function assignedTo(Request $request)
    {
        $user_id = $request->user_id;
        $campaigns = $request->campaigns;

        Campaign::assignedTo()->whereIn('id', $campaigns)->update(['assigned_to' => $user_id]);

        return sendResponse($campaigns, 'Giao việc thành công');
    }
}
