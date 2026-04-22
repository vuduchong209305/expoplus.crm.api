<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ToDo extends Model
{
    use HasFactory;

    protected $table = 'to_do';

    protected $fillable = ['title', 'description', 'note', 'user_id', 'organizer_id', 'priority', 'status', 'due_date', 'completed_at', 'bookmark'];

    protected $casts = [
        'due_date' => 'datetime',
        'completed_at' => 'datetime',
    ];

    protected function serializeDate(\DateTimeInterface $date)
    {
        return \Carbon\Carbon::instance($date)->timezone(config('app.timezone'))->format('Y-m-d H:i:s');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function scopeOrganizer($query, $user_id = null)
    {
        if(!empty($user_id)) {
            $query->where('user_id', $user_id);
        }

        if(auth('api')->check()) {
            if(auth('api')->user()->role_id > 1) {
                $query->where('user_id', auth('api')->id());
            }

            $query->where('organizer_id', auth('api')->user()->organizer_id);
        }
        
        return $query;
    }
}
