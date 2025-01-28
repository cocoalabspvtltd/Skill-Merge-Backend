<?php

namespace App\Http\Controllers;

use App\Models\NewsandBlogs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class NewsandBlogsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = NewsandBlogs::all();

        return view('pages.news-blogs.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('pages.news-blogs.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $iconImagePath = $request->file('image')->store('news_and_blogs_image', 'public');

        NewsandBlogs::create([
            'title' => $request->title,
            'description' => $request->description,
            'image' => $iconImagePath,
        ]);

        return redirect()->route('news-and-blogs.index')->with('success', 'News and Blogs created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(NewsandBlogs $newsandBlogs)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(NewsandBlogs $newsandBlogs)
    {
        return view('pages.news-blogs.edit', compact('newsandBlogs'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, NewsandBlogs $newsandBlogs)
    {
        Log::info('Entering the update function.');

        $request->validate([
            'title' => 'required|string|max:255',
            'image' => 'nullable|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
            'description' => 'required|string',
        ]);

        $newsandBlogs->title = $request->input('title');
        $newsandBlogs->description = $request->input('description');

        if ($request->hasFile('image')) {
            // Delete old image if it exists
            if ($newsandBlogs->image) {
                Storage::disk('public')->delete($newsandBlogs->image);
            }

            // Store new image
            $path = $request->file('image')->store('news_and_blogs_image', 'public');
            $newsandBlogs->image = $path;
        }

        $newsandBlogs->save();

        return redirect()->route('news-and-blogs.index')->with('success', 'Data updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(NewsandBlogs $newsandBlogs)
    {
        $newsandBlogs->delete();

        return redirect()->route('news-and-blogs.index')->with('success','data Deleted successfully');
    }
}
