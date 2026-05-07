<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Helpers\HTMLHelper;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        $products = Product::search($request->search)
                                ->latest()
                                ->paginate();

        return sendResponse($products);
    }

    public function save(Request $request, Product $product)
    {
        if ($request->id) {
            $product = Product::findOrFail($request->id);
        }

        $product->title = $request->title;
        $product->note = $request->note;
        $product->price = $request->price;
        $product->unit = $request->unit;
        $product->title = $request->title;
        $product->avatar = HTMLHelper::uploadImage($product->avatar, 'avatar', 'product');

        if($product->save()) return sendResponse($product, 'Lưu thành công');
    }

    public function edit(Request $request)
    {
        $product = Product::findOrFail($request->id);
        return sendResponse($product);
    }

    public function delete(Request $request)
    {
        $product = Product::findOrFail($request->id);

        $product->delete();

        return sendResponse($product, "Xóa thành công " . $product->title ?? null);
    }
}
