<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['user_id', 'body'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function likes()
    {
        return $this->hasMany(Like::class);
    }

    /**
     * likedBy
     * mengetahui apakah user sudah makan atau belum
     * jika true, maka user akan unlike
     * jika false, maka user akan like
     *
     * @param  mixed $user
     * @return void
     */
    public function likedBy(User $user)
    {
        return $this->likes->contains('user_id', $user->id);
    }
}
