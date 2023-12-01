<?php

namespace App\Http\Controllers;

use App\Models\Konfigurasi;
use Illuminate\Http\Request;

class KonfigurasiController extends Controller
{
    public function beranda()
    {
        $data = Konfigurasi::first();
        return view('admin.konfigurasi.beranda', compact('data'));
    }
    public function updateBeranda(Request $req)
    {
        $update = Konfigurasi::first()->update($req->all());
        return view('admin.konfigurasi.beranda', compact('data'));
    }
}
