@extends('layouts.app')
@section('content')
<h2>Daftar Film</h2>
<table>
    <tr><th>Judul</th><th>Genre</th><th>Tahun</th></tr>
    @foreach($films as $film)
    <tr>
        <td>{{ $film->judul }}</td>
        <td>{{ $film->genre }}</td>
        <td>{{ $film->tahun }}</td>
    </tr>
    @endforeach
</table>
@endsection 