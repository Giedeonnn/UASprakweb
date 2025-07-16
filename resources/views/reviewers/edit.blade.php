@extends('layouts.app')
@section('content')
<h2 class="mb-3">Edit Reviewer</h2>
<form action="{{ route('reviewers.update', $reviewer) }}" method="POST">
    @csrf @method('PUT')
    <div class="mb-3">
        <label>Nama</label>
        <input type="text" name="nama" class="form-control" required value="{{ old('nama', $reviewer->nama) }}">
    </div>
    <div class="mb-3">
        <label>Email</label>
        <input type="email" name="email" class="form-control" required value="{{ old('email', $reviewer->email) }}">
    </div>
    <div class="mb-3">
        <label>Catatan</label>
        <textarea name="catatan" class="form-control">{{ old('catatan', $reviewer->catatan) }}</textarea>
    </div>
    <button class="btn btn-primary">Update</button>
    <a href="{{ route('reviewers.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection 