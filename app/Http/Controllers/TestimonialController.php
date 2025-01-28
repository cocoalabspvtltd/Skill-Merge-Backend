<?php

namespace App\Http\Controllers;

use App\Models\Testimonial;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class TestimonialController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $testimonials = Testimonial::all();

        return view('pages.testimonials.index',compact('testimonials'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('pages.testimonials.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $imagePath = $request->file('client_image')->store('testimonials-image', 'public');

        Testimonial::create([
            'title' => $request->title,
            'description' => $request->description,
            'client_data' => $request->client_data,
            'client_image' => $imagePath,
        ]);

        return redirect()->route('testimonials.index')->with('success','Data added Successfully');

    }

    /**
     * Display the specified resource.
     */
    public function show(Testimonial $testimonial)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Testimonial $testimonial)
    {
        return view('pages.testimonials.edit',compact('testimonial'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Testimonial $testimonial)
    {
        Log::info('Entering the update function.');

        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string|max:2000',
            'client_data' => 'nullable|string|max:255',
            'client_image' => 'nullable|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
        ]);

        $testimonial->title = $request->input('title');
        $testimonial->description = $request->input('description');
        $testimonial->client_data = $request->input('client_data');

        if ($request->hasFile('client_image')) {
            // Delete old image if it exists
            if ($testimonial->iclient_imageons) {
                Storage::disk('public')->delete($testimonial->client_image);
            }

            // Store new image
            $path = $request->file('client_image')->store('testimonials-images', 'public');
            $testimonial->client_image = $path;
        }

        $testimonial->save();

        return redirect()->route('testimonials.index')->with('success', 'Data updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Testimonial $testimonial)
    {
        $testimonial->delete();

        return redirect()->route('testimonials.index')->with('success','Data Deleted Successfully');
    }
}
