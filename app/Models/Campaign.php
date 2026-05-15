<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Campaign extends Model
{
    use HasFactory;

    protected $table = 'campaign';

    protected $fillable = ['title', 'assigned_to', 'organizer_id', 'is_complete', 'start_date', 'end_date', 'note'];

    protected function serializeDate(\DateTimeInterface $date)
    {
        return \Carbon\Carbon::instance($date)->timezone(config('app.timezone'))->format('Y-m-d H:i:s');
    }

    public function detail()
    {
        return $this->hasMany(CampaignDetail::class, 'campaign_id');
    }

    public function assigned()
    {
        return $this->belongsTo(User::class, 'assigned_to')->select('id', 'fullname', 'email', 'phone');
    }

    public function customers()
    {
        return $this->belongsToMany(Customer::class, 'campaign_detail', 'campaign_id', 'customer_id')
            ->select('id', 'fullname', 'email', 'phone', 'company', 'avatar', 'address')
            ->withPivot(['progress_id', 'status_id', 'rating', 'note'])
            ->withTimestamps();
    }

    public function scopeAssignedTo($query, $assigned_to = null)
    {
        if(!empty($assigned_to)) {
            $query->where('assigned_to', $assigned_to);
        }

        if(auth('api')->check()) {
            if(empty(auth('api')->user()->is_admin)) {
                $query->where('assigned_to', auth('api')->id());
            }

            $query->where('organizer_id', auth('api')->user()->organizer_id);
        }
        
        return $query;
    }

    public function scopeSearch($query, $q = null)
    {
        if(!empty($q))
            return $query->where('title', 'LIKE', "%$q%")
                    ->orWhere('note', 'LIKE', "%$q%");
                    
    }

    public function refreshCompleteStatus()
    {
        $hasPending = $this->detail()
            ->where(function($q){
                $q->whereNull('progress_id')
                    ->orWhereNull('status_id')
                    ->orWhereNull('rating');

            })->exists();

        $this->update([
            'is_complete' => !$hasPending
        ]);
    }
}
