@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Daftar Film</h2>
    <div class="row row-cols-1 row-cols-md-4 g-4">
        @foreach($films as $film)
        <div class="col">
            <div class="card h-100 shadow">
                {{-- Tampilkan gambar poster --}}
                <img src="{{ asset('storage/' . $film->poster) }}" class="card-img-top" alt="{{ $film->judul }}" style="height: 300px; object-fit: cover;">
                <div class="card-body">
                    <h5 class="card-title">{{ $film->judul }}</h5>
                    <p class="card-text">
                        <strong>Genre:</strong> {{ $film->genre }}<br>
                        <strong>Tahun:</strong> {{ $film->tahun }}
                    </p>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endsection 