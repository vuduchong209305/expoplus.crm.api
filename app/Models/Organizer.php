<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Organizer extends Model
{
    use HasFactory;

    protected $table = 'organizer';
    protected $fillable = ['name', 'phone', 'address', 'email', 'avatar', 'website', 'status'];

    public function scopeStatus($query, $status = 1)
    {
        return $query->where('status', $status);
    }
    
    public function scopeFilter($query, $q = null)
    {
        if(!empty($q)) {
            return $query->where('email', 'LIKE', "%$q%")
                        ->orWhere('name', 'LIKE', "%$q%")
                        ->orWhere('phone', 'LIKE', "%$q%")
                        ->orWhere('address', 'LIKE', "%$q%")
                        ->orWhere('website', 'LIKE', "%$q%");
        }
    }

    public function user()
    {
        return $this->hasMany(User::class, 'organizer_id');
    }

    public function exhibition()
    {
        return $this->hasMany(Exhibition::class, 'organizer_id');
    }
}
