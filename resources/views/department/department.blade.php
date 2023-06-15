@extends('layouts.master')

@section('title')
    DEPARTMENT | Testing
@endsection

@section('content')
<div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <h4 class="card-title">DEPARTMENT TABLE</h4>
          <a href="/add-department" class="btn btn-primary">ADD</a>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table">
              <thead class=" text-primary">
                <th>DEPTCODE </th>
                <th>DEPT_DESC</th>
                <th>DEPT_INITLS</th>
                <th>EDIT</th>
              </thead>
               <tbody>
                 @foreach ($department as $data)
                    <tr>
                        <td>{{ $data->deptcode }} </td>
                        <td>{{ $data->dept_desc }} </td>
                        <td>{{ $data->dept_intls }} </td>
                    <td>
                        <a href="{{ url('edit-department/'.$data->id) }}" class="badge btn-primary">EDIT</a>
                        <a href="" class="badge btn-danger">DELETE</a>
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
