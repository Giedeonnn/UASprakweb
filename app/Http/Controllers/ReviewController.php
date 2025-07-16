<?php
namespace App\Http\Controllers;

use App\Models\Review;
use App\Models\Film;
use App\Models\Reviewer;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function index()
    {
        $reviews = Review::with(['film', 'reviewer'])->orderBy('id', 'desc')->get();
        return view('reviews.index', compact('reviews'));
    }

    public function create()
    {
        $films = Film::all();
        $reviewers = Reviewer::all();
        return view('reviews.create', compact('films', 'reviewers'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'film_id' => 'required|exists:films,id',
            'reviewer_id' => 'required|exists:reviewers,id',
            'rating' => 'required|integer|min:1|max:5',
            'komentar' => 'nullable',
            'tanggal_review' => 'required|date',
        ]);
        Review::create($request->all());
        return redirect()->route('reviews.index')->with('success', 'Review berhasil ditambahkan');
    }

    public function edit(Review $review)
    {
        $films = Film::all();
        $reviewers = Reviewer::all();
        return view('reviews.edit', compact('review', 'films', 'reviewers'));
    }

    public function update(Request $request, Review $review)
    {
        $request->validate([
            'film_id' => 'required|exists:films,id',
            'reviewer_id' => 'required|exists:reviewers,id',
            'rating' => 'required|integer|min:1|max:5',
            'komentar' => 'nullable',
            'tanggal_review' => 'required|date',
        ]);
        $review->update($request->all());
        return redirect()->route('reviews.index')->with('success', 'Review berhasil diupdate');
    }

    public function destroy(Review $review)
    {
        $review->delete();
        return redirect()->route('reviews.index')->with('success', 'Review berhasil dihapus');
    }
} 