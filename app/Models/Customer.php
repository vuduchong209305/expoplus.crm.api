<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;

    protected $table = 'customers';

    protected $fillable = ['id', 'bookmark', 'email', 'company', 'fullname', 'phone', 'assigned_to', 'organizer_id', 'contact', 'address', 'profession', 'birthday', 'mst', 'website', 'description', 'note', 'gender', 'owner_id', 'type_id', 'avatar', 'source_id', 'bookmark'];

    protected function serializeDate(\DateTimeInterface $date)
    {
        return \Carbon\Carbon::instance($date)->timezone(config('app.timezone'))->format('Y-m-d H:i:s');
    }
    
    public function organizer()
    {
        return $this->belongsTo(Company::class, 'organizer_id')->select('id', 'name', 'phone');
    }

    public function assigned()
    {
        return $this->belongsTo(User::class, 'assigned_to')->select('id', 'fullname', 'email');
    }

    public function owner()
    {
        return $this->belongsTo(User::class, 'owner_id');
    }

    public function type()
    {
        return $this->belongsTo(CustomerType::class, 'type_id');
    }

    public function source()
    {
        return $this->belongsTo(Source::class, 'source_id');
    }

    public function comments()
    {
        return $this->hasMany(Comment::class, 'customer_id')->orderByDesc('id');
    }

    public function scopeType($query, $type_id = null)
    {
        if(!empty($type_id)) return $query->where('type_id', $type_id);
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

    public function scopeOrganizer($query, $organizer_id = null)
    {
        if(!empty($organizer_id)) return $query->where('organizer_id', $organizer_id);
    }

    public function scopeSearch($query, $q = null)
    {
        if(!empty($q))
            return $query->where('email', 'LIKE', "%$q%")
                    ->orWhere('company', 'LIKE', "%$q%")
                    ->orWhere('fullname', 'LIKE', "%$q%")
                    ->orWhere('phone', 'LIKE', "%$q%")
                    ->orWhere('contact', 'LIKE', "%$q%")
                    ->orWhere('company', 'LIKE', "%$q%")
                    ->orWhere('address', 'LIKE', "%$q%")
                    ->orWhere('birthday', 'LIKE', "%$q%")
                    ->orWhere('mst', 'LIKE', "%$q%")
                    ->orWhere('website', 'LIKE', "%$q%")
                    ->orWhere('description', 'LIKE', "%$q%")
                    ->orWhere('note', 'LIKE', "%$q%");
                    
    }
}
