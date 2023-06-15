@extends('layouts.master')

@section('title')
    DEPARTMENT | Testing
@endsection

@section('content')
<form action="{{ url('update-cadetcrse/'.$cadetcrse->id) }}" method="POST" enctype="multipart/form-data">
    {{ csrf_field() }}
    {{ method_field('PUT') }}
<div class="modal-body">
  <div class="form-group">
    <div class="form-group">
        <label for="recipient-name" class="col-form-label"></label>
    </div>
   <div class="form-group">
        <label for="recipient-name" class="col-form-label">CCODE</label>
        <select name="courses_id" class="form-control">
               @foreach($course as $data)
                <option value="{{ $data->id }}">{{ $data->ccode }}</option>
               @endforeach
        </select>
      </div>
      <div class="form-group">
        <label for="recipient-name" class="col-form-label">AFPNSN</label>
        <select name="cadets_id" class="form-control">
            @foreach($cadet as $data)
                <option value="{{ $data->id }}">{{ $data->afpsn }}</option>
               @endforeach
        </select>
      </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">TERM</label>
    <input type="text" name="term" class="form-control" value="{{ $cadetcrse->term }}" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="message-text" class="col-form-label">ACADYR</label>
    <input type="text" name="acadyr" class="form-control" value="{{ $cadetcrse->acadyr }}" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="message-text" class="col-form-label">CLASS</label>
    <input type="text" name="class" class="form-control" value="{{ $cadetcrse->class }}" id="recipient-name">
  </div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">CLOSE</button>
<button type="submit" class="btn btn-primary">SAVE</button>
</div>
</form>
@endsection

@section('scripts')
@endsection
