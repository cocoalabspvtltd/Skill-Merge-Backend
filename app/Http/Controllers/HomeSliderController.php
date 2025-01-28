<?php

namespace App\Http\Controllers;

use App\Http\Requests\sliderFormRequest;
use App\Models\HomeSlider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class HomeSliderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = HomeSlider::all();

        return view('pages.slider.index', compact('data'));
    }

    public function create()
    {
        return view('pages.slider.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $imagePath = $request->file('image')->store('slider_images', 'public');

        $pdf_url = $request->file('pdf_url')->store('esm_pdf', 'public');

        HomeSlider::create([
            'title' => $request->title,
            'description' => $request->description,
            'image' => $imagePath,
            'pdf_url' => $pdf_url,
        ]);

        return redirect()->route('homeSlider.index')->with('success', 'Slider created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    public function edit(Request $request, HomeSlider $slider)
    {
        return view('pages.slider.edit', compact('slider'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, HomeSlider $slider)
    {

        $slider = HomeSlider::findOrFail($slider->id);
        $slider->title = $request->input('title');
        $slider->description = $request->input('description');

        if ($request->hasFile('image')) {
            if ($slider->image) {
                Storage::disk('public')->delete($slider->image);
            }
            $path = $request->file('image')->store('slider_images', 'public');
            $slider->image = $path;
        }

        if ($request->hasFile('pdf_url')) {
            if ($slider->pdf_url) {
                Storage::disk('public')->delete($slider->pdf_url);
            }
            $path = $request->file('pdf_url')->store('esm_pdf', 'public');
            $slider->pdf_url = $path;
        }

        $slider->save();

        return redirect()->route('homeSlider.index')->with('success', 'Slider updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(HomeSlider $slider)
    {
          $slider->delete();

          return redirect()->route('homeSlider.index');
    }
}
