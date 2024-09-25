<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Brand;
use App\Models\Manual;

class ManualController extends Controller
{
    public function show($brand_id, $brand_slug, $manual_id)
    {
        $brand = Brand::findOrFail($brand_id);
        $manual = Manual::findOrFail($manual_id);

        // Increment the visits column
        $manual->increment('visits');

        return view('pages/manual_view', [
            "manual" => $manual,
            "brand" => $brand,
        ]);
    }
    public function home()
    {
        // Fetch the top 10 visited manuals
        $topManuals = Manual::orderBy('visits', 'desc')->take(10)->get();
        $brands = Brand::all()->sortBy('name'); // Fetch all brands and sort by name

        return view('pages/homepage', [
            "topManuals" => $topManuals,
            "brands" => $brands,
        ]);
    }
}
