<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Quotation extends Model
{
    use HasFactory;

    protected $table = 'quotation';

    protected $fillable = ['code', 'customer_id', 'exhibition_id', 'assigned_to', 'note', 'sub_total', 'vat', 'discount', 'grand_total'];

    protected function serializeDate(\DateTimeInterface $date)
    {
        return \Carbon\Carbon::instance($date)->timezone(config('app.timezone'))->format('Y-m-d H:i:s');
    }
    
    public function details()
    {
        return $this->hasMany(QuotationDetail::class, 'quotation_id');
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customer_id')->select('id', 'fullname', 'email', 'company', 'phone');
    }

    public function exhibition()
    {
        return $this->belongsTo(Exhibition::class, 'exhibition_id');
    }

    public function assgined()
    {
        return $this->hasMany(User::class, 'assigned_to');
    }

    public function organizer()
    {
        return $this->hasMany(Organizer::class, 'organizer_id');
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

    public function scopeSearch($query, $q = null)
    {
        if(!empty($q))
            return $query->where('code', 'LIKE', "%$q%")
                    ->orWhere('note', 'LIKE', "%$q%")
                    ->orWhere('sub_total', 'LIKE', "%$q%")
                    ->orWhere('discount', 'LIKE', "%$q%")
                    ->orWhere('grand_total', 'LIKE', "%$q%");
                    
    }
}
