<?php

namespace App\Http\Controllers;

use App\Models\What_We_Do;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class WhatWeDoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = What_We_Do::all();

        return view('pages.what-we-do.index', compact('data'));
    }

    public function create()
    {
        return view('pages.what-we-do.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $iconImagePath = $request->file('icon_image')->store('what_we_do_icons', 'public');

        What_We_Do::create([
            'title' => $request->title,
            'description' => $request->description,
            'icons' => $iconImagePath,
        ]);

        return redirect()->route('what-we-do.index')->with('success', 'What We Do item created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    public function edit(Request $request, What_We_Do $data)
    {
        return view('pages.what-we-do.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request,What_We_Do $data)
    {
        Log::info('Entering the update function.');

        $request->validate([
            'title' => 'required|string|max:255',
            'icons' => 'nullable|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
            'description' => 'required|string|max:2000',
        ]);

        $data->title = $request->input('title');
        $data->description = $request->input('description');

        if ($request->hasFile('icons')) {
            // Delete old image if it exists
            if ($data->icons) {
                Storage::disk('public')->delete($data->icons);
            }

            // Store new image
            $path = $request->file('icons')->store('what_we_do_icons', 'public');
            $data->icons = $path;
        }

        $data->save();

        return redirect()->route('what-we-do.index')->with('success', 'Data updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(What_We_Do $data)
    {
        $data->delete();

        return redirect()->route('what-we-do.index')->with('success','Data Deleted Successfully');
    }
}
