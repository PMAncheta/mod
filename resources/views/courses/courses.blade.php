@extends('layouts.master')

@section('title')
    DEPARTMENT | Testing
@endsection

@section('content')
<div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <h4 class="card-title">COURSES TABLE</h4>
          <a href="/add-course" class="btn btn-primary">ADD</a>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table">
              <thead class=" text-primary">
                <th>CCODE </th>
                <th>CNAME</th>
                <th>DESCRIPTION</th>
                <th>UNITS</th>
                <th>DEPARTMENT ID</th>
                <th>EDIT</th>
              </thead>
               <tbody>
                  @foreach ($course as $data)
                    <tr>
                        <td>{{ $data->ccode }} </td>
                        <td>{{ $data->cname }} </td>
                        <td>{{ $data->description }} </td>
                        <td>{{ $data->units }} </td>
                        <td>{{ $data->department->id }} </td>
                    <td>
                        <a href="{{ url('edit-course/'.$data->id) }}" class="badge btn-primary">EDIT</a>
                        <a href="" class="badge btn-danger">DELETE</a>
                    </td>
                 </tr>
                 @endforeach
                </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
</div>
@endsection

@section('scripts')
@endsection
