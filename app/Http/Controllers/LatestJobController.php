<?php

namespace App\Http\Controllers;

use App\Models\LatestJob;
use Illuminate\Http\Request;

class LatestJobController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $jobs = LatestJob::all();

        return view('pages.latest-job.index',compact('jobs'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('pages.latest-job.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $input = $request->all();

        LatestJob::create($input);

        return redirect()->route('latest-jobs.index')->with('success','Data Added Successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(LatestJob $latest_job)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(LatestJob $latest_job)
    {
        return view('pages.latest-job.edit',compact('latest_job'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, LatestJob $latest_job)
    {
        $input = $request->all();

        $latest_job->update($input);

        return redirect()->route('latest-jobs.index')->with('success','Data updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(LatestJob $latest_job)
    {
        $latest_job->delete();

        return redirect()->route('latest-jobs.index')->with('success','Data deleted Successfully');
    }
}
