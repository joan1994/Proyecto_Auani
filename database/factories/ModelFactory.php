<?php



$factory->define(App\Produit::class, function (Faker\Generator $faker) {
    return [
        'nom' =>$faker->name,
        'barcode'=>$faker->isbn13
    ];
});
