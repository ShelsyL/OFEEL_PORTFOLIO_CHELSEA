<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Workcomment;

class Workcomments extends Controller {

  /**
   * AFFICHAGES DES COMMENTAIRES DU WORK
   * @return [index]      [ressources/Show.vue]
   */
  public function index(){
    return response()->json(Workcomment::all());
  }


  /**
     * AJOUT D'UN commentaire
     * @param  integer $commentaire [commentaire à ajouter]
     * @return [commentaire]        [ressources/Show.vue]
     */
  public function store(Request $request){
      $workcomment = Workcomment::create($request->all());
      return response()->json($workcomment);
  }
    }
