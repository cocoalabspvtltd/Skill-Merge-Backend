<?php

namespace App\Http\Controllers;

use App\Models\Team;
use App\Models\Teams;
use Illuminate\Http\Request;

class TeamsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Teams::first(); // Assuming you have a Team model and you are retrieving the first record

        // Decode JSON fields
        $achievements = json_decode($data->achievements, true);
        $parentCompanies = json_decode($data->parent_companies, true);

        return view('pages.teams.index', compact('data', 'achievements', 'parentCompanies'));
    }

    public function create()
    {
        return view('pages.teams.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $achievements = [];
        $partners = [];

        // Collect achievements data
        if ($request->has('achievement_title') && $request->has('achievement_description')) {
            $titles = $request->input('achievement_title');
            $descriptions = $request->input('achievement_description');

            foreach ($titles as $index => $title) {
                if (!empty($title) && !empty($descriptions[$index])) {
                    $achievements[] = [
                        'title' => $title,
                        'description' => $descriptions[$index],
                    ];
                }
            }
        }

        // Collect partners data
        if ($request->has('partner_title')) {
            $titles = $request->input('partner_title');
            $icons = $request->file('partner_icon');

            foreach ($titles as $index => $title) {
                if (!empty($title) && isset($icons[$index])) {
                    $iconPath = $icons[$index]->store('partners_icons', 'public');
                    $partners[] = [
                        'title' => $title,
                        'icon_image' => $iconPath,
                    ];
                }
            }
        }

        // Save to database or further processing
        // Assuming you have a Details model to save the data
        Teams::create([
            'description' => $request->description,
            'achievements' => json_encode($achievements),
            'parent_companies' => json_encode($partners),
        ]);


        return view('pages.teams.index');
    }

    public function edit(Request $request, Teams $team)
    {
        // Decode JSON fields
        $team->achievements = json_decode($team->achievements, true);
        $team->parent_companies = json_decode($team->parent_companies, true);

        return view('pages.teams.edit', compact('team'));
    }


    public function editAchievement($id, $index)
    {
        $team = Teams::find($id);
        $achievements = json_decode($team->achievements, true);
        $achievement = $achievements[$index];

        return view('pages.teams.edit-achievement', compact('team', 'achievement', 'index'));
    }

    // Update Achievement
    public function updateAchievement(Request $request, $id, $index)
    {
        $team = Teams::find($id);
        $achievements = json_decode($team->achievements, true);

        $achievements[$index]['title'] = $request->input('title');
        $achievements[$index]['description'] = $request->input('description');

        $team->achievements = json_encode($achievements);
        $team->save();

        return redirect()->route('teams.index')->with('success', 'Achievement updated successfully');
    }

    // Edit Parent Company
    public function editParentCompany($id, $index)
    {
        $team = Teams::find($id);
        $parentCompanies = json_decode($team->parent_companies, true);
        $parentCompany = $parentCompanies[$index];

        return view('pages.teams.edit-parent-company', compact('team', 'parentCompany', 'index'));
    }

    // Update Parent Company
    // public function updateParentCompany(Request $request, $id, $index)
    // {
    //     $team = Teams::find($id);
    //     $parentCompanies = json_decode($team->parent_companies, true);

    //     $parentCompanies[$index]['title'] = $request->input('title');
    //     if ($request->hasFile('icon_image')) {
    //         // Delete the old image if it exists
    //         if (isset($parentCompanies[$index]['icon_image'])) {
    //             $oldImage = public_path('storage/partners_icons/' . $parentCompanies[$index]['icon_image']);
    //             if (file_exists($oldImage)) {
    //                 unlink($oldImage);
    //             }
    //         }

    //         // Store the new image
    //         $path = $request->file('icon_image')->store('partners_icons', 'public');
    //         $parentCompanies[$index]['icon_image'] = $path;
    //     }

    //     $team->parent_companies = json_encode($parentCompanies);
    //     $team->save();

    //     return redirect()->route('teams.index')->with('success', 'Parent Company updated successfully');
    // }
  public function updateParentCompany(Request $request, $id, $index)
{
    // Find the team by ID
    $team = Teams::find($id);

    // Decode the parent companies JSON to a PHP array
    $parentCompanies = json_decode($team->parent_companies, true);

    // Update the title for the specific parent company
    $parentCompanies[$index]['title'] = $request->input('title');

    // Check if a new image is uploaded for the specified index
    if ($request->hasFile('icon_image')) {
        // If an old image exists for this index, delete it
        if (isset($parentCompanies[$index]['icon_image']) && !empty($parentCompanies[$index]['icon_image'])) {
            $oldImage = public_path('storage/' . $parentCompanies[$index]['icon_image']);
            if (file_exists($oldImage)) {
                unlink($oldImage);
            }
        }

        // Store the new image and update the path in the array
        $path = $request->file('icon_image')->store('partners_icons', 'public');
        $parentCompanies[$index]['icon_image'] = $path;
    }

    // Re-encode the updated parent companies array back to JSON and save
    $team->parent_companies = json_encode($parentCompanies);
    $team->save();

    return redirect()->route('teams.index')->with('success', 'Parent Company updated successfully');
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
    public function update(Request $request, Teams $team)
    {
        $team->description = $request->input('description');

        // Handle achievements
        $achievements = [];
        if ($request->has('achievement_title')) {
            foreach ($request->input('achievement_title') as $key => $title) {
                $achievements[] = [
                    'title' => $title,
                    'description' => $request->input('achievement_description')[$key],
                ];
            }
        }
        $team->achievements = json_encode($achievements);

        // Handle partners
         // Process partners
    $partners = [];
    if ($request->has('partner_title')) {
        foreach ($request->input('partner_title') as $key => $title) {
            $partnerIcon = $request->file('partner_icon.' . $key);
            $existingIcon = $request->input('partner_icon_existing.' . $key);

            if ($partnerIcon) {
                // Save the new icon image
                $path = $partnerIcon->store('partners', 'public');
                $iconImage = $path;
            } else {
                // Retain the existing icon image
                $iconImage = $existingIcon;
            }

            $partners[] = [
                'title' => $title,
                'icon_image' => $iconImage,
            ];
        }
    }
    $team->parent_companies = $partners;

    $team->save();

        return redirect()->route('teams.index')->with('success', 'Team updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
