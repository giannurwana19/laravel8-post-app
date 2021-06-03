@extends('layouts.app')

@section('content')
<div class="flex justify-center">
    <div class="w-8/12">
        <div class="bg-white p-6 rounded-lg">
            <div>
                <h1 class="text-2xl mb-1 font-medium">{{ $user->name }}
                    <span class="text-gray-500">({{ $user->username }})</span></h1>
            </div>

            <p>Posted {{ $posts->count() }} {{ Str::plural('post', $posts->count()) }} and receive
                {{ $user->receivedLikes()->count() }} {{ Str::plural('like', $user->receivedLikes()->count()) }}</p>

            <div class="border w-1/2 my-4"></div>
            @if($posts->count())
            @foreach ($posts as $post)
            <x-post :post="$post" />
            @endforeach
            {{ $posts->links() }}
            @else
            <p>There are no posts!</p>
            @endif
        </div>
    </div>
</div>
@endsection
