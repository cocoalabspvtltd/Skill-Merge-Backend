<?php

namespace App\Repositories;

use App\Interface\ApiRepositoryInterface;
use App\Models\AboutUs;
use App\Models\FAQ;
use App\Models\HackverseCommunity;
use App\Models\HomeSlider;
use App\Models\InternshipProgram;
use App\Models\LatestJob;
use App\Models\NewsandBlogs;
use App\Models\OurApproachs;
use App\Models\Program;
use App\Models\ProgramDetails;
use App\Models\SelectionProcess;
use App\Models\SelectionProcessDetails;
use App\Models\Team;
use App\Models\Teams;
use App\Models\Testimonial;
use App\Models\What_We_Do;
use App\Models\WhyChooseUs;
use App\Models\Aminities;
use App\Models\GlobalCertificationPartners;
use App\Models\PlacementDrives;

class ApiRespository implements ApiRepositoryInterface
{
    public function aboutUs()
    {
        return AboutUs::all();
    }

    public function teams()
    {
        return Teams::all();
    }

    public function home_slider()
    {
        return HomeSlider::all();
    }

    public function what_we_do()
    {
        return What_We_Do::all();
    }

    public function programs()
    {
        $programDetails = ProgramDetails::first();
        $program = InternshipProgram::with('coursePrograms')->get();

        $combinedData = [
            'program_details' => $programDetails,
            'programs' => $program,
        ];

        return $combinedData;
    }

    public function whyChooseUs()
    {
        return WhyChooseUs::all();
    }

    public function ourApproach()
    {
        return OurApproachs::all();
    }

    public function selectionProcess()
    {
        $selectionProcessDetails = SelectionProcessDetails::select('banner_title','banner_description')->first();
        $selectionProcess = SelectionProcess::all();

        $combinedData = [
            'selectionProcessDetails' => $selectionProcessDetails,
            'selectionProcess' => $selectionProcess,
        ];

        return $combinedData;
    }

   public function newandblogs()
   {
        return NewsandBlogs::orderBy('created_at', 'desc')->get(); 
   }

    public function jobs()
    {
        return LatestJob::all();
    }

    public function hackverse()
    {
        return HackverseCommunity::all();
    }

    public function testimonials()
    {
        return Testimonial::all();
    }

    public function faq()
    {
        return FAQ::all();
    }
    
     public function aminities()
    {
        return Aminities::all();
    }

    public function certificationPartners()
    {
        return GlobalCertificationPartners::all();
    }

    public function placementDrives()
    {
        return PlacementDrives::all();
    }
}
