<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\ProductImagen;

class ProductController extends Controller
{
    public function index(){
    	$products=Product::paginate(5);
    	return view ('admin.products.index')->with(compact('products'));//listado
    }

    public function create(){
    	return view ('admin.products.create');//formulario de registro
    }

    public function store(Request $request){
    //validar
    $messages=['name.required'=>'Es necesario agregar un Nombre',
                'name.min'=>'El producto tiene que tener al menos 15 caracteres',
                'price.required'=>'El producto tiene que tener un precio',
                'price.min'=>'El precio del producto no tiene que contener precios negativos',
                'kind_product.required'=>'Es necesario una description',
                'description.required'=>'Descripcion corta es un campo obligatorio',
                'description.max'=>'Descripcion solo admite 100 caracteres',
                'log_description.required'=>'Descripcion amplia es un campo obligatorio',
                'log_description.max'=>'Descripcion solo admite 200 caracteres',
    ];

    $rules=['name'=>'required|min:15', 
            'kind_product'=>'required',
            'price'=>'required|numeric|min:0', 
            'description'=>'required|max:100', 
            'log_description'=>'required|max:200'
    ];
    $this->validate($request,$rules, $messages);

    	
    //registrar el nuevo producto enl base de datos
    //add($request->all());
    $Product=new Product();
    $Product->name=$request->input('name');
    $Product->kind_product=$request->input('kind_product');
    $Product->price=$request->input('price');
    $Product->description=$request->input('description');
    $Product->log_description=$request->input('log_description');
    $Product->save();//insert
    return redirect('/admin/products');  

    }


     public function edit($id)
    {
        //return "mostrar id $id";
        $product = Product::find($id);
        return view ('admin.products.edit')->with(compact('product'));//formulario de registro
    }

    public function update(Request $request, $id)
    {
    $messages=['name.required'=>'Es necesario agregar un Nombre',
                'name.min'=>'El producto tiene que tener al menos 15 caracteres',
                'price.required'=>'El producto tiene que tener un precio',
                'price.min'=>'El precio del producto no tiene que contener precios negativos',
                'kind_product.required'=>'Es necesario una description',
                'description.required'=>'Descripcion corta es un campo obligatorio',
                'description.max'=>'Descripcion solo admite 100 caracteres',
                'log_description.required'=>'Descripcion amplia es un campo obligatorio',
                'log_description.max'=>'Descripcion solo admite 200 caracteres',
    ];

    $rules=['name'=>'required|min:15', 
            'kind_product'=>'required',
            'price'=>'required|numeric|min:0', 
            'description'=>'required|max:100', 
            'log_description'=>'required|max:200'
    ];
    $this->validate($request,$rules, $messages);
        
    //actualizar
    //add($request->all());
    $Product = Product::find($id);
    $Product->name=$request->input('name');
    $Product->kind_product=$request->input('kind_product');
    $Product->price=$request->input('price');
    $Product->description=$request->input('description');
    $Product->log_description=$request->input('log_description');
    $Product->save();//Update
    return redirect('/admin/products');  

    }
    
    public function destroy($id)
    {
         //eliminar ProductImage por que estaba relacionada
     ProductImagen::where('product_id', $id)->delete();
     //eliminar producto
     $product=Product::find($id);
     $product->delete();//eliminar
     return back(); 
    }



}
