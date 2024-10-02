<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('catagories')->insert([
            ['catagory' => 'Technology'],
            ['catagory' => 'Science'],
            ['catagory' => 'Health'],
            ['catagory' => 'Business'],
            ['catagory' => 'Entertainment'],
            ['catagory' => 'Sports'],
            ['catagory' => 'Education'],
            ['catagory' => 'Travel'],
            ['catagory' => 'Lifestyle'],
            ['catagory' => 'Fashion'],
            ['catagory' => 'Food'],
            ['catagory' => 'Automobile'],
            ['catagory' => 'Real Estate'],
            ['catagory' => 'Finance'],
            ['catagory' => 'Politics'],
            ['catagory' => 'Environment'],
            ['catagory' => 'Others'],
        ]);
    }
}
