<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('details', function (Blueprint $table) {
            $table->increments('id');

            $table->String('quantity');
            $table->Integer('price');
            $table->String('discount');
            //FK
            $table->unsignedInteger('product_id')->unsigned();
            $table->foreign('product_id')->references('id')->on('products');

            $table->unsignedInteger('payment_id')->unsigned();
            $table->foreign('payment_id')->references('id')->on('payments');

            $table->unsignedInteger('discount_id')->unsigned();
            $table->foreign('discount_id')->references('id')->on('discounts'); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('details');
    }
}
