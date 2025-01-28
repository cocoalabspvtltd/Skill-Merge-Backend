<?php

namespace App\Http\Controllers;

use App\Http\Requests\AboutFormRequest;
use App\Models\AboutUs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class AboutUsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = AboutUs::first();

        return view('pages.about-us.index',compact('data'));
    }

    public function create()
    {
        return view('pages.about-us.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $input = $request->all();

        AboutUs::create($input);

        return view('pages.about-us.index');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(AboutUs $aboutUs)
    {
        return view('pages.about-us.edit',compact('aboutUs'));
    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(AboutFormRequest $request, AboutUs $aboutUs)
    {
        $validator = $request->validated();
        if ($request->hasFile('about_image')) {

            // Delete the old image if it exists
            if ($aboutUs->image) {
                Storage::delete('public/' . $aboutUs->about_image);
            }

            // Store the new image and get the path
            $path = $request->file('about_image')->store('about_images', 'public');
             $validator['about_image'] = $path;
        }

        AboutUs::where('id', $aboutUs->id)->update($validator);

        return redirect()->route('about-us.index');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
