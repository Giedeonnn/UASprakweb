@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Tambah Film Baru</h2>
    <form action="{{ route('films.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label for="judul" class="form-label">Judul Film</label>
            <input type="text" class="form-control @error('judul') is-invalid @enderror" id="judul" name="judul" value="{{ old('judul') }}" required>
            @error('judul')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="genre" class="form-label">Genre</label>
            <input type="text" class="form-control @error('genre') is-invalid @enderror" id="genre" name="genre" value="{{ old('genre') }}" required>
            @error('genre')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="tahun" class="form-label">Tahun Rilis</label>
            <input type="number" class="form-control @error('tahun') is-invalid @enderror" id="tahun" name="tahun" value="{{ old('tahun') }}" required>
            @error('tahun')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="poster" class="form-label">Poster Film</label>
            <input type="file" class="form-control @error('poster') is-invalid @enderror" id="poster" name="poster" accept="image/*" required>
            @error('poster')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
        <button type="submit" class="btn btn-success">Simpan</button>
    </form>
</div>
@endsection 