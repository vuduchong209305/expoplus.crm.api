<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ActivityLogs extends Model
{
    use HasFactory;

    protected $table = 'activity_logs';

    protected $fillable = ['subject_type', 'subject_id', 'causer_type', 'causer_id', 'action', 'description', 'properties'];

    protected function serializeDate(\DateTimeInterface $date)
    {
        return \Carbon\Carbon::instance($date)->timezone(config('app.timezone'))->format('Y-m-d H:i:s');
    }
    
    public function customer()
    {
        return $this->belongsTo(Customer::class, 'subject_id')->select('id', 'fullname', 'email');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'causer_id')->select('id', 'fullname', 'email');
    }
}
