<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Catagory extends Model
{
    use HasFactory;

    // Specify the table name if it doesn't follow Laravel's naming convention
    protected $table = 'catagories';

    // Specify which attributes can be mass-assigned
    protected $fillable = ['catagory'];

    /**
     * Get the brands for the category.
     */
    public function brands()
    {
        return $this->hasMany(Brand::class, 'catagory_id');
    }
}
