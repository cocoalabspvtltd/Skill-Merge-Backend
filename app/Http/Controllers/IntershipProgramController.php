<?php

namespace App\Http\Controllers;

use App\Models\Courses;
use App\Models\InternshipProgram;
use App\Models\ProgramDetails;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class IntershipProgramController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $internshipPrograms  = InternshipProgram::with('coursePrograms')->get();

        $programDetails = ProgramDetails::first();

        return view('pages.programs.index', compact('internshipPrograms','programDetails'));
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
        Log::info('Entering the storing function.');

        // dd($request['course_programs']);

        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'program_details' => 'required|string',
            'image' => 'required|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
        ]);

        $courseImagePath = $request->file('image')->store('course_images', 'public');

        $keyDetails = [];

        if ($request->has('key_title') && $request->has('key_description')) {
            $titles = $request->input('key_title');
            $descriptions = $request->input('key_description');

            foreach ($titles as $index => $title) {
                if (!empty($title) && !empty($descriptions[$index])) {
                    $keyDetails[] = [
                        'title' => $title,
                        'description' => $descriptions[$index],
                    ];
                }
            }
        }

        $internshipProgram = InternshipProgram::create([
            'title' => $validatedData['title'],
            'program_details' => $validatedData['program_details'],
            'key_details' => json_encode($keyDetails),
            'image' => $courseImagePath
        ]);

        foreach ($request['course_programs'] as $courseProgramData) {
            $courseProgramData['intership_program_id'] = $internshipProgram->id;
            Courses::create($courseProgramData);
        }

        return redirect()->route('programs.index')->with('success', 'Data Added Successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    public function edit($id)
    {
        $internshipProgram = InternshipProgram::with('coursePrograms')->findOrFail($id);

        return view('pages.programs.edit', compact('internshipProgram'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'program_details' => 'required|string',
            'image' => 'sometimes|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
        ]);

        // Find the internship program by ID
        $internshipProgram = InternshipProgram::findOrFail($id);

        // Handle image update
        if ($request->hasFile('image')) {
            // Delete old image from storage if necessary
            if ($internshipProgram->image) {
                Storage::disk('public')->delete($internshipProgram->image);
            }

            // Store new image
            $courseImagePath = $request->file('image')->store('course_images', 'public');
            $internshipProgram->image = $courseImagePath;
        }

        $keyDetails = [];

        if ($request->has('key_title') && $request->has('key_description')) {
            $titles = $request->input('key_title');
            $descriptions = $request->input('key_description');

            foreach ($titles as $index => $title) {
                if (!empty($title) && !empty($descriptions[$index])) {
                    $keyDetails[] = [
                        'title' => $title,
                        'description' => $descriptions[$index],
                    ];
                }
            }
        }

        // Update internship program details
        $internshipProgram->update([
            'title' => $validatedData['title'],
            'program_details' => $validatedData['program_details'],
            'key_details' => json_encode($keyDetails),
            'image' => $internshipProgram->image ?? $internshipProgram->image, // Only update if a new image is uploaded
        ]);

        // Handle course programs
        $courseProgramsData = $request['course_programs'];

        // Delete existing course programs not present in the update data
        $existingCoursePrograms = $internshipProgram->coursePrograms->pluck('id')->toArray();
        $updatedCourseProgramIds = array_filter(array_column($courseProgramsData, 'id'));
        $courseProgramsToDelete = array_diff($existingCoursePrograms, $updatedCourseProgramIds);

        if (!empty($courseProgramsToDelete)) {
            Courses::whereIn('id', $courseProgramsToDelete)->delete();
        }

        // Update or create course programs
        foreach ($courseProgramsData as $courseProgramData) {
            if (isset($courseProgramData['id'])) {
                // Update existing course program
                $courseProgram = Courses::find($courseProgramData['id']);
                if ($courseProgram) {
                    $courseProgram->update($courseProgramData);
                }
            } else {
                // Create new course program
                $courseProgramData['intership_program_id'] = $internshipProgram->id;
                Courses::create($courseProgramData);
            }
        }

        return redirect()->route('programs.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $internshipProgram = InternshipProgram::findOrFail($id);

        // Delete associated Course Programs
        $internshipProgram->coursePrograms()->delete();

        // Delete the Internship Program itself
        $internshipProgram->delete();

        return redirect()->route('programs.index');
    }
}
