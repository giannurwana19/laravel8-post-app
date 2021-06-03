@props(['post' => $post])

<div class="mb-4">
    <!-- Because you are alive, everything is possible. - Thich Nhat Hanh -->
    <a href="{{ route('users.posts', $post->user) }}" class="font-bold">{{ $post->user->username }}</a> | <span
        class="text-gray-600 text-sm">{{ $post->created_at->diffForHumans() }}</span>
    <p class="mb-2 text-sm">{{ $post->body }}</p>

    @can('delete', $post)
    <div>
        <form action="{{ route('posts.destroy', $post) }}" method="POST">
            @csrf
            @method('DELETE')
            <button type="submit" class="text-blue-500">Delete</button>
        </form>
    </div>
    @endcan

    <div class="flex items-center">
        @auth
        @if(!$post->likedBy(auth()->user()))
        <form action="{{ route('posts.likes', $post) }}" method="POST">
            @csrf
            <button type="submit" class="text-blue-500 mr-1">Like</button>
        </form>
        @else
        <form action="{{ route('posts.likes', $post) }}" method="POST">
            @csrf
            @method('DELETE')
            <button type="submit" class="text-blue-500 mr-1">Unlike</button>
        </form>
        @endif
        @endauth
        <span>{{ $post->likes->count() }} {{ Str::plural('like', $post->likes->count()) }}</span>
    </div>
</div>
