<?php

namespace App\Http\Controllers;

use App\Models\OurApproachs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class OurApproachController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = OurApproachs::all();

        return view('pages.our-approach.index',compact('data'));
    }

    public function create()
    {
        return view('pages.our-approach.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $input = $request->all();

        OurApproachs::create($input);

        return redirect()->route('our-approach.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    public function edit(Request $request,OurApproachs $data)
    {
        return view('pages.our-approach.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request,OurApproachs $data)
    {
        Log::info('Entering the update function.');

        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string|max:2000'
        ]);

        $data->title = $request->input('title');
        $data->description = $request->input('description');
        $data->save();

        return redirect()->route('our-approach.index')->with('success','Data Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(OurApproachs $data)
    {
        $data->delete();

        return redirect()->route('our-approach.index')->with('success','Data Deleted Successfully');
    }
}
