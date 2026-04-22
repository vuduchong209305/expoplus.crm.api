<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;

    protected $table = 'tasks';

    protected $fillable = ['title', 'start_date', 'end_date', 'assigned_to', 'note', 'progress', 'completed_at'];

    public function user()
    {
        return $this->belongsTo(User::class, 'assigned_to');
    }
}
