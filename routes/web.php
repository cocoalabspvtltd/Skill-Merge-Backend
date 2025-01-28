<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('auth.login');
});

Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified',])->group(function () {
    Route::get('/dashboard',[App\Http\Controllers\AboutUsController::class, 'index'])->name('dashboard');
    Route::post('/upload', [App\Http\Controllers\UploadController::class, 'store'])->name('upload');


    Route::get('about-us', [App\Http\Controllers\AboutUsController::class, 'index'])->name('about-us.index');
    Route::get('about-us/add-details', [App\Http\Controllers\AboutUsController::class, 'create'])->name('about-us.create');
    Route::post('about-us/store-details', [App\Http\Controllers\AboutUsController::class, 'store'])->name('about-us.store');
    Route::get('about-us/{aboutUs}/edit', [App\Http\Controllers\AboutUsController::class, 'edit'])->name('about-us.edit');
    Route::put('about-us/{aboutUs}/update', [App\Http\Controllers\AboutUsController::class, 'update'])->name('about-us.update');

    Route::get('teams', [App\Http\Controllers\TeamsController::class, 'index'])->name('teams.index');
    Route::get('teams/add-details', [App\Http\Controllers\TeamsController::class, 'create'])->name('teams.create');
    Route::post('teams/store-details', [App\Http\Controllers\TeamsController::class, 'store'])->name('teams.store');
    Route::get('teams/achievement/{id}/{index}/edit', [App\Http\Controllers\TeamsController::class, 'editAchievement'])->name('achievement.edit');
    Route::post('teams/achievement/{id}/{index}', [App\Http\Controllers\TeamsController::class, 'updateAchievement'])->name('achievement.update');
    Route::get('teams/parent-company/{id}/{index}/edit', [App\Http\Controllers\TeamsController::class, 'editParentCompany'])->name('parent-company.edit');
    Route::post('teams/parent-company/{id}/{index}', [App\Http\Controllers\TeamsController::class, 'updateParentCompany'])->name('parent-company.update');

    Route::get('teams/{team}/edit', [App\Http\Controllers\TeamsController::class, 'edit'])->name('teams.edit');
    Route::put('teams/{team}/update', [App\Http\Controllers\TeamsController::class, 'update'])->name('teams.update');


    Route::get('home-slider', [App\Http\Controllers\HomeSliderController::class, 'index'])->name('homeSlider.index');
    Route::get('home-slider/add-details', [App\Http\Controllers\HomeSliderController::class, 'create'])->name('homeSlider.create');
    Route::post('home-slider/store-details', [App\Http\Controllers\HomeSliderController::class, 'store'])->name('homeSlider.store');
    Route::get('home-slider/{slider}/edit', [App\Http\Controllers\HomeSliderController::class, 'edit'])->name('homeSlider.edit');
    Route::PUT('home-slider/{slider}/update', [App\Http\Controllers\HomeSliderController::class, 'update'])->name('homeSlider.update');
    Route::delete('home-slider/{slider}/delete', [App\Http\Controllers\HomeSliderController::class, 'destroy'])->name('homeSlider.destroy');

    Route::get('what-we-do', [App\Http\Controllers\WhatWeDoController::class, 'index'])->name('what-we-do.index');
    Route::get('what-we-do/add-details', [App\Http\Controllers\WhatWeDoController::class, 'create'])->name('what-we-do.create');
    Route::post('what-we-do/store-details', [App\Http\Controllers\WhatWeDoController::class, 'store'])->name('what-we-do.store');
    Route::get('what-we-do/{data}/edit', [App\Http\Controllers\WhatWeDoController::class, 'edit'])->name('what-we-do.edit');
    Route::put('what-we-do/{data}/update', [App\Http\Controllers\WhatWeDoController::class, 'update'])->name('what-we-do.update');
    Route::delete('what-we-do/{data}/delete', [App\Http\Controllers\WhatWeDoController::class, 'destroy'])->name('what-we-do.destroy');

    Route::get('programs', [App\Http\Controllers\IntershipProgramController::class, 'index'])->name('programs.index');
    Route::get('programs/add-details', [App\Http\Controllers\IntershipProgramController::class, 'create'])->name('programs.create');
    Route::post('programs/store-details', [App\Http\Controllers\IntershipProgramController::class, 'store'])->name('programs.store');
    Route::get('programs/{id}/edit', [App\Http\Controllers\IntershipProgramController::class, 'edit'])->name('programs.edit');
    Route::put('programs/{id}/update', [App\Http\Controllers\IntershipProgramController::class, 'update'])->name('programs.update');
    Route::delete('programs/{program}/delete', [App\Http\Controllers\IntershipProgramController::class, 'destroy'])->name('programs.destroy');

    Route::get('programsDetails/{data}/edit', [App\Http\Controllers\ProgramController::class, 'editBanner'])->name('programsDetails.edit');
    Route::put('programsDetails/{data}/update', [App\Http\Controllers\ProgramController::class, 'updateBanner'])->name('programsDetails.update');

    Route::get('why-choose-us', [App\Http\Controllers\WhyChooseUsController::class, 'index'])->name('why-choose-us.index');
    Route::get('why-choose-us/add-details', [App\Http\Controllers\WhyChooseUsController::class, 'create'])->name('why-choose-us.create');
    Route::post('why-choose-us/store-details', [App\Http\Controllers\WhyChooseUsController::class, 'store'])->name('why-choose-us.store');
    Route::get('why-choose-us/{data}/edit', [App\Http\Controllers\WhyChooseUsController::class, 'edit'])->name('why-choose-us.edit');
    Route::put('why-choose-us/{data}/update', [App\Http\Controllers\WhyChooseUsController::class, 'update'])->name('why-choose-us.update');
    Route::delete('why-choose-us/{data}/delete', [App\Http\Controllers\WhyChooseUsController::class, 'destroy'])->name('why-choose-us.destroy');

    Route::get('our-approach', [App\Http\Controllers\OurApproachController::class, 'index'])->name('our-approach.index');
    Route::get('our-approach/add-details', [App\Http\Controllers\OurApproachController::class, 'create'])->name('our-approach.create');
    Route::post('our-approach/store-details', [App\Http\Controllers\OurApproachController::class, 'store'])->name('our-approach.store');
    Route::get('our-approach/{data}/edit', [App\Http\Controllers\OurApproachController::class, 'edit'])->name('our-approach.edit');
    Route::put('our-approach/{data}/update', [App\Http\Controllers\OurApproachController::class, 'update'])->name('our-approach.update');
    Route::delete('our-approach/{data}/delete', [App\Http\Controllers\OurApproachController::class, 'destroy'])->name('our-approach.destroy');

    Route::get('selection-process', [App\Http\Controllers\SelectionProcessController::class, 'index'])->name('selection-process.index');
    Route::get('selection-process/add-details', [App\Http\Controllers\SelectionProcessController::class, 'create'])->name('selection-process.create');
    Route::post('selection-process/store-details', [App\Http\Controllers\SelectionProcessController::class, 'store'])->name('selection-process.store');
    Route::get('selection-process/{process}/edit', [App\Http\Controllers\SelectionProcessController::class, 'edit'])->name('selection-process.edit');
    Route::put('selection-process/{process}/update', [App\Http\Controllers\SelectionProcessController::class, 'update'])->name('selection-process.update');
    Route::delete('selection-process/{process}/delete', [App\Http\Controllers\SelectionProcessController::class, 'destroy'])->name('selection-process.destroy');

    Route::get('selection-processDetails/{data}/edit', [App\Http\Controllers\SelectionProcessController::class, 'editBanner'])->name('selection-processDetails.edit');
    Route::put('selection-processDetails/{data}/update', [App\Http\Controllers\SelectionProcessController::class, 'updateBanner'])->name('selection-processDetails.update');


    Route::get('news-and-blogs', [App\Http\Controllers\NewsandBlogsController::class, 'index'])->name('news-and-blogs.index');
    Route::get('news-and-blogs/add-details', [App\Http\Controllers\NewsandBlogsController::class, 'create'])->name('news-and-blogs.create');
    Route::post('news-and-blogs/store-details', [App\Http\Controllers\NewsandBlogsController::class, 'store'])->name('news-and-blogs.store');
    Route::get('news-and-blogs/{newsandBlogs}/edit', [App\Http\Controllers\NewsandBlogsController::class, 'edit'])->name('news-and-blogs.edit');
    Route::put('news-and-blogs/{newsandBlogs}/update', [App\Http\Controllers\NewsandBlogsController::class, 'update'])->name('news-and-blogs.update');
    Route::delete('news-and-blogs/{newsandBlogs}/delete', [App\Http\Controllers\NewsandBlogsController::class, 'destroy'])->name('news-and-blogs.destroy');

    Route::get('latest-jobs', [App\Http\Controllers\LatestJobController::class, 'index'])->name('latest-jobs.index');
    Route::get('latest-jobs/add-details', [App\Http\Controllers\LatestJobController::class, 'create'])->name('latest-jobs.create');
    Route::post('latest-jobs/store-details', [App\Http\Controllers\LatestJobController::class, 'store'])->name('latest-jobs.store');
    Route::get('latest-jobs/{latest_job}/edit', [App\Http\Controllers\LatestJobController::class, 'edit'])->name('latest-jobs.edit');
    Route::put('latest-jobs/{latest_job}/update', [App\Http\Controllers\LatestJobController::class, 'update'])->name('latest-jobs.update');
    Route::delete('latest-jobs/{latest_job}/delete', [App\Http\Controllers\LatestJobController::class, 'destroy'])->name('latest-jobs.destroy');

    Route::get('hackverse', [App\Http\Controllers\HackverseCommunityController::class, 'index'])->name('hackverse.index');
    Route::get('hackverse/add-details', [App\Http\Controllers\HackverseCommunityController::class, 'create'])->name('hackverse.create');
    Route::post('hackverse/store-details', [App\Http\Controllers\HackverseCommunityController::class, 'store'])->name('hackverse.store');
    Route::get('hackverse/{hackverse}/edit', [App\Http\Controllers\HackverseCommunityController::class, 'edit'])->name('hackverse.edit');
    Route::put('hackverse/{hackverse}/update', [App\Http\Controllers\HackverseCommunityController::class, 'update'])->name('hackverse.update');
    Route::delete('hackverse/{hackverse}/delete', [App\Http\Controllers\HackverseCommunityController::class, 'destroy'])->name('hackverse.destroy');

    Route::get('testimonials', [App\Http\Controllers\TestimonialController::class, 'index'])->name('testimonials.index');
    Route::get('testimonials/add-details', [App\Http\Controllers\TestimonialController::class, 'create'])->name('testimonials.create');
    Route::post('testimonials/store-details', [App\Http\Controllers\TestimonialController::class, 'store'])->name('testimonials.store');
    Route::get('testimonials/{testimonial}/edit', [App\Http\Controllers\TestimonialController::class, 'edit'])->name('testimonials.edit');
    Route::put('testimonials/{testimonial}/update', [App\Http\Controllers\TestimonialController::class, 'update'])->name('testimonials.update');
    Route::delete('testimonials/{testimonial}/delete', [App\Http\Controllers\TestimonialController::class, 'destroy'])->name('testimonials.destroy');


    Route::get('faq', [App\Http\Controllers\FAQController::class, 'index'])->name('faq.index');
    Route::get('faq/add-data', [App\Http\Controllers\FAQController::class, 'create'])->name('faq.create');
    Route::post('faq/store-data', [App\Http\Controllers\FAQController::class, 'store'])->name('faq.store');
    Route::get('faq/{faq}/edit', [App\Http\Controllers\FAQController::class, 'edit'])->name('faq.edit');
    Route::put('faq/{faq}/update', [App\Http\Controllers\FAQController::class, 'update'])->name('faq.update');
    Route::delete('faq/{faq}/delete', [App\Http\Controllers\FAQController::class, 'destroy'])->name('faq.destroy');
    
     Route::get('global-certification-partners', [App\Http\Controllers\GlobalCertificationPartnersController::class, 'index'])->name('global-certification-partners.index');
    Route::get('global-certification-partners/add-data', [App\Http\Controllers\GlobalCertificationPartnersController::class, 'create'])->name('global-certification-partners.create');
    Route::post('global-certification-partners/store-data', [App\Http\Controllers\GlobalCertificationPartnersController::class, 'store'])->name('global-certification-partners.store');
    Route::get('global-certification-partners/{data}/edit', [App\Http\Controllers\GlobalCertificationPartnersController::class, 'edit'])->name('global-certification-partners.edit');
    Route::put('global-certification-partners/{data}/update', [App\Http\Controllers\GlobalCertificationPartnersController::class, 'update'])->name('global-certification-partners.update');
    Route::delete('global-certification-partners/{data}/delete', [App\Http\Controllers\GlobalCertificationPartnersController::class, 'destroy'])->name('global-certification-partners.destroy');

    Route::get('placement-drives', [App\Http\Controllers\PlacementDrivesController::class, 'index'])->name('placement-drives.index');
    Route::get('placement-drives/add-data', [App\Http\Controllers\PlacementDrivesController::class, 'create'])->name('placement-drives.create');
    Route::post('placement-drives/store-data', [App\Http\Controllers\PlacementDrivesController::class, 'store'])->name('placement-drives.store');
    Route::get('placement-drives/{data}/edit', [App\Http\Controllers\PlacementDrivesController::class, 'edit'])->name('placement-drives.edit');
    Route::put('placement-drives/{data}/update', [App\Http\Controllers\PlacementDrivesController::class, 'update'])->name('placement-drives.update');
    Route::delete('placement-drives/{data}/delete', [App\Http\Controllers\PlacementDrivesController::class, 'destroy'])->name('placement-drives.destroy');

    Route::get('aminities', [App\Http\Controllers\AminitiesController::class, 'index'])->name('aminities.index');
    Route::get('aminities/add-data', [App\Http\Controllers\AminitiesController::class, 'create'])->name('aminities.create');
    Route::post('aminities/store-data', [App\Http\Controllers\AminitiesController::class, 'store'])->name('aminities.store');
    Route::get('aminities/{data}/edit', [App\Http\Controllers\AminitiesController::class, 'edit'])->name('aminities.edit');
    Route::put('aminities/{data}/update', [App\Http\Controllers\AminitiesController::class, 'update'])->name('aminities.update');
    Route::delete('aminities/{data}/delete', [App\Http\Controllers\AminitiesController::class, 'destroy'])->name('aminities.destroy');
});
