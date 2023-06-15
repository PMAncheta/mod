@extends('layouts.master')

@section('title')
    DEPARTMENT | Testing
@endsection

@section('content')
<div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <h4 class="card-title">CADETCRSE TABLE</h4>
          <a href="/add-cadetcrse" class="btn btn-primary">ADD</a>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table">
              <thead class=" text-primary">
                <th>TERM </th>
                <th>ACADYR</th>
                <th>CLASS</th>
                <th>CCODE</th>
                <th>AFPNSN</th>
                <th>EDIT</th>
              </thead>
               <tbody>
                   @foreach ($cadetcrse as $data)
                    <tr>
                        <td>{{ $data->term }} </td>
                        <td>{{ $data->acadyr }} </td>
                        <td>{{ $data->class }} </td>
                        <td>{{ $data->course->id }} </td>
                        <td>{{ $data->cadet->id }} </td>
                    <td>
                        <a href="{{ url('edit-cadetcrse/'.$data->id) }}" class="badge btn-primary">EDIT</a>
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
