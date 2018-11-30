<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductImagen extends Model
{
    //
    public function product()
	{
    	return $this->belongsTo(product::class);
    }
    public function getUrlAttribute(){
    	if(substr($this->image,0,4)=="http"){
    		return $this->image;

    	}
    	return 'localhost/admin/public/image/products/'.$this->image;
    }

	
    
}
