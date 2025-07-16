@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Tambah Reviewer</h2>
    <form action="{{ route('reviewers.store') }}" method="POST">
        @csrf
        <div class="mb-3">
            <label for="nama" class="form-label">Nama Reviewer</label>
            <input type="text" class="form-control @error('nama') is-invalid @enderror" id="nama" name="nama" value="{{ old('nama') }}" required>
            @error('nama')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="bio" class="form-label">Bio</label>
            <textarea class="form-control @error('bio') is-invalid @enderror" id="bio" name="bio">{{ old('bio') }}</textarea>
            @error('bio')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
        <button type="submit" class="btn btn-success">Simpan</button>
    </form>
</div>
@endsection 