@extends('layouts.master')

@section('title')
    DEPARTMENT | Testing
@endsection

@section('content')
<form action="{{ url('update-section/'.$sections->id) }}" method="POST" enctype="multipart/form-data">
    {{ csrf_field() }}
    {{ method_field('PUT') }}
<div class="modal-body">
  <div class="form-group">
    <div class="form-group">
    </div>
    <div class="form-group">
        <label for="recipient-name" class="col-form-label">SECTION</label>
        <input type="text" name="sec" class="form-control"  value="{{ $sections->sec }}" id="recipient-name">
      </div>
    <label for="recipient-name" class="col-form-label">SECRANK</label>
    <input type="text" name="secrank" class="form-control" value="{{ $sections->secrank }}" id="recipient-name"  readonly="readonly">
  </div>
  <div class="form-group">
    <label for="message-text" class="col-form-label">AFPSN</label>
    <input type="text" name="afpsn" class="form-control"  value="{{ $sections->afpsn }}" id="recipient-name"  readonly="readonly">
  </div>
  <div class="form-group">
    <label for="message-text" class="col-form-label">SERVID</label>
    <input type="text" name="servid" class="form-control"  value="{{ $sections->servid }}" id="recipient-name"  readonly="readonly">
  </div>
  <div class="form-group">
    <label for="message-text" class="col-form-label">YRGR</label>
    <input type="text" name="yrgr" class="form-control"  value="{{ $sections->yrgr }}" id="recipient-name"  readonly="readonly">
  </div>
  <div class="form-group">
    <label for="message-text" class="col-form-label">COY</label>
    <input type="text" name="coy" class="form-control"  value="{{ $sections->coy }}" id="recipient-name"  readonly="readonly">
  </div>
  <div class="form-group">
    <label for="message-text" class="col-form-label">TERM</label>
    <input type="text" name="term" class="form-control"  value="{{ $sections->term }}" id="recipient-name"  readonly="readonly">
  </div>
  <div class="form-group">
    <label for="message-text" class="col-form-label">ACADYR</label>
    <input type="text" name="acadyr" class="form-control"  value="{{ $sections->acadyr }}" id="recipient-name"  readonly="readonly">
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
