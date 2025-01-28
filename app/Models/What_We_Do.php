<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class What_We_Do extends Model
{
    use HasFactory;

    protected $fillable=['title','description','icons'];
}
