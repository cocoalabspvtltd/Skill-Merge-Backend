<?php

namespace App\Http\Controllers;

use App\Models\PlacementDrives;
use Illuminate\Http\Request;

class PlacementDrivesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = PlacementDrives::all();

        return view('pages.placement-drives.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('pages.placement-drives.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $logoImagePath = $request->file('logo')->store('placement_drive_logo', 'public');

        PlacementDrives::create([
            'title' => $request->title,
            'logo' => $logoImagePath,
        ]);

        return redirect()->route('placement-drives.index')->with('success', 'Certification Partners item created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(PlacementDrives $placementDrives)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(PlacementDrives $placementDrives)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, PlacementDrives $placementDrives)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(PlacementDrives $placementDrives)
    {
        //
    }
}
