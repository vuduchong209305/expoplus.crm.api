<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomerCareer extends Model
{
    use HasFactory;

    protected $table = 'customer_career';

    protected $fillable = ['customer_id', 'career_id'];
}
