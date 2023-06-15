@extends('layouts.master')

@section('title')
    DEPARTMENT | Testing
@endsection

@section('content')
<form action="{{ url('/section-saved') }}" method="POST" enctype="multipart/form-data">
    {{ csrf_field() }}
    {{ method_field('PUT') }}
<div class="modal-body">
  <div class="form-group">
    <div class="form-group">
        <label for="recipient-name" class="col-form-label"></label>
    </div>
    <div class="modal-body">
        <div class="form-group">
            {{--<div class="form-group" style='border-bottom:1px solid #00008B;'>
                <label for="recipient-name" class="col-form-label"> THE YEAR IS: {{$year}}</label>
                <label for="recipient-name" class="col-form-label float-right"> NUMBER OF ROWS:</label>
                    <input type="text" name="year" class="form-control" id="recipient-name" value="INPUT A YEAR">
            </div>--}}
    <div style='display:inline-block; width: 70%; border-bottom:1px solid #030399;'>
        <label for="recipient-name" class="col-form-label">TERM:</label>
        <input type="text" class="form-control" name="term" id="recipient-name">
    </div>
    <div style='display:inline-block; width: 70%; border-bottom:1px solid #030399;'>
        <label for="recipient-name" class="col-form-label">YEAR:</label>
        <input type="text" class="form-control" name="year" id="recipient-name">
    </div>
  </div>
</div>
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
