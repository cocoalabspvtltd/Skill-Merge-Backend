<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SelectionProcessDetails extends Model
{
    use HasFactory;

    protected $fillable=[ 'banner_title','banner_description'];
}
