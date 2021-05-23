<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Work extends Model
{
    use HasFactory;
    protected $table = 'works';

    /**
    * GETTER de la categorie à qui appartient ce work.
    */
    public function categorie(){
      return $this->belongsTo('App\Models\Categorie');
    }


    /**
    * GETTER des comments du work.
    */
    public function comments() {
      return $this->hasMany('App\Models\Workcomment');
    }

    /**
    * GETTER des tags du work
    */
    public function tags() {
      return $this->belongsToMany('App\Models\Tag', 'works_has_tags');
    }

}
