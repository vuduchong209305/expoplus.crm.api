<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QuotationDetail extends Model
{
    use HasFactory;

    protected $table = 'quotation_detail';

    protected $fillable = ['quotation_id', 'product_id', 'qty', 'price', 'product_name', 'unit'];

    public function product()
    {
        return $this->belongsTo(Product::class, 'product_id');
    }
}
