<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomerGroup extends Model
{
    use HasFactory;

    protected $table = 'customer_group';

    protected $fillable = ['title', 'note'];

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
}
