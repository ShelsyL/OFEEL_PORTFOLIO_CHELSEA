<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Work;
use App\Models\Categorie;

class Works extends Controller {

  public function index() {
    // return response()->json(Work::all());
    return response()->json(Work::with('categorie')->get());
  }

  // public function show($id) {
  //   return response()->json(Work::findOrFail($id));
  // }

}
