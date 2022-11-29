<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class WebPublic extends Controller
{
    //
    public function home(){
        $product = DB::table('products')->join('categories', 'products.category_id', '=','categories.id_category')->orderBy('name','asc')->get();
        $category = DB::table('categories')->get();
        $video = DB::table('contents')->where('type','=','Video')->get();
        $image = DB::table('contents')->where('type','=','Image')->orderby('created_at', 'desc')->get();
        return view ('index', compact('product', 'category','video', 'image'));
    }
}
