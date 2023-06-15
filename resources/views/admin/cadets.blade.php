@extends('layouts.master')

@section('title')
    Cadets | Testing
@endsection

@section('content')
<div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <h4 class="card-title">CADET TABLE
              ***PRESS DOWN KEY TO SCROLL***
          </h4>
          <a href="/add-cadet" class="btn btn-primary">ADD</a>

        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table">
              <thead class=" text-primary">
                <th>ID</th>
                <th>AFPSN </th>
                <th>SERVID</th>
                <th>MAJID</th>
                <th>YRGR </th>
                <th>OYRGR </th>
                <th>LNAME</th>
                <th>FNAME</th>
                <th>ANAME </th>
                <th>MNAME</th>
                <th>INITLS</th>
                <th>GENDER</th>
                <th>BDATE </th>
                <th>BPLACE </th>
                <th>PAPA</th>
                <th>PADEAD</th>
                <th>MAMA </th>
                <th>MADEAD </th>
                <th>GUARDIAN</th>
                <th>ADDR1</th>
                <th>ADDR2 </th>
                <th>ZIPCODE </th>
                <th>REGION</th>
                <th>HIGHSCH</th>
                <th>HEIGHT </th>
                <th>EESCORE </th>
                <th>MATH</th>
                <th>ENGL</th>
                <th>SPMA </th>
                <th>COY </th>
                <th>BATTALION</th>
                <th>BATTALION2</th>
                <th>CSTAT </th>
                <th>REMARKS </th>
                <th>PIX</th>
                <th>DATEGRAD</th>
                <th>DEGREE </th>
                <th>GRADUATE </th>
                <th>PASSWORD</th>
                <th>COYBAT</th>
                <th>EDIT</th>
              </thead>
              <tbody>
                @foreach ($cadet as $data)
                <tr>
                    <td>{{ $data-> id }}</td>
                    <td>{{ $data-> afpsn }}</td>
                    <td>{{ $data-> servid }}</td>
                    <td>{{ $data-> majid }}</td>
                    <td>{{ $data-> yrgr }}</td>
                    <td>{{ $data-> oyrgr }}</td>
                    <td>{{ $data-> lname }}</td>
                    <td>{{ $data-> fname }}</td>
                    <td>{{ $data-> aname }}</td>
                    <td>{{ $data-> mname }}</td>
                    <td>{{ $data-> initls }}</td>
                    <td>{{ $data-> gender }}</td>
                    <td>{{ $data-> bdate }}</td>
                    <td>{{ $data-> bplace }}</td>
                    <td>{{ $data-> papa }}</td>
                    <td>{{ $data-> papadead }}</td>
                    <td>{{ $data-> mama }}</td>
                    <td>{{ $data-> madead }}</td>
                    <td>{{ $data-> guardian }}</td>
                    <td>{{ $data-> addr1 }}</td>
                    <td>{{ $data-> addr2 }}</td>
                    <td>{{ $data-> zipcode }}</td>
                    <td>{{ $data-> region }}</td>
                    <td>{{ $data-> highsch }}</td>
                    <td>{{ $data-> height }}</td>
                    <td>{{ $data-> eescore }}</td>
                    <td>{{ $data-> math }}</td>
                    <td>{{ $data-> engl }}</td>
                    <td>{{ $data-> spma }}</td>
                    <td>{{ $data-> coy }}</td>
                    <td>{{ $data-> battalion }}</td>
                    <td>{{ $data-> battalion2 }}</td>
                    <td>{{ $data-> cstat }}</td>
                    <td>{{ $data-> remarks }}</td>
                    <td><img src="{{ asset('uploads/profile/' . $data->pix) }}" alt="image">
                        <!--{{ $data-> PIX }}--></td>
                    <td>{{ $data-> dategrad }}</td>
                    <td>{{ $data-> degree }}</td>
                    <td>{{ $data-> graduate }}</td>
                    <td>{{ $data-> password }}</td>
                    <td>{{ $data-> coyBat }}</td>
                    <td>
                        <a href="{{ url('edit-cadet/'.$data->id) }}" class="badge btn-primary">EDIT</a>
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
