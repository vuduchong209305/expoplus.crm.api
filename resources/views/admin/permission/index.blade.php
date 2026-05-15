@extends('admin.layout')
@section('title', 'Phân quyền')
@section('content')

<div class="card border-0 mb-4">
    <div class="card-body d-flex justify-content-between align-items-center">
        <div>
            <h5 class="mb-1">Danh sách phân quyền trong Ban Tổ Chức</h5>
            <p class="text-muted mb-0"> Quản lý tên hiển thị và nhóm chức năng </p>
        </div>
        <div class="text-end">
            <span class="badge bg-primary-subtle text-primary px-3 py-2">
                {{ count($data) }} quyền </span>
        </div>
    </div>
</div>
<form action="{{ route('organizer.permission.store') }}" method="POST"> @csrf <div class="card border-0 shadow-sm">
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table align-middle table-hover mb-0">
                    <thead class="table-light">
                        <tr>
                            <th width="35%" class="ps-4"> KEY </th>
                            <th width="35%"> TÊN HIỂN THỊ </th>
                            <th width="30%"> NHÓM </th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($data as $item)
                            <tr>
                                <!-- KEY -->
                                <td class="ps-4">
                                    <div class="fw-semibold text-dark">
                                        {{ $item->key }}
                                    </div>
                                    <div class="small text-muted"> Route permission key </div>
                                </td>
                                <!-- TITLE -->
                                <td>
                                    <input type="text" name="permissions[{{ $item->id }}][title]" class="form-control" value="{{ $item->title }}" placeholder="Ví dụ: Danh sách khách hàng">
                                </td>
                                <!-- GROUP -->
                                <td>
                                    <input type="text" name="permissions[{{ $item->id }}][group]" class="form-control" value="{{ $item->group }}" placeholder="customer">
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="4" class="text-center py-5 text-muted"> Không có dữ liệu </td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
        <div class="card-footer bg-white d-flex justify-content-end">
            <button type="submit" class="btn btn-primary px-4">
                <i class="ti ti-device-floppy me-1"></i> Lưu thay đổi </button>
        </div>
    </div>
</form>

@endsection