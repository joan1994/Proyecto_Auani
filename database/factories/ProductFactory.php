<?php

use Faker\Generator as Faker;
use App\Product;
$factory->define(Product::class, function (Faker $faker) {
    return [
   			'name'=>substr($faker->sentence(3),0,-1),
           'kind_product' =>$faker->word,
            'price' =>$faker->randomDigit,
           'image' =>$faker->word,
           'description' =>$faker->sentence(10),
           'log_description' =>$faker->word
    ];
});
