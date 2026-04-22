<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomerGroupDetail extends Model
{
    use HasFactory;

    protected $table = 'customer_group_detail';

    protected $fillable = ['customer_group_id', 'customer_id'];

    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customer_id')->select('id', 'fullname', 'email');
    }
}
