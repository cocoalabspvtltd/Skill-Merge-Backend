<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('about-us',[App\Http\Controllers\API\ApiController::class,'aboutusDetails']);

Route::get('our-teams',[App\Http\Controllers\API\ApiController::class,'ourTeams']);

Route::get('home-slider',[App\Http\Controllers\API\ApiController::class,'homeSlider']);

Route::get('what-we-do',[App\Http\Controllers\API\ApiController::class,'what_we_do']);

Route::get('programs',[App\Http\Controllers\API\ApiController::class,'programs']);

Route::get('why-choose-us',[App\Http\Controllers\API\ApiController::class,'why_choose_us']);

Route::get('our-aaproachs',[App\Http\Controllers\API\ApiController::class,'our_approach']);

Route::get('selection-process',[App\Http\Controllers\API\ApiController::class,'selection_process']);

Route::post('/student-registration', [App\Http\Controllers\API\ApiController::class, 'student_registration']);

Route::get('news-and-blogs',[App\Http\Controllers\API\ApiController::class,'news_and_blogs']);

Route::get('blog-view/{data}',[App\Http\Controllers\API\ApiController::class,'blogView']);

Route::get('latest-jobs',[App\Http\Controllers\API\ApiController::class,'latest_jobs']);

Route::get('hackverse',[App\Http\Controllers\API\ApiController::class,'hackverse']);

Route::get('testimonials',[App\Http\Controllers\API\ApiController::class,'testimonials']);

Route::get('faq',[App\Http\Controllers\API\ApiController::class,'faq']);

Route::get('aminities',[App\Http\Controllers\API\ApiController::class,'aminities']);

Route::get('global-certification-partners',[App\Http\Controllers\API\ApiController::class,'global_certification_partners']);

Route::get('placement-drives',[App\Http\Controllers\API\ApiController::class,'placement_drives']);

Route::post('/contact', [App\Http\Controllers\API\ApiController::class, 'contactMail']);





Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');
