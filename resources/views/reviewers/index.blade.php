@extends('layouts.app')
@section('content')
<h2 class="mb-3">Daftar Reviewer</h2>
<a href="{{ route('reviewers.create') }}" class="btn btn-success mb-3">Tambah Reviewer</a>
<table class="table table-bordered">
    <thead>
        <tr>
            <th>#</th>
            <th>Nama</th>
            <th>Email</th>
            <th>Catatan</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @foreach($reviewers as $reviewer)
        <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $reviewer->nama }}</td>
            <td>{{ $reviewer->email }}</td>
            <td>{{ Str::limit($reviewer->catatan, 50) }}</td>
            <td>
                <a href="{{ route('reviewers.edit', $reviewer) }}" class="btn btn-warning btn-sm">Edit</a>
                <form action="{{ route('reviewers.destroy', $reviewer) }}" method="POST" class="d-inline">
                    @csrf @method('DELETE')
                    <button class="btn btn-danger btn-sm" onclick="return confirm('Yakin hapus?')">Hapus</button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection 