<?php
namespace App\Http\Controllers;

use App\Models\Reviewer;
use Illuminate\Http\Request;

class ReviewerController extends Controller
{
    public function index()
    {
        $reviewers = Reviewer::orderBy('id', 'desc')->get();
        return view('reviewers.index', compact('reviewers'));
    }

    public function create()
    {
        return view('reviewers.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required|max:100',
            'email' => 'required|email|max:100|unique:reviewers,email',
            'catatan' => 'nullable',
        ]);
        Reviewer::create($request->all());
        return redirect()->route('reviewers.index')->with('success', 'Reviewer berhasil ditambahkan');
    }

    public function edit(Reviewer $reviewer)
    {
        return view('reviewers.edit', compact('reviewer'));
    }

    public function update(Request $request, Reviewer $reviewer)
    {
        $request->validate([
            'nama' => 'required|max:100',
            'email' => 'required|email|max:100|unique:reviewers,email,'.$reviewer->id,
            'catatan' => 'nullable',
        ]);
        $reviewer->update($request->all());
        return redirect()->route('reviewers.index')->with('success', 'Reviewer berhasil diupdate');
    }

    public function destroy(Reviewer $reviewer)
    {
        $reviewer->delete();
        return redirect()->route('reviewers.index')->with('success', 'Reviewer berhasil dihapus');
    }
} 