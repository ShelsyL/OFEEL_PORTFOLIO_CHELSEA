<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categorie extends Model
{
    use HasFactory;
    protected $table = 'categories';

    /**
    * GETTER des works de la categorie.
    */
    public function works() {
      return $this->hasMany('App\Models\Work');
    }


    /**
    * GETTER des articles de la catégorie.
    */
    public function articles() {
      return $this->hasMany('App\Models\Article');
    }
}
