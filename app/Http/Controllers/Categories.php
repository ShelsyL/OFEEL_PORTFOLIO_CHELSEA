<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categorie;

class Categories extends Controller {

  public function index () {
    return response()->json(Categorie::all()); // Retourne toutes les Categories (Résultat) sous forme d'une réponse Json.
  }

}
