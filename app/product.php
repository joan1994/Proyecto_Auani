<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class product extends Model
{
	public function products(){

		return $this->hasMany(ProductImagen::class);
	
	}
	public function images()
	{
	return $this->hasMany(ProductImagen::class);

    }
}
