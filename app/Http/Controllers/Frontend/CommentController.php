<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Comment;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function store( Request $request){
        // Validate the request data
    $request->validate([
        'text' => 'required',
        'blog_post_id' => 'required|exists:blog_posts,id',
        'user_id' => 'required|exists:users,id',
    ]);

    $comment = Comment::create([
        'text' => $request->text,
        'blog_post_id' => $request->blog_post_id,
        'user_id' => $request->user_id,
    ]);


    return response()->json([
        'text' => $comment->text,
        'user' => [
            'name' => $comment->user->name,
           
        ],
        'created_at' => $comment->created_at->format('M d, Y'),
    ]);
    }

    public function update(Request $request, $id) {
       
        $request->validate([
            'text' => 'required',
        ]);    
        $comment = Comment::findOrFail($id);  
        $comment->text = $request->text;
        $comment->save();
        return response()->json([
            'text' => $comment->text,
            'id' =>  $comment->id,           
        ]);;
    }

    public function destroy($id)
{
    $comment = Comment::find($id);
    $comment->delete();

    return response()->json(['message' => 'Comment deleted successfully']);
}

}
