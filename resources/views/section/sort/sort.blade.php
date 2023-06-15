@extends('layouts.master')

@section('title')
    DEPARTMENT | Testing
@endsection

@section('content')
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
            <div class="form-group">
                <label class="text-center d-flex justify-content-center"> SORT BY COY AND NAME: </label>
            <a href="/sort-section" class="btn btn-primary d-flex justify-content-center">UPDATE SECTIONS</a><br>
            </div>
            <div class="form-group">
                <label class="text-center d-flex justify-content-center"> SORT BY SERVID AND NAME: </label>
            <a href="/sort-serv" class="btn btn-primary d-flex justify-content-center">SET SECTIONS</a><br>
            </div>
            <div class="form-group">
                <label class="text-center d-flex justify-content-center"> SORT BY COY AND NAME: </label>
            <a href="/sort-section" class="btn btn-primary d-flex justify-content-center">SORT SECTIONS</a>
            </div>
    </div>
</div>
</div>
</div>
@endsection

@section('scripts')
@endsection
