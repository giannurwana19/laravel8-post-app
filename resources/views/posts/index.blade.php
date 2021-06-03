@extends('layouts.app')

@section('content')
<div class="flex justify-center">
    <div class="bg-white w-8/12 p-6 rounded-lg">
        <form action="{{ route('posts') }}" method="POST" class="mb-4">
            @csrf

            @auth
            <div class="mb-4">
                <label for="body" class="sr-only">Body</label>
                <textarea name="body" id="body"
                    class="bg-gray-100 border-2 w-full p-4 rounded-lg @error('body') border-red-500 @enderror" cols="30"
                    rows="4" placeholder="Post Something..."></textarea>

                @error('body')
                <div class="text-red-500 mt-2 text-sm">
                    {{ $message }}
                </div>
                @enderror
            </div>

            <div>
                <button type="submit" class="bg-blue-500 text-white px-4 py-2 font-medium rounded">Post</button>
            </div>
        </form>
        @else
        <div class="mb-5">
            <a href="{{ route('login') }}" class="bg-blue-500 text-white px-4 py-2 font-medium rounded">
                Login to add post
            </a>
        </div>
        @endauth

        @forelse($posts as $post)
        <x-post :post="$post" />
        @empty
        <p>There are no posts!</p>
        @endforelse
        {{ $posts->links() }}
    </div>
</div>
@endsection
