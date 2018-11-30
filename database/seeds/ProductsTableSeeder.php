<?php

use Illuminate\Database\Seeder;
use App\Product;
use App\ProductImagen;
class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //uso del model factories
        
        //factory(Product::class,30)->create();
        //factory(ProductImagen::class,60)->create();
        //factory(ProductImagen::class,30)->create();

        $products=factory(Product::class,20)->create();
        $products->each(function($product){
        $imagenes=factory(ProductImagen::class,60)->make();
        $product->products()->saveMany($imagenes);
        });

   /* $users = factory(App\User::class, 3)
           ->create()
           ->each(function ($u) {
                $u->posts()->save(factory(App\Post::class)->make());
            });
            */
    }

}
