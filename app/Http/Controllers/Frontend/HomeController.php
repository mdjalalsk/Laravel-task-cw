<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\BlogPost;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function index()
    {

        $latestPosts = BlogPost::latest()
        ->select('id', 'title','thumbnail','content', 'user_id', 'created_at')
        ->paginate(12);


        if (Auth::check()) {

            return view('frontend.home', compact('latestPosts'));
        } else {
            return view('frontend.home', compact('latestPosts'));
        }
    }
    public function home()
    {
        $latestPosts = BlogPost::latest()
        ->select( 'id','title','thumbnail','content', 'user_id', 'created_at')
        ->paginate(12);   
        return view('frontend.home', compact('latestPosts'));
    }

    public function postDetails($id){
        $singlePost = BlogPost::with('comments')->find($id);
        //  dd($singlePost);
        return view('frontend.postDetails', compact('singlePost'));
    }
}
