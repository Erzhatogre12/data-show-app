@extends('layouts.app')

@section('content')
    <div class="col-md-2">
        <a href="{{ route('show2') }}" class="btn btn-danger">
            Back
        </a>
    </div>

    <div class="d-flex justify-content-center mb-3">
        <h1>Edit Data</h1>
    </div>

    <div class="row">
        @foreach ($variabels as $variabel)
            <form action="{{ route('update', ['id' => $variabel->id]) }}" method="post">
                @csrf
                @method('PUT')

                <div class="d-flex justify-content-center">

                    <div class="col-md-3">
                        <p>{{ $variabel->nama_variabel }}</p>
                    </div>

                    <div class="ps-3">
                        <input type="text" name="nilai" value="{{ $variabel->nilai }}" class="form-control mb-2"
                            required>
                    </div>
                    <div class="ps-3">
                        <button type="submit" class="btn btn-success">Update Record</button>
                    </div>
                </div>
            </form>
            <hr>
        @endforeach
    </div>
@endsection
