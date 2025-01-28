<?php

namespace App\Http\Controllers;

use App\Models\HackverseCommunity;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class HackverseCommunityController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $hackverse = HackverseCommunity::all();

        return view('pages.hackverse.index', compact('hackverse'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('pages.hackverse.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $imagePath = $request->file('image')->store('hackverse-image', 'public');

        HackverseCommunity::create([
            'title' => $request->title,
            'description' => $request->description,
            'image' => $imagePath,
        ]);

        return redirect()->route('hackverse.index')->with('success', 'Data Added successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(HackverseCommunity $hackverseCommunity)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(HackverseCommunity $hackverse)
    {
        return view('pages.hackverse.edit', compact('hackverse'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, HackverseCommunity $hackverse)
    {
        Log::info('Entering the update function.');

        $request->validate([
            'title' => 'required|string|max:255',
            'image' => 'sometimes|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
            'description' => 'required|string|max:2000',
        ]);

        $hackverse->title = $request->input('title');
        $hackverse->description = $request->input('description');

        if ($request->hasFile('image')) {
            // Delete old image if it exists
            if ($hackverse->image) {
                Storage::disk('public')->delete($hackverse->image);
            }

            // Store new image
            $path = $request->file('image')->store('hackverse-image', 'public');
            $hackverse->icons = $path;
        }

        $hackverse->save();

        return redirect()->route('hackverse.index')->with('success','Data updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(HackverseCommunity $hackverse)
    {
        $hackverse->delete();

        return redirect()->route('hackverse.index')->with('success','Data deleted Successfully');
    }
}
