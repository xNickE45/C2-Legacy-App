<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class giveCatagoryId extends Seeder
{

    public function run(): void
    {
        // Fetch all brands
        $brands = DB::table('brands')->get();

        // Update each brand with a random catagory_id between 1 and 10
        foreach ($brands as $brand) {
            DB::table('brands')->where('id', $brand->id)->update(['catagory_id' => rand(1, 10)]);
        }
    }
}
