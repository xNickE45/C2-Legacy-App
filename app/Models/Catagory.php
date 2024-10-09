<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Catagory extends Model
{
    use HasFactory;

    protected $table = 'catagories';

    protected $fillable = ['catagory'];

    /**
     * Get the brands for the category.
     */
    public function brands()
    {
        return $this->hasMany(Brand::class, 'catagory_id');
    }
}
