<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoleOrganizer extends Model
{
    use HasFactory;

    protected $table = 'role_organizer';

    protected function serializeDate(\DateTimeInterface $date)
    {
        return \Carbon\Carbon::instance($date)->timezone(config('app.timezone'))->format('Y-m-d H:i:s');
    }

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

    public function permissions()
    {
        return $this->belongsToMany(Permission::class, 'role_permission', 'role_id', 'permission_id');
    }

    public function user()
    {
        return $this->hasMany(User::class, 'role_id');
    }
}
