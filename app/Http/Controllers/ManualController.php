<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Brand;
use App\Models\Catagory;
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
        $catagories = Catagory::with('brands')->get();
        $name = 'John';
        return view('pages/homepage', [
            "topManuals" => $topManuals,
            "brands" => $brands,
            "catagories" => $catagories,
            "name" => $name

        ]);
    }
    public function incrementAndRedirect($manual_id)
    {
        $manual = Manual::findOrFail($manual_id);

        // Increment the visits column
        $manual->increment('visits');

        // Redirect to the actual manual URL
        return redirect('http://manualsonline.com/manuals/mfg/Aastra_Telecom/M5316.html'); // Replace with actual URL logic
    }
}
