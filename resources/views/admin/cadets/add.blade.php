@extends('layouts.master')

@section('title')
    Cadets | Testing
@endsection

@section('content')
<form action="/save-cadet" method="POST" enctype="multipart/form-data">
    {{ csrf_field() }}
<div class="modal-body">
  <div class="form-group pt-4">
    <h4 class="card-title">***Use down key to scroll***</h4>
    <label for="recipient-name" class="col-form-label">AFPSN</label>
    <input type="text" name="afpsn" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">SERVID</label>
    <select name="servid" class="form-control">
        <option value="R">ARMY</option>
        <option value="V">NAVY</option>
        <option value="F">AIR FORCE</option>
    </select>
  </div>
  <div class="form-group">
    <label for="message-text" class="col-form-label">MAJID</label>
    <input type="text" name="majid" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">YRGR</label>
    <input type="text" name="yrgr" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">OYRGR</label>
    <input type="text" name="oyrgr" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">LNAME</label>
    <input type="text" name="lname" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">FNAME</label>
    <input type="text" name="fname" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">ANAME</label>
    <input type="text" name="aname" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">MNAME</label>
    <input type="text" name="mname" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">INITLS</label>
    <input type="text" name="initls" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">GENDER</label>
    <input type="text" name="gender" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">BDATE</label>
    <input type="text" name="bdate" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">BPLACE</label>
    <input type="text" name="bplace" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">PAPA</label>
    <input type="text" name="papa" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">PADEAD</label>
    <input type="text" name="padead" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">MAMA</label>
    <input type="text" name="mama" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">MADEAD</label>
    <input type="text" name="madead" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">GUARDIAN</label>
    <input type="text" name="guardian" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">ADDR1</label>
    <input type="text" name="addr1" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">ADDR2</label>
    <input type="text" name="addr2" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">ZIPCODE</label>
    <input type="text" name="zipcode" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">REGION</label>
    <input type="text" name="region" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">HIGHSCH</label>
    <input type="text" name="highsch" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">HEIGHT</label>
    <input type="text" name="height" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">EESCORE</label>
    <input type="text" name="eescore" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">MATH</label>
    <input type="text" name="math" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">ENGL</label>
    <input type="text" name="engl" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">SPMA</label>
    <input type="text" name="spma" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">COY</label>
    <input type="text" name="coy" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">BATTALION</label>
    <input type="text" name="battalion" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">BATTALION2</label>
    <input type="text" name="battalion2" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">CSTAT</label>
    <input type="text" name="cstat" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">REMARKS</label>
    <input type="text" name="remarks" class="form-control" id="recipient-name">
  </div>
  <!--<div class="form-group">
    <label for="recipient-name" class="col-form-label">PIX</label>
    <input type="file" name="pix" class="form-control">
      <img src="{{ asset('uploads/profile/') }}"  class="w-75" alt="">
  </div>-->
  <div class="form-group">
    <input type="file" name="pix" class="custom-file-input">
    <label for="recipient-name" class="col-form-input">PIX</label>
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">DATEGRAD</label>
    <input type="text" name="dategrad" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">DEGREE</label>
    <input type="text" name="Degree" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">GRADUATE</label>
    <input type="text" name="graduate" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">PASSWORD</label>
    <input type="text" name="password" class="form-control" id="recipient-name">
  </div>
  <div class="form-group">
    <label for="recipient-name" class="col-form-label">COYBAT</label>
    <input type="text" name="coyBat" class="form-control" id="recipient-name">
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
