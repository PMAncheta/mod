@extends('layouts.master')

@section('title')
    Users | Testing
@endsection

@section('content')

<div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title">Roles</h4>
                @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                 @endif
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                    <thead class=" text-primary">
                      <th>Name </th>
                      <th>Phone</th>
                      <th>Email</th>
                      <th>Usertype</th>
                      <th>EDIT </th>
                      <th>DELETE </th>
                    </thead>
                    <tbody>
                        @foreach ($users as $row)
                      <tr>
                        <td>{{ $row->name }}</td>
                        <td>{{ $row->phone }}</td>
                        <td>{{ $row->email }}</td>
                        <td>{{ $row->usertype }}</td>
                        <td>
                            <a href="/role-edit/{{ $row->id }}" class="btn btn-success">EDIT</a>
                        </td>
                        <td>
                            <form action="/role-delete/{{$row->id }}" method="post">
                                {{ csrf_field() }}
                                {{ method_field('DELETE') }}
                            <button type="submit" class="btn btn-danger">DELETE</a>
                            </form>
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
