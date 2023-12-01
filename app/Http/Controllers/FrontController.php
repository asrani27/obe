<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FrontController extends Controller
{
    public function fitur()
    {
        return view('fitur');
    }
    public function tim()
    {
        return view('tim');
    }
    public function partner()
    {
        return view('partner');
    }
    public function hubungikami()
    {
        return view('hubungikami');
    }
}
