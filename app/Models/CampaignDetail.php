<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CampaignDetail extends Model
{
    use HasFactory;

    protected $table = 'campaign_detail';

    protected $fillable = ['campaign_id', 'customer_id', 'progress_id', 'status', 'rating', 'note', 'created_at', 'updated_at'];

    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customer_id')->select('id', 'fullname', 'email', 'phone', 'company');
    }

    public function progress()
    {
        return $this->belongsTo(Progress::class, 'progress_id');
    }

    public function status()
    {
        return $this->belongsTo(Status::class, 'status_id');
    }
}
