<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class UploadController extends Controller
{
    public function store(Request $request)
    {
        \Log::info('Request received:', $request->all());
       
        if ($request->hasFile('upload')) {
            $path = $request->file('upload')->store('ckEditor/uploads', 'public');

            return response()->json([
                'url' => 'https://skillmerge.in/backend/storage/app/public/'.$path
            ]);
        }

        return response()->json(['error' => 'File not uploaded.'], 400);
    }
}
