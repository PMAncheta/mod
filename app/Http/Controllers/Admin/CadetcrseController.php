<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Course;
use App\Cadetcrse;
use App\Models\Cadets;

class CadetcrseController extends Controller
{
    public function index()
    {
        $cadetcrse = Cadetcrse::all();
        return view('cadetcrse.cadetcrse')->with('cadetcrse', $cadetcrse);
    }

    public function add()
    {
        $cadetcrse = Cadetcrse::all();
        $cadet = Cadets::all();
        $course = Course::all();
        return view('cadetcrse.add')->with('course', $course)
        ->with('cadetcrse', $cadetcrse)
        ->with('cadet', $cadet);
    }

    public function store(Request $request)
    {
        $cadetcrse = new Cadetcrse();
        $cadetcrse->courses_id = $request->input('courses_id');
        $cadetcrse->cadets_id = $request->input('cadets_id');
        $cadetcrse->term = $request->input('term');
        $cadetcrse->acadyr = $request->input('acadyr');
        $cadetcrse->class = $request->input('class');

        $cadetcrse->save();
        return redirect('/cadetcrse')->with('status', 'Data is added');
    }

    public function edit($id)
    {
        $cadetcrse = Cadetcrse::findOrFail($id);
        $cadet = Cadets::all();
        $course = Course::all();

        return view('cadetcrse.edit')->with('course', $course)
        ->with('cadetcrse', $cadetcrse)
        ->with('cadet', $cadet);
    }

    public function update(Request $request, $id)
    {
        $cadetcrse = Cadetcrse::find($id);
        $cadetcrse->courses_id = $request->input('courses_id');
        $cadetcrse->cadets_id = $request->input('cadets_id');
        $cadetcrse->term = $request->input('term');
        $cadetcrse->acadyr = $request->input('acadyr');
        $cadetcrse->class = $request->input('class');

        $cadetcrse->update();
        return redirect('/cadetcrse')->with('status', 'DATA has been updated!');
    }
}
