<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class TestingController extends Controller
{
    public function index(Request $request)
    {
        $year = $request->input('year');
        $cadetcrses = DB::select("SELECT cadetcrses.acadyr, cadets.afpsn,
        cadetcrses.term, cadets.yrgr, sections.sec, courses.ccode FROM cadetcrses
        FULL OUTER JOIN cadets ON cadets.id = cadetcrses.cadets_id
        FULL OUTER JOIN sections ON sections.id = cadetcrses.sections_id
        FULL OUTER JOIN courses ON courses.id = cadetcrses.courses_id");

        return view('temp.testing')->with('cadetcrses', $cadetcrses);
    }

    public function add()
    {
        /*$cadetcrses = DB::select("SELECT cadetcrses.acadyr, cadets.afpsn,
        cadetcrses.term, cadets.yrgr, sections.sec, courses.ccode FROM cadetcrses
        FULL OUTER JOIN cadets ON cadets.id = cadetcrses.cadets_id
        FULL OUTER JOIN sections ON sections.id = cadetcrses.sections_id
        FULL OUTER JOIN courses ON courses.id = cadetcrses.courses_id");

        return view('temp.add')->with('cadetcrses', $cadetcrses);*/
    }
    public function update(Request $request)
    {
        $afpsn = $request->afpsn;
        $ccode = $request->ccode;
        $term = $request->term;

        for($i=0; $i<=count($afpsn); $i++)
        {

        $save = array(
            'ccode'=>$ccode[$i],
            'afpsn'=>$afpsn[$i],
            'term'=>$term[$i],
        );

        DB::table('cadetcrses')
        ->leftjoin('cadets', 'cadetcrses.cadets_id', '=', 'cadets.id')
        ->leftjoin('sections', 'cadetcrses.sections_id', '=', 'sections.id')
        ->leftjoin('courses', 'cadetcrses.courses_id', '=', 'courses.id')
        ->insert($save);
        }
        return redirect('/testing');
    }
}
