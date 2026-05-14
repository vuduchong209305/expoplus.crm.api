@extends('admin.layout')
@section('title', 'Danh sách')
@section('content')

<div class="card">
    <div class="card-header">
        <h5 class="card-title mb-0">Danh sách khách hàng</h5>
    </div>
    <div class="card-body">
        <form action="">
            <div class="row g-3">

                <div class="col-md-5">
                    <label class="form-label">Ban tổ chức</label>
                    <select name="organizer_id" id="organizer" class="form-control">
                        <option value="">Tất cả</option>
                        @if(!empty($organizers))
                            @foreach($organizers as $organizer)
                                <option value="{{ $organizer->id ?? null }}" {{ request('organizer_id') == $organizer->id ? 'selected' : null }}>
                                    {{ $organizer->name ?? null }}
                                </option>
                            @endforeach
                        @endif
                    </select>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Từ khóa</label>
                    <div class="input-wrapper input-group input-group-merge">
                        <input type="text" class="form-control" placeholder="Nhập từ khóa" name="q" value="{{ request('q') }}">
                        <button class="btn btn-success waves-effect" type="submit"><i class="ti ti-search"></i></button>
                    </div>
                </div>

            </div>
        </form>

    </div>
</div>

<div class="row">
 
    <div class="col-md-12">
        <div class="card">
            
            <div class="card-body">

                {{ !empty($customers) ? vdh_paginate($customers, $customers->total()) : null }}

                <div class="table-responsive">
                    <table class="table table-hover table-vcenter table-bordered table-striped" id="datatable" width="100%">
                        <thead>
                            <tr>
                                <th class="text-center" width="5%">
                                    <input type="checkbox" class="form-check-input checkall">
                                </th>
                                <th width="5%">Avatar</th>
                                <th width="15%">Họ tên</th>
                                <th width="15%">Số điện thoại</th>
                                <th width="40%">Ban tổ chức</th>
                                <th width="10%">Phụ trách</th>
                                <th width="10%">Trạng thái</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(!empty($customers) && count($customers) > 0) 
                            @foreach($customers as $key => $val)
                            <tr>
                                <td class="text-center">
                                    <input type="checkbox" class="form-check-input checkbox_id" value="{{ $val->id ?? null }}">
                                </td>

                                <td>
                                    <a href='{{ viewImage($val->avatar) ?? no_image() }}' data-fancybox='gallery'>
                                        <img src="{{ viewImage($val->avatar) ?? no_image() }}" class="rounded" width="100%" alt="{{ $val->fullname ?? null }}">
                                    </a>
                                </td>

                                <td>
                                    <a href="{{ route('customer.create', ['id' => $val->id]) }}" title="{{ $val->fullname ?? null }}">{{ $val->fullname ?? null }}</a>
                                </td>

                                                                <td>
                                    <a href="{{ route('customer.create', ['id' => $val->id]) }}" title="{{ $val->phone ?? null }}">{{ $val->phone ?? null }}</a>
                                </td>

                                <td>
                                    <a href="{{ route('organizer.create', ['id' => $val->organizer->id]) }}" title="{{ $val->organizer->name ?? null }}">{{ $val->organizer->name ?? null }}</a>
                                </td>

                                <td>
                                    <a href="{{ route('organizer.user.create', ['id' => $val->assigned->id]) }}" title="{{ $val->assigned->fullname ?? null }}">{{ $val->assigned->fullname ?? null }}</a>
                                    
                                </td>

                                <td>
                                    <span class='badge fw-semibold rounded-pill {{ $val->type_id == 1 ? 'bg-warning-subtle text-warning' : 'bg-success-subtle text-success' }}'>{{ $val->type->name ?? null }}</span>
                                    
                                </td>
                            </tr>
                            @endforeach
                            @endif
                        </tbody>
                    </table>
                </div>
                
                {{ !empty($customers) ? vdh_paginate($customers, $customers->total()) : null }}

            </div>
        </div>
    </div>

</div>

@endsection