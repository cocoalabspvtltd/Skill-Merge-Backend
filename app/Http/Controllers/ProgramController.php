<?php

namespace App\Http\Controllers;

use App\Models\Courses;
use App\Models\InternshipProgram;
use App\Models\Program;
use App\Models\ProgramDetails;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class ProgramController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $programDetails = ProgramDetails::first();
        $internshipPrograms = InternshipProgram::with('coursePrograms')->get();
        return view('pages.programs.index',compact('programs','programDetails'));
    }

    public function create()
    {
        return view('pages.programs.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $courseImagePath = $request->file('course_image')->store('course_images', 'public');

        // $programDetails = ProgramDetails::create([
        //     'banner_title' => $request->banner_title,
        //     'banner_subtitle' => $request->banner_subtitle,
        // ]);

        $program = Courses::create([
            'course_title' => $request->course_title,
            'description' => $request->course_description,
            'duration' => $request->course_duration,
            'course_image' => $courseImagePath,
            'job_designation' => $request->job_designation,
            'company_name' => $request->company_name,
        ]);

        return redirect()->route('programs.index');
    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    public function editBanner(ProgramDetails $data)
    {
         return view('pages.programs.editProgramBanner',compact('data'));
    }

    public function updateBanner(Request $request,ProgramDetails $data)
    {
          $data->banner_title = $request->banner_title;
          $data->banner_subtitle = $request->banner_subtitle;

          $data->save();

          return redirect()->route('programs.index')->with('success,Data updated Successfully');

    }

    public function edit(Request $request,Courses $program)
    {
        return view('pages.programs.edit',compact('program'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Courses $program)
    {
        Log::info('Entering the update function.');

        $request->validate([
            'course_title' => 'required|string|max:255',
            'course_image' => 'nullable|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
            'course_description' => 'required|string|max:2000',
            'course_duration' => 'required|string|max:255',
            'job_designation' => 'required|string|max:255',
            'company_name' =>'required|string|max:255',

        ]);

        $program->course_title = $request->input('course_title');
        $program->description = $request->input('course_description');
        $program->duration = $request->input('course_duration');
        $program->job_designation = $request->input('job_designation');
        $program->company_name = $request->input('company_name');

        if ($request->hasFile('course_image')) {
            // Delete old image if it exists
            if ($program->icons) {
                Storage::disk('public')->delete($program->course_image);
            }

            // Store new image
            $path = $request->file('course_image')->store('course_images', 'public');
            $program->course_image = $path;
        }

        $program->save();

        return redirect()->route('programs.index')->with('success','Program Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Courses $program)
    {
        $program->delete();

        return redirect()->route('programs.index')->with('success','Data Deleted Successfully');
    }
}
