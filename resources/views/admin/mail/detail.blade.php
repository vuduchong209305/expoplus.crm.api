@extends('admin.layout')
@section('title', 'Detail')
@section('content')

<div class="card">
    
    <!-- Header -->
    <div class="card-header">
        <h5 class="mb-0">Chi tiết Email Log</h5>
    </div>

    <div class="card-body">

        <div class="mb-3">
            <label class="text-muted form-label">From</label>
            <p>{{ $data['from'] ?? '-' }}</p>
        </div>

        <div class="mb-3">
            <label class="text-muted form-label">Subject</label>
            <p>{{ $data['subject'] ?? '-' }}</p>
        </div>

        <div class="mb-3">
            <label class="text-muted form-label">Nội dung Email</label>
            <p>{!! $data['body'] ?? '<i>Không có nội dung</i>' !!}</p>
        </div>

    </div>

    <!-- Footer -->
    <div class="card-footer text-end">
        <a href="{{ url()->previous() }}" class="btn btn-secondary">
            ← Quay lại
        </a>
    </div>

</div>


@endsection