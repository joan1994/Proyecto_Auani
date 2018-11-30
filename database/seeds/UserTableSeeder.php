<?php

use Illuminate\Database\Seeder;
use App\User;
class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
        	'name'=>'Luisa',
            'email'=>'Luisa@gmail.com',
            'password'=>bcrypt('1234'),
            'admin'=>true
            
        ]);
    }
}
