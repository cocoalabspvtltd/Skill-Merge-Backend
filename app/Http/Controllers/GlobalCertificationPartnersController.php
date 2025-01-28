<?php

namespace App\Http\Controllers;

use App\Models\GlobalCertificationPartners;
use Illuminate\Http\Request;

class GlobalCertificationPartnersController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = GlobalCertificationPartners::all();

        return view('pages.global-certification-partners.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('pages.global-certification-partners.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $logoImagePath = $request->file('logo')->store('certification_partners_logo', 'public');

        GlobalCertificationPartners::create([
            'title' => $request->title,
            'logo' => $logoImagePath,
        ]);

        return redirect()->route('global-certification-partners.index')->with('success', 'Certification Partners item created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(GlobalCertificationPartners $globalCertificationPartners)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(GlobalCertificationPartners $globalCertificationPartners)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, GlobalCertificationPartners $globalCertificationPartners)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(GlobalCertificationPartners $globalCertificationPartners)
    {
        //
    }
}
