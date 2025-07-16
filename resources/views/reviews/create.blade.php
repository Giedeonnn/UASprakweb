@extends('layouts.app')
@section('content')
<h2 class="mb-3">Tambah Review</h2>
<form action="{{ route('reviews.store') }}" method="POST">
    @csrf
    <div class="mb-3">
        <label>Film</label>
        <select name="film_id" class="form-control" required>
            <option value="">-- Pilih Film --</option>
            @foreach($films as $film)
                <option value="{{ $film->id }}" {{ old('film_id') == $film->id ? 'selected' : '' }}>{{ $film->judul }}</option>
            @endforeach
        </select>
    </div>
    <div class="mb-3">
        <label>Reviewer</label>
        <select name="reviewer_id" class="form-control" required>
            <option value="">-- Pilih Reviewer --</option>
            @foreach($reviewers as $reviewer)
                <option value="{{ $reviewer->id }}" {{ old('reviewer_id') == $reviewer->id ? 'selected' : '' }}>{{ $reviewer->nama }}</option>
            @endforeach
        </select>
    </div>
    <div class="mb-3">
        <label>Rating</label>
        <input type="number" name="rating" class="form-control" min="1" max="5" required value="{{ old('rating') }}">
    </div>
    <div class="mb-3">
        <label>Komentar</label>
        <textarea name="komentar" class="form-control">{{ old('komentar') }}</textarea>
    </div>
    <div class="mb-3">
        <label>Tanggal Review</label>
        <input type="date" name="tanggal_review" class="form-control" required value="{{ old('tanggal_review') }}">
    </div>
    <button class="btn btn-primary">Simpan</button>
    <a href="{{ route('reviews.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection 