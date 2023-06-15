@extends('layouts.master')

@section('title')
    DEPARTMENT | Testing
@endsection

@section('content')
<form action="/save-department" method="POST" enctype="multipart/form-data">
    {{ csrf_field() }}
<div class="modal-body">
  <div class="form-group">
    <div class="form-group">
        <label for="recipient-name" class="col-form-label"></label>
    </div>
    <label for="recipient-name" class="col-form-label">DEPTCODE</label>
    <input type="text" name="deptcode" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">DEPT DESC</label>
    <input type="text" name="dept_desc" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="message-text" class="col-form-label">DEPT INTLS</label>
    <input type="text" name="dept_intls" class="form-control" id="recipient-name">
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
