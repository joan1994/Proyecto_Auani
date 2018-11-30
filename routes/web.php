<?php


Route::get('/', 'TestController@welcome');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');//listado de productos

Route::middleware(['auth','admin'])->prefix('admin')->group(function () {
	Route::get('/products', 'ProductController@index');//listado de productos
	Route::get('/products/create', 'ProductController@create');//formulario productos
	Route::post('/products', 'ProductController@store');//registrar
	Route::get('/products/{id}/edit', 'ProductController@edit');//formulario edicion
	Route::post('/products/{id}/edit', 'ProductController@update');//actualizar
	Route::delete('/products/{id}', 'ProductController@destroy');//elliminar

// Rutas de la edicion de imagenes 
	Route::get('/products/{id}/images', 'ImageController@index');//elliminar
	Route::post('/products/{id}/images', 'ImageController@store');//elliminar
	Route::delete('/products/{id}/images', 'ImageController@destroy');//elliminar





	//Route::get('/admin/products', 'ProductController@index');//listado de productos
	//Route::get('/admin/products/create', 'ProductController@create');//formulario productos
	//Route::post('/admin/products', 'ProductController@store');//registrar
	//Route::get('/admin/products/{id}/edit', 'ProductController@edit');//formulario edicion
	//Route::post('/admin/products/{id}/edit', 'ProductController@update');//actualizar
	//Route::delete('/admin/products/{id}', 'ProductController@destroy');//elliminar
});



Route::get('barcode', 'ProduitController@index');//codigo de barras
Route::get('chart', 'chart@index');












//codigo para ele envio de correo
Route::get('chat', function(){
	$data=array(
		'name'=>"Auani"
);

Mail::send('emails.email',$data, function ($message){
	//$usuario = $request->input('email');
    //$usuario= request.getParameter("email");
	$message->from('equiponegociose@gmail.com', 'Granja Auani');
	$message->to('joan.martinezt01@gmail.com')->subject('¡Bienvenido!');

});
return "Correo enviado";
//return view('emails.view');
});





