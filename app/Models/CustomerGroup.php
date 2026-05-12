<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomerGroup extends Model
{
    use HasFactory;

    protected $table = 'customer_group';

    protected $fillable = ['title', 'note', 'assigned_to', 'organizer_id'];

    protected function serializeDate(\DateTimeInterface $date)
    {
        return \Carbon\Carbon::instance($date)->timezone(config('app.timezone'))->format('Y-m-d H:i:s');
    }

    public function detail()
    {
        return $this->hasMany(CustomerGroupDetail::class, 'customer_group_id');
    }

    public function customers()
    {
        return $this->belongsToMany(Customer::class, 'customer_group_detail', 'customer_group_id', 'customer_id');
    }

    public function scopeSearch($query, $q = null)
    {
        if(!empty($q))
            return $query->where('title', 'LIKE', "%$q%")
                    ->orWhere('note', 'LIKE', "%$q%");
                    
    }

    public function scopeAssignedTo($query, $assigned_to = null)
    {
        if(!empty($assigned_to)) {
            $query->where('assigned_to', $assigned_to);
        }

        if(auth('api')->check()) {
            if(auth('api')->user()->role_id > 1) {
                $query->where('assigned_to', auth('api')->id());
            }

            $query->where('organizer_id', auth('api')->user()->organizer_id);
        }
        
        return $query;
    }

    public function assigned()
    {
        return $this->belongsTo(User::class, 'assigned_to')->select('id', 'fullname', 'email', 'phone');
    }
}
