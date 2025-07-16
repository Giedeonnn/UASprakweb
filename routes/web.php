<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\FilmController;
use App\Http\Controllers\ReviewerController;
use App\Http\Controllers\ReviewController;

Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
Route::resource('films', FilmController::class);
Route::resource('reviewers', ReviewerController::class);
Route::resource('reviews', ReviewController::class); 