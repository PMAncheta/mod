@extends('layouts.master')

@section('title')
    DEPARTMENT | Testing
@endsection

@section('content')
<form action="{{ url('update-course/'.$course->id) }}" method="POST" enctype="multipart/form-data">
    {{ csrf_field() }}
    {{ method_field('PUT') }}
<div class="modal-body">
  <div class="form-group">
    <div class="form-group">
        <label for="recipient-name" class="col-form-label"></label>
    </div>
    <div class="form-group">
        <label for="recipient-name" class="col-form-label">DEPTCODE</label>
        <select name="departments_id" class="form-control">
            @foreach($department as $data)
            <option value="{{ $data->id }}">{{ $data->dept_desc }}</option>
               @endforeach
        </select>
      </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">CCODE</label>
    <input type="text" name="ccode" class="form-control" value="{{ $course->ccode }}" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="message-text" class="col-form-label">CNAME</label>
    <input type="text" name="cname" class="form-control" value="{{ $course->cname }}" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="message-text" class="col-form-label">DESCRIPTION</label>
    <input type="text" name="description" class="form-control" value="{{ $course->description }}" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="message-text" class="col-form-label">UNITS</label>
    <input type="text" name="units" class="form-control" value="{{ $course->units }}" id="recipient-name">
  </div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">CLOSE</button>
<button type="submit" class="btn btn-primary">SAVE</button>
</div>
</form>
@endsection

@section('scripts')
@endsection
