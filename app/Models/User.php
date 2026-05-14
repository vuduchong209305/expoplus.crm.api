<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Tymon\JWTAuth\Contracts\JWTSubject;

class User extends Authenticatable implements JWTSubject
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $table = 'users';

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'fullname',
        'email',
        'phone',
        'birthday',
        'password',
        'avatar',
        'status'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'password' => 'hashed',
    ];

    protected function serializeDate(\DateTimeInterface $date)
    {
        return \Carbon\Carbon::instance($date)->timezone(config('app.timezone'))->format('Y-m-d H:i:s');
    }

    public function organizer()
    {
        return $this->belongsTo(Organizer::class, 'organizer_id');
    }

    public function role()
    {
        return $this->belongsTo(RoleOrganizer::class, 'role_id')->select('id', 'name');
    }

    public function hasPermission($permission)
    {
        if (!$this->role) {
            return false;
        }

        return $this->role->permissions->contains('key', $permission);
    }

    public function scopeSearch($query, $q = null)
    {
        if(!empty($q))
            return $query->where('fullname', 'LIKE', "%$q%")
                    ->orWhere('email', 'LIKE', "%$q%")
                    ->orWhere('phone', 'LIKE', "%$q%")
                    ->orWhere('birthday', 'LIKE', "%$q%");
    }

    public function scopeOrganizer($query, $organizer_id = null)
    {
        if(!empty($organizer_id))
            return $query->where('organizer_id', $organizer_id);
    }

    public function getJWTIdentifier()
    {
      return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
      return [];
    }
}
