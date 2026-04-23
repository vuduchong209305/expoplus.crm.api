<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;

    protected $table = 'events';

    protected $fillable = ['id', 'title', 'note', 'customer_id', 'user_id', 'location', 'type', 'start_time', 'end_time', 'all_day', 'status', 'reminder_minutes'];

    protected function serializeDate(\DateTimeInterface $date)
    {
        return \Carbon\Carbon::instance($date)->timezone(config('app.timezone'))->format('Y-m-d H:i:s');
    }

    public function scopeUser($query, $user_id = null)
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
