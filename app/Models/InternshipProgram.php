<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InternshipProgram extends Model
{
    use HasFactory;

    protected $fillable =['title','program_details','key_details','image'];

    public function coursePrograms()
    {
        return $this->hasMany(Courses::class, 'intership_program_id');
    }
}
