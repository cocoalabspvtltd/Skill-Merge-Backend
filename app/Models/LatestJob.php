<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LatestJob extends Model
{
    use HasFactory;

    protected $fillable =['company','position','location','details'];
}
