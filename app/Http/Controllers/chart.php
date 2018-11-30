<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class chart extends Controller
{
      /**
         * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $data = DB::table('availables')
            ->select(
                DB::raw('name as name'),
                DB::raw('count(*) as number'))
            ->groupBy('name')
            ->get();

       $array[] = ['Name','Number'];
        foreach ($data as  $key => $value) {
            $array[++$key] = [$value->name,$value->number];
        }

        ///return view('google_pie_chart')->with('name',json_encode($array));
        return view('google-line-chart')->with('visitor',json_encode($result));
    }
}


