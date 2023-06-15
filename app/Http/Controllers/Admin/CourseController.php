<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Course;
use App\Department;

class CourseController extends Controller
{
    public function index()
    {
        $course = Course::all();
        return view('courses.courses')->with('course', $course);
    }

    public function add()
    {
        $course = Course::all();
        $department = Department::all();
        return view('courses.add')->with('course', $course)->with('department', $department);
    }

    public function store(Request $request)
    {
        $course = new Course();
        $course->departments_id = $request->input('departments_id');
        $course->ccode = $request->input('ccode');
        $course->cname = $request->input('cname');
        $course->description = $request->input('description');
        $course->units = $request->input('units');

        $course->save();
        return redirect('/courses')->with('status', 'Data is added');
    }

    public function edit($id)
    {
        $course = Course::findOrFail($id);
        $department = Department::all();

        return view('courses.edit')->with('course', $course)->with('department', $department);
    }

    public function update(Request $request, $id)
    {
        $course = Course::find($id);
        $course->departments_id = $request->input('departments_id');
        $course->ccode = $request->input('ccode');
        $course->cname = $request->input('cname');
        $course->description = $request->input('description');
        $course->units = $request->input('units');

        $course->update();
        return redirect('/courses')->with('status', 'DATA has been updated!');
    }

}
