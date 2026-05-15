<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomerStakeholder extends Model
{
    use HasFactory;

    protected $table = 'customer_stakeholder';

    protected $fillable = ['customer_id', 'stakeholder_id'];
}
