<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Brand;
use App\Models\Manual;

class BrandController extends Controller
{
    public function show($brand_id, $brand_slug)
    {

        $brand = Brand::findOrFail($brand_id);
        // Fetch all manuals ordered by visits in descending order
        $manuals = Manual::orderBy('visits', 'desc')->where('brand_id', operator: $brand_id)->get();

        return view('pages/manual_list', [
            "brand" => $brand,
            "manuals" => $manuals
        ]);
    }
    public function showBrandsByLetter(string $letter)
    {
        $brands = Brand::where('name', 'LIKE', $letter . '%')->get();
        return view('pages.brands_by_letter', ['brands' => $brands, 'letter' => $letter]);
    }
}
