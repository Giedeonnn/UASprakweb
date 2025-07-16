@extends('layouts.app')
@section('content')
<h2 class="mb-3">Edit Film</h2>
<form action="{{ route('films.update', $film) }}" method="POST">
    @csrf @method('PUT')
    <div class="mb-3">
        <label>Judul</label>
        <input type="text" name="judul" class="form-control" required value="{{ old('judul', $film->judul) }}">
    </div>
    <div class="mb-3">
        <label>Genre</label>
        <input type="text" name="genre" class="form-control" required value="{{ old('genre', $film->genre) }}">
    </div>
    <div class="mb-3">
        <label>Tahun</label>
        <input type="number" name="tahun" class="form-control" required value="{{ old('tahun', $film->tahun) }}">
    </div>
    <div class="mb-3">
        <label>Sinopsis</label>
        <textarea name="sinopsis" class="form-control">{{ old('sinopsis', $film->sinopsis) }}</textarea>
    </div>
    <button class="btn btn-primary">Update</button>
    <a href="{{ route('films.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection 