<?php

namespace App\Http\Controllers;

use App\Models\SelectionProcess;
use App\Models\SelectionProcessDetails;
use Illuminate\Http\Request;

class SelectionProcessController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $selectionProcessDetails = SelectionProcessDetails::first();
        $selectionProcess = SelectionProcess::all();

        return view('pages.selection-process.index',compact('selectionProcess','selectionProcessDetails'));
    }

    public function create()
    {
        return view('pages.selection-process.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        // $programDetails = SelectionProcessDetails::create([
        //     'banner_title' => $request->banner_title,
        //     'banner_description' => $request->banner_description,
        // ]);

        $program = SelectionProcess::create([
            'title' => $request->title,
            'description' => $request->description,
        ]);

        return redirect()->route('selection-process.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    public function editBanner(SelectionProcessDetails $data)
    {
         return view('pages.selection-process.editProcessDetails',compact('data'));
    }

    public function updateBanner(Request $request,SelectionProcessDetails $data)
    {
          $data->banner_title = $request->banner_title;
          $data->banner_description = $request->banner_description;

          $data->save();

          return redirect()->route('selection-process.index')->with('success,Data updated Successfully');

    }

    public function edit(Request $request,SelectionProcess $process)
    {
        return view('pages.selection-process.edit',compact('process'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
