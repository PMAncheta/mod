<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Department;

class DepartmentController extends Controller
{
    public function index()
    {
        $department = Department::all();
        return view('department.department')->with('department', $department);
    }

    public function add()
    {
        $department = Department::all();
        return view('department.add')->with('department', $department);
    }

    public function store(Request $request)
    {
        $department = new Department;

        $department->deptcode = $request->input('deptcode');
        $department->dept_desc = $request->input('dept_desc');
        $department->dept_intls = $request->input('dept_intls');

        $department->save();
        return redirect('/department')->with('status', 'Data Added for Cadet');
    }

    public function edit($id)
    {
        $department = Department::findOrFail($id);

        return view('department.edit')->with('department', $department);
    }

    public function update(Request $request, $id)
    {
        $department = Department::find($id);
        $department->deptcode = $request->input('deptcode');
        $department->dept_desc = $request->input('dept_desc');
        $department->dept_intls = $request->input('dept_intls');

        $department->update();
        return redirect('/department')->with('status', 'DATA has been updated!');
    }
}
