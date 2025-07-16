<?php
namespace App\Http\Controllers;

use App\Models\Film;
use Illuminate\Http\Request;

class FilmController extends Controller
{
    public function index(Request $request)
    {
        $query = Film::query();
        if ($request->has('search')) {
            $query->where('judul', 'like', '%'.$request->search.'%')
                  ->orWhere('genre', 'like', '%'.$request->search.'%')
                  ->orWhere('tahun', 'like', '%'.$request->search.'%');
        }
        $films = $query->orderBy('id', 'desc')->get();
        return view('films.index', compact('films'));
    }

    public function create()
    {
        return view('films.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'judul' => 'required|string|max:255',
            'genre' => 'required|string|max:100',
            'tahun' => 'required|integer',
            'poster' => 'required|image|mimes:jpeg,png,jpg,gif,webp|max:2048',
        ]);

        $posterPath = $request->file('poster')->store('posters', 'public');

        Film::create([
            'judul' => $request->judul,
            'genre' => $request->genre,
            'tahun' => $request->tahun,
            'poster' => $posterPath,
        ]);

        return redirect()->route('films.index')->with('success', 'Film berhasil ditambahkan!');
    }

    public function edit(Film $film)
    {
        return view('films.edit', compact('film'));
    }

    public function update(Request $request, Film $film)
    {
        $request->validate([
            'judul' => 'required|max:100',
            'genre' => 'required|max:50',
            'tahun' => 'required|integer',
            'sinopsis' => 'nullable',
        ]);
        $film->update($request->all());
        return redirect()->route('films.index')->with('success', 'Film berhasil diupdate');
    }

    public function destroy(Film $film)
    {
        $film->delete();
        return redirect()->route('films.index')->with('success', 'Film berhasil dihapus');
    }
} 