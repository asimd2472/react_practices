<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;

class ArticleController extends Controller
{
    public function get_data(Request $request){
        $blog = Article::paginate($request->perPage);
        $json['blog']=$blog;
        return response()->json($json);
    }

    public function get_dataupdate($id){
        $articles = Article::where('id', $id)->first();
        return response()->json($articles);
    }
}
