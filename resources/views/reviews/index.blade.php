@extends('layouts.app')
@section('content')
<h2 class="mb-3">Daftar Review</h2>
<a href="{{ route('reviews.create') }}" class="btn btn-success mb-3">Tambah Review</a>
<table class="table table-bordered">
    <thead>
        <tr>
            <th>#</th>
            <th>Film</th>
            <th>Reviewer</th>
            <th>Rating</th>
            <th>Komentar</th>
            <th>Tanggal</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @foreach($reviews as $review)
        <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $review->film->judul }}</td>
            <td>{{ $review->reviewer->nama }}</td>
            <td>{{ $review->rating }}</td>
            <td>{{ Str::limit($review->komentar, 50) }}</td>
            <td>{{ $review->tanggal_review }}</td>
            <td>
                <a href="{{ route('reviews.edit', $review) }}" class="btn btn-warning btn-sm">Edit</a>
                <form action="{{ route('reviews.destroy', $review) }}" method="POST" class="d-inline">
                    @csrf @method('DELETE')
                    <button class="btn btn-danger btn-sm" onclick="return confirm('Yakin hapus?')">Hapus</button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection 