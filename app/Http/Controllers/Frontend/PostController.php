<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BlogPost;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class PostController extends Controller
{
    public function index()
    {
        $userId = Auth::id();

        $posts = BlogPost::where('user_id', $userId)->get();
        return view('frontend.post.index', compact('posts'));
    }
    public function create()
    {
        return view('frontend.post.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'thumbnail' => 'required|image|mimes:jpeg,png,jpg,gif',
            'cover' => 'required|image|mimes:jpeg,png,jpg,gif',
            'content' => 'required',
            'user_id' => 'required',
        ]);

        if ($request->hasFile('thumbnail')) {
            $image = $request->file('thumbnail');
            $imageName = time() . '_' . $image->getClientOriginalName();
            $image->move(public_path('uploads/post_image/thumbnail'), $imageName);
        }

        if ($request->hasFile('cover')) {
            $coverImage = $request->file('cover');
            $coverImageName = time() . '_' . $coverImage->getClientOriginalName();
            $coverImage->move(public_path('uploads/post_image/cover'), $coverImageName);
        }


        $data = $request->except('thumbnail', 'cover');
        $data['thumbnail'] = $imageName ?? null;
        $data['cover'] = $coverImageName ?? null;

        $project = BlogPost::create($data);
        if ($project) {
            return response()->json(['success' => 'Post Created Successfully']);
        } else {
            return response()->json(['errors' => 'Failed to create Post'], 422);
        }
    }
    public function edit($id)
    {
        $post = BlogPost::find($id);

        return view('frontend.post.edit', compact('post'));
    }
    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required',
            'thumbnail' => 'image|mimes:jpeg,png,jpg,gif',
            'cover' => 'image|mimes:jpeg,png,jpg,gif',
            'content' => 'required',
            'user_id' => 'required',
        ]);

        $post = BlogPost::find($id);
        if (!$post) {
            return response()->json(['errors' => 'post not found'], 404);
        }
        // Handle thumbnail update
        if ($request->hasFile('thumbnail')) {
            if ($post->thumbnail) {
                $oldThumbnailPath = public_path('uploads/post_image/thumbnail/' . $post->thumbnail);
                if (File::exists($oldThumbnailPath)) {
                    if (!File::delete($oldThumbnailPath)) {
                        return response()->json(['errors' => 'Failed to delete old thumbnail'], 500);
                    }
                }
            }

            $image = $request->file('thumbnail');
            $imageName = time() . '_' . $image->getClientOriginalName();
            if (!$image->move(public_path('uploads/post_image/thumbnail/'), $imageName)) {
                return response()->json(['errors' => 'Failed to upload new thumbnail'], 500);
            }
            $post->thumbnail = $imageName;
        }

        // Handle cover image update
        if ($request->hasFile('cover')) {
            if ($post->cover) {
                $oldCoverImagePath = public_path('uploads/post_image/cover/' . $post->cover);
                if (File::exists($oldCoverImagePath)) {
                    if (!File::delete($oldCoverImagePath)) {
                        return response()->json(['errors' => 'Failed to delete old cover image'], 500);
                    }
                }
            }
            $coverImage = $request->file('cover');
            $coverImageName = time() . '_' . $coverImage->getClientOriginalName();
            if (!$coverImage->move(public_path('uploads/post_image/cover/'), $coverImageName)) {
                return response()->json(['errors' => 'Failed to upload new cover image'], 500);
            }
            $post->cover = $coverImageName;
        }

        $result = $post->update($request->except('thumbnail', 'cover'));
        if ($result) {
            return response()->json(['success' => 'Post Updated Successfully']);
        } else {
            return response()->json(['errors' => 'Failed to update Project'], 422);
        }
    }

    public function show($id)
    {

        $post = BlogPost::find($id);

        return view('frontend.post.show', compact('post'));
    }
    public function destroy($id)
    {
        $project = BlogPost::find($id);
        $result = $project->delete();
        if ($result) {
            return response()->json(['success' => 'Post Deleted Successfully']);
        } else {
            return response()->json(['errors' => 'Failed to delete Post'], 422);
        }
    }


    public function ckeImageStore(Request $request)
    {
        if ($request->hasFile('upload')) {
            $originaName = $request->file('upload')->getClientOriginalName();
            $fileName = pathinfo($originaName, PATHINFO_FILENAME);
            $extension = $request->file('upload')->getClientOriginalExtension();
            $fileName = $fileName . '_' . time() . '.' . $extension;
            $request->file('upload')->move(public_path('media'), $fileName);
            $url = asset('media/' . $fileName);
            return response()->json(['file' => $fileName, 'uploaded' => 1, 'url' => $url,]);
        }
    }
}
