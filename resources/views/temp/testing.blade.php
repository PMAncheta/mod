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
          <a href="/add-testing" class="btn btn-primary">ADD</a>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table">
              <thead class=" text-primary">
                <th>AFPSN </th>
                <th>CCODE</th>
                <th>TERM</th>
                <th>ACADYR</th>
                <th>SEC</th>
                <th>EDIT</th>
              </thead>
               <tbody>
                 @foreach ($cadetcrses as $cadetcrse)
                    <tr>
                        <td>{{ $cadetcrse->afpsn }} </td>
                        <td>{{ $cadetcrse->ccode }} </td>
                        <td>{{ $cadetcrse->term }} </td>
                        <td>{{ $cadetcrse->acadyr }} </td>
                        <td>{{ $cadetcrse->sec }} </td>
                    <td>
                        <a href="{{ url('/edit-department') }}" class="badge btn-primary">EDIT</a>
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
