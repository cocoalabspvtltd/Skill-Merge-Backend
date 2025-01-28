<?php

namespace App\Http\Controllers;

use App\Models\Aminities;
use Illuminate\Http\Request;

class AminitiesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Aminities::all();

        return view('pages.aminities.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('pages.aminities.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $logoImagePath = $request->file('icon_image')->store('aminities_icon', 'public');

        Aminities::create([
            'title' => $request->title,
            'icon_image' => $logoImagePath,
        ]);

        return redirect()->route('aminities.index')->with('success', 'Certification Partners item created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Aminities $aminities)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Aminities $aminities)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Aminities $aminities)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Aminities $aminities)
    {
        //
    }
}
