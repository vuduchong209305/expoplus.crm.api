<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Exhibition extends Model
{
    use HasFactory;

    protected $table = 'exhibition';

    protected $fillable = ['id', 'title', 'location', 'organizer_id', 'start_date', 'end_date'];

    public function organizer()
    {
        return $this->belongsTo(Organizer::class, 'organizer_id');
    }
}
