<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Quotation;
use App\Models\QuotationDetail;
use App\Helpers\HTMLHelper;

class QuotationController extends Controller
{
    public function index(Request $request,)
    {
        $keyword = $request->search;
        
        $quotations = Quotation::assignedTo()
                                ->when($keyword, function ($q) use ($keyword) {

                                    $q->where(function ($query) use ($keyword) {

                                        // search quotation
                                        $query->search($keyword)

                                            // search customer
                                            ->orWhereHas('customer', function ($customer) use ($keyword) {
                                                $customer->search($keyword);
                                            })

                                            // search exhibition
                                            ->orWhereHas('exhibition', function ($exhibition) use ($keyword) {
                                                $exhibition->search($keyword);
                                            });

                                    });

                                })
                                ->with('customer', 'exhibition', 'assigned')
                                ->latest()
                                ->paginate();

        return sendResponse($quotations);
    }

    public function save(Request $request, Quotation $quotation)
    {
        \DB::beginTransaction();

        try {

            $items = $request->items ?? [];

            // 👉 tính toán
            $sub_total = collect($items)->sum(function ($i) {
                return $i['qty'] * $i['price'];
            });

            $vat = $request->is_vat ? $sub_total * 0.1 : 0;

            $grand_total = $sub_total - ($request->discount ?? 0) + $vat;

            if($grand_total < 0) {
                return sendError('Thành tiền đang bị âm');
            }

            // 👉 tạo hoặc update
            if ($request->id) {
                $quotation = Quotation::assignedTo()->findOrFail($request->id);
            } else {
                $quotation = new Quotation();
                $quotation->code = HTMLHelper::generateCode('BG', Quotation::class);
            }

            // 👉 save header
            $quotation->customer_id = $request->customer_id;
            $quotation->exhibition_id = $request->exhibition_id;
            $quotation->organizer_id = auth('api')->user()->organizer_id;
            $quotation->assigned_to = auth('api')->id();
            $quotation->note = $request->note;
            $quotation->sub_total = $sub_total;
            $quotation->discount = $request->discount ?? 0;
            $quotation->vat = $vat;
            $quotation->grand_total = $grand_total;
            $quotation->save();

            // =============================
            // 🔥 SAVE DETAIL
            // =============================

            // 👉 xóa cũ nếu update
            $quotation->details()->delete();

            // 👉 insert lại
            $detailData = [];

            foreach ($items as $item) {
                $detailData[] = [
                    'quotation_id' => $quotation->id,
                    'product_id'   => $item['id'],
                    'qty'          => $item['qty'],
                    'price'        => $item['price'],
                    'product_name' => $item['title'],
                    'unit'         => $item['unit'],
                    'created_at'   => now(),
                    'updated_at'   => now()
                ];
            }

            if (!empty($detailData)) {
                $quotation->details()->createMany($detailData);
            }

            \DB::commit();

            return sendResponse($quotation, 'Lưu thành công báo giá ' . $quotation->code ?? null);

        } catch (\Exception $e) {
            \DB::rollBack();
            \Log::error($e);

            return sendError($e->getMessage());
        }
    }

    public function edit(Request $request)
    {
        $quotation = Quotation::assignedTo()
                                ->with('details.product', 'customer', 'exhibition', 'assigned')
                                ->findOrFail($request->id);
                                
        return sendResponse($quotation);
    }

    public function delete(Request $request)
    {
        $quotation = Quotation::assignedTo()->findOrFail($request->id);

        \DB::beginTransaction();

        try {

            $quotation->details()->delete();

            $quotation->delete();

            \DB::commit();

            return sendResponse($quotation, "Xóa thành công " . $quotation->code ?? null);

        } catch (\Exception $e) {
            \DB::rollBack();
            \Log::error($e);

            return sendError('Có lỗi xảy ra');
        }
    }
}
