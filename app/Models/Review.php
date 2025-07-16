<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    use HasFactory;
    protected $fillable = [
        'film_id', 'reviewer_id', 'rating', 'komentar', 'tanggal_review'
    ];

    public function film() {
        return $this->belongsTo(Film::class);
    }
    public function reviewer() {
        return $this->belongsTo(Reviewer::class);
    }
} 