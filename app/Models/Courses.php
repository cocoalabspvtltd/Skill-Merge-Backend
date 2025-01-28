<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Courses extends Model
{
    use HasFactory;

    protected $fillable =['intership_program_id','course_title','course_duration','advance_amount','monthly_amount','deliverables'];

    public function internshipProgram()
    {
        return $this->belongsTo(InternshipProgram::class, 'intership_program_id');
    }
}
