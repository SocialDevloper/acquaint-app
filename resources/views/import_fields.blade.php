@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
<form class="form-horizontal" method="POST" action="{{ route('import_process') }}">
    {{ csrf_field() }}

    <input type="hidden" name="csv_data_file_id" value="{{ $csv_data_file->id }}" />
    <table class="table">
        @foreach ($csv_data as $row)
            <tr>
            @foreach ($row as $key => $value)
                <td>{{ $value }}</td>
            @endforeach
            </tr>
        @endforeach
    </table>

    <button type="submit" class="btn btn-primary">
        Import Data
    </button>
</form>
</div>
</div>
@endsection