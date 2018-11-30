<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\ProductImagen;



class ImageController extends Controller
{
    public function index($id){
    	$product=Product::find($id);
    	$images=$product->images;
    	
    	return view('admin.products.images.index')->with(compact('product','images'));

    }
    public function store(Request $request, $id){
        //guaradr la img en nuetro proyecto
        $file = $request->file('photo');
        $path = public_path().'/images/products';
        $fileName = uniqid().$file->getClientOriginalName();
        $file->move($path, $fileName);

        // crear 1 registro en la tabla product_images
    	$productImage =new productImagen();
        $productImage->image=$fileName;
        //$productImage->feaured= ;
        $productImage->product_id=$id;
        $productImage->save();

        return back();
    }
    public function destroy(){
    	
    }
}
