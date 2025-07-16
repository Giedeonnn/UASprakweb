<?php
namespace App\Http\Controllers;

use App\Models\Film;
use App\Models\Reviewer;
use App\Models\Review;

class DashboardController extends Controller
{
    public function index()
    {
        $filmCount = Film::count();
        $reviewerCount = Reviewer::count();
        $reviewCount = Review::count();
        return view('dashboard', compact('filmCount', 'reviewerCount', 'reviewCount'));
    }
} 