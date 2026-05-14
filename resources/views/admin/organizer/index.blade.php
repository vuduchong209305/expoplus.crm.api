@extends('admin.layout')
@section('title', 'Danh sách')
@section('content')

<div class="card">
    <div class="card-header">
        <h5 class="card-title mb-0">Danh sách Ban tổ chức</h5>
    </div>
    <div class="card-body">

        <form action="">
            <div class="row">

                <div class="col-md-3">
                    <label for="q" class="form-label">Tìm kiếm</label>
                    <div class="input-group">
                        <input type="text" id="q" name="q" placeholder="Email, họ tên, điện thoại" value="{{ request('q') }}" class="form-control">
                        <button type="submit" class="btn btn-success"><i class="ti ti-search"></i></button>
                    </div>
                </div>

            </div>
        </form>

    </div>
</div>

<div class="card">
    <div class="card-header">
        <div class="d-flex flex-row justify-content-between align-items-center">
            <a class="btn btn-sm btn-secondary" href="{{ route('organizer.create') }}">Thêm mới&nbsp;&nbsp;<i class="ti ti-circle-plus"></i></a>
            <a class="btn btn-sm btn-outline-danger btn_del_multi" href="javascript:;"><i class="ti ti-trash"></i>&nbsp;&nbsp;Xóa</a>
            <input type="hidden" id="url" value="{{ route('organizer.delete') }}" >
        </div>
    </div>
    <div class="card-body">

        @php !empty($organizers) ? vdh_paginate($organizers, $organizers->total()) : null @endphp

        <div class="table-responsive text-nowrap text-break">
            <table class="table table-hover table-vcenter table-striped table-borderless table-centered">
                <thead class="text-muted table-light">
                    <tr>
                        <th class="text-center" width="5%">
                            <input type="checkbox" class="form-check-input checkall">
                        </th>
                        <th width="5%">Logo</th>
                        <th width="70%">Thông tin</th>
                        <th width="10%">Trạng thái</th>
                        <th width="10%">#</th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                    @if(!empty($organizers)) 
                        @foreach($organizers as $key => $val)
                        <tr>
                            <td class="text-center">
                                <input type="checkbox" class="form-check-input checkbox_id" value="{{ $val->id ?? null }}">
                            </td>
                            <td>
                                <img src="{{ empty($val->avatar) ? no_image() : asset($val->avatar) }}" alt="{{ $val->email ?? null }}" title="{{ $val->email ?? null }}" width="100%" class="rounded">
                            </td>
                            <td>
                                <p class='mb-0'>{{ $val->name ?? null }}</p>
                                <p class='mb-0 text-muted'>{{ $val->email ?? null }}</p>
                                <p class='text-muted'>{{ $val->phone ?? null }}</p>
                            </td>
                            <td>
                                {!! vdh_status($val->status) !!}
                            </td>
                            <td>
                                {{ vdh_label_button(route('organizer.create', ['id' => $val->id]), route('organizer.delete', ['id' => $val->id])) }}
                            </td>
                        </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>

        @php !empty($organizers) ? vdh_paginate($organizers, $organizers->total()) : null @endphp
    </div>
</div>

@endsection