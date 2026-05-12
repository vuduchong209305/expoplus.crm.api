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

    public function scopeSearch($query, $q = null)
    {
        if(!empty($q))
            return $query->where('title', 'LIKE', "%$q%")
                    ->orWhere('location', 'LIKE', "%$q%")
                    ->orWhere('start_date', 'LIKE', "%$q%")
                    ->orWhere('end_date', 'LIKE', "%$q%");
                    
    }

    public function quotations()
    {
        return $this->hasMany(Quotation::class, 'exhibition_id');
    }
}
