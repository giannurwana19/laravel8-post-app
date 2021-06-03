<?php

namespace App\Http\Controllers;

use App\Mail\PostLiked;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class PostLikeController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth']);
    }


    /**
     * like post
     *
     * @param  mixed $post
     * @param  mixed $request
     * @return void
     */
    public function store(Post $post, Request $request)
    {
        // dd($post->likes()->withTrashed()->get());

        if ($post->likedBy($request->user())) {
            return response(null, 409);
        }

        $likedBefore = !$post->likes()->onlyTrashed()->where('user_id', $request->user()->id)->count();

        // dd($likedBefore);

        if ($likedBefore && $post->user_id !== auth()->id()) {
            Mail::to(auth()->user())->send(new PostLiked(auth()->user(), $post));
        }

        $post->likes()->create([
            'user_id' => $request->user()->id
        ]);

        return back();
    }

    /**
     * unlike post
     *
     * @param  mixed $post
     * @param  mixed $request
     * @return void
     */
    public function destroy(Post $post, Request $request)
    {
        $request->user()->likes()->where('post_id', $post->id)->delete();

        return back();
    }
}
