<?php

namespace App\Http\Controllers;

use App\Models\WhyChooseUs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class WhyChooseUsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = WhyChooseUs::all();

        return view('pages.why-choose-us.index',compact('data'));
    }

    public function create()
    {
        return view('pages.why-choose-us.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $iconImagePath = $request->file('icon_image')->store('whyChooseUs_icons', 'public');

       WhyChooseUs::create([
            'title' => $request->title,
            'icon_image' => $iconImagePath,
        ]);

         return redirect()->route('why-choose-us.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    public function edit(Request $request,WhyChooseUs $data)
    {
        return view('pages.why-choose-us.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request,WhyChooseUs $data)
    {
        Log::info('Entering the update function.');

        $request->validate([
            'title' => 'required|string|max:255',
            'icon_image' => 'nullable|image|mimes:jpg,png,jpeg,gif,svg|max:2048'
        ]);

        $data->title = $request->input('title');

        if ($request->hasFile('icon_image')) {
            // Delete old image if it exists
            if ($data->icons) {
                Storage::disk('public')->delete($data->icons);
            }

            // Store new image
            $path = $request->file('icon_image')->store('whyChooseUs_icons', 'public');
            $data->icon_image = $path;
        }

        $data->save();

        return redirect()->route('why-choose-us.index')->with('success', 'Data updated successfully');
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(WhyChooseUs $data)
    {
        $data->delete();

        return redirect()->route('why-choose-us.index')->with('success','Data Deleted Successfully');
    }
}
