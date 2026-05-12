<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoleOrganizer extends Model
{
    use HasFactory;

    protected $table = 'role_organizer';

    public function scopeStatus($query, $status = 1)
    {
        return $query->where('status', $status);
    }

    public function organizer()
    {
        return $this->hasMany(Organizer::class, 'role_id', 'id');
    }

    public function scopeFilter($query, $q = null)
    {
        if(!empty($q))
            return $query->where('name', 'LIKE', "%$q%")
                        ->orWhere('permission', 'LIKE', "%$q%")
                        ->orWhere('description', 'LIKE', "%$q%");
        
    }
}
