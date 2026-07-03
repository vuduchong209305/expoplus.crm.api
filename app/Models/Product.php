<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $table = 'products';

    protected $fillable = ['id', 'title', 'note', 'unit', 'price'];

    protected static function booted()
    {
        static::deleting(function ($data) {
            deleteFile($data->avatar);
        });
    }

    public function scopeSearch($query, $q = null)
    {
        if(!empty($q))
            return $query->where('title', 'LIKE', "%$q%")
                    ->orWhere('note', 'LIKE', "%$q%")
                    ->orWhere('unit', 'LIKE', "%$q%")
                    ->orWhere('price', 'LIKE', "%$q%");
                    
    }
}
