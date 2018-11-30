<?php

namespace Market;

use Illuminate\Database\Eloquent\Model;

class ProVentaModel extends Model
{

   protected $table= 'availables';
   protected $primarykey = 'id';
   public $timestamps = false;

   protected  $fillable= [
      'id', 'name', 'preci'
   ];


   public function products()
   {
      // hasmany - tiene muchas
      return $this->belongsto(Product::class);
   }


}
