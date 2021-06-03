@extends('layouts.app')

@section('content')
<div class="flex justify-center">
    <div class="bg-white w-4/12 p-6 rounded-lg">
        <form action="{{ route('register') }}" method="POST">
            @csrf

            <div class="mb-4">
                <label for="name" class="sr-only">Name</label>
                <input type="text" name="name" value="{{ old('name') }}" id="name"
                    class="bg-gray-100 border-2 w-full p-4 rounded-lg @error('name') border-red-500 @enderror"
                    placeholder="Your name" autofocus>
                @error('name')
                <div class="text-red-500 mt-2 text-sm">
                    {{ $message }}
                </div>
                @enderror
            </div>

            <div class="mb-4">
                <label for="username" class="sr-only">Username</label>
                <input type="text" name="username" value="{{ old('username') }}" id="username"
                    class="bg-gray-100 border-2 w-full p-4 rounded-lg @error('username') border-red-500 @enderror"
                    placeholder="Username">
                @error('username')
                <div class="text-red-500 mt-2 text-sm">
                    {{ $message }}
                </div>
                @enderror
            </div>

            <div class="mb-4">
                <label for="email" class="sr-only">Email</label>
                <input type="email" name="email" value="{{ old('email') }}" id="email"
                    class="bg-gray-100 border-2 w-full p-4 rounded-lg @error('email') border-red-500 @enderror"
                    placeholder="Your Email">
                @error('email')
                <div class="text-red-500 mt-2 text-sm">
                    {{ $message }}
                </div>
                @enderror
            </div>

            <div class="mb-4">
                <label for="password" class="sr-only">Password</label>
                <input type="password" name="password" id="password"
                    class="bg-gray-100 border-2 w-full p-4 rounded-lg @error('password') border-red-500 @enderror"
                    placeholder="Choose Password">
                @error('password')
                <div class="text-red-500 mt-2 text-sm">
                    {{ $message }}
                </div>
                @enderror
            </div>

            <div class="mb-4">
                <label for="password_confirmation" class="sr-only">Password Confirmation</label>
                <input type="password" name="password_confirmation" id="password_confirmation"
                    class="bg-gray-100 border-2 w-full p-4 rounded-lg @error('password_confirmation') border-red-500 @enderror"
                    placeholder="Repeat your password">
                @error('password_confirmation')
                <div class="text-red-500 mt-2 text-sm">
                    {{ $message }}
                </div>
                @enderror
            </div>

            <div>
                <button class="bg-blue-500 px-4 py-3 text-white rounded font-medium w-full hover:bg-blue-600">
                    Register
                </button>
            </div>
        </form>

        <div class="text-sm text-center mt-5">
            Already have account? <a href="{{ route('login') }}" class="text-blue-500 hover:text-blue-700">login</a>
        </div>
    </div>
</div>
@endsection
