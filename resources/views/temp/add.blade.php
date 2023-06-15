@extends('layouts.master')

@section('title')
    DEPARTMENT | Testing
@endsection

@section('content')
<form action="/testing" method="POST" enctype="multipart/form-data">
    {{ csrf_field() }}
<div class="modal-body">
  <div class="form-group">
      @foreach ($cadetcrses as $cadetcrse)
    <div class="form-group m-2 t-2" style='display:inline-block; width: 20%; border-bottom:1px solid #D2691E;'>
    <label for="recipient-name" class="col-form-label">afpsn</label>
    <input type="text" name="afpsn[]" class="form-control" readonly="" value="{{ $cadetcrse->afpsn }}" id="recipient-name">
  </div>
  <div class="form-group m-2 t-2" style='display:inline-block; width: 20%; border-bottom:1px solid #D2691E;'>
    <label for="recipient-name" class="col-form-label">ccode</label>
    <input type="text" name="ccode[]" class="form-control" readonly="" value="{{ $cadetcrse->ccode }}" id="recipient-name">
  </div>
  <div class="form-group m-2 t-2" style='display:inline-block; width: 40%; border-bottom:1px solid #D2691E;'>
    <label for="message-text" class="col-form-label">term</label>
    <input type="text" name="term[]" class="form-control" value="{{ $cadetcrse->term }}" id="recipient-name">
  </div>
  @endforeach
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">CLOSE</button>
<button type="submit" class="btn btn-primary">SAVE</button>
</div>
</form>
@endsection

@section('scripts')
@endsection
