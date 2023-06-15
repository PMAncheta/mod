@extends('layouts.master')

@section('title')
    DEPARTMENT | Testing
@endsection

@section('content')
<div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <h4 class="card-title">SECTION TABLE</h4>
         <form action="{{ url('/section-add') }}" method="POST" enctype="multipart/form-data">
            {{ csrf_field() }}
            {{ method_field('PUT') }}
            <button type="submit" class="btn btn-primary">ADD CADETS</button>
            {{--<a href="/update-section" class="btn btn-primary">UPDATE SECTIONS</a>--}}
            {{--<a href="/update-section" class="btn btn-primary">UPDATE SECTIONS</a>--}}
            <a href="/set-section" class="btn btn-primary">SET COY</a>
            <a href="/sort-servid" class="btn btn-primary">SET SERVID</a>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table">
              <thead class=" text-primary">
                <th>ID</th>
                <th>AFPNSN</th>
                <th>LNAME</th>
                <th>FNAME</th>
                <th>MNAME</th>
                <th>YRGR</th>
                <th>COY</th>
                <th>SERVID</th>
                <th>TERM</th>
                <th>ACADYR</th>
                <th>SEC</th>
                <th>EDIT</th>
              </thead>
               <tbody>
                 @foreach ($cadet as $data)
                    <tr>
                        <td>{{ $data->id }} </td>
                        <td>{{ $data->afpsn }} </td>
                        <td>{{ $data->lname }} </td>
                        <td>{{ $data->fname }} </td>
                        <td>{{ $data->mname }} </td>
                        <td>{{ $data->yrgr }} </td>
                        <td>{{ $data->coy }} </td>
                        <td>{{ $data->servid }} </td>
                        <td>{{ $data->term }} </td>
                        <td>{{ $data->acadyr }} </td>
                        <td>{{ $data->sec }} </td>
                        <td>
                            <a href="{{ url('edit-section/'.$data->id) }}" class="badge btn-primary">EDIT</a>
                            <a href="" class="badge btn-danger">DELETE</a>
                    <td>
                        {{-- <a href="{{ url('edit-department/'.$data->id) }}" class="badge btn-primary">EDIT</a>
                        <a href="" class="badge btn-danger">DELETE</a> --}}
                    </td>
                 </tr>
                 @endforeach
                </tbody>
            </table>
          </div>
        </div>
    </form>
</div>
      </div>
    </div>
</div>
@endsection
