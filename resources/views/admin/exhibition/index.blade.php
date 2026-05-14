@extends('admin.layout')
@section('title', 'Danh sách')
@section('content')

<div class="card">

    <div class="card-header">
        <h5 class="card-title mb-0">Danh sách Triển lãm</h5>
    </div>

    <div class="card-body">
        <form action="">
            <div class="row">

                <div class="col-md-3">
                    <div class="form-group">
                        <select name="status" class="form-select select2">
                            <option value=""></option>
                            <option value="1" {{ request('status') == 1 ? 'selected' : null }}>Active</option>
                            <option value="0" {{ request('status') === '0' ? 'selected' : null }}>Lock</option>
                        </select>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="form-group">
                        <div class="input-wrapper input-group input-group-merge">
                            <input type="text" class="form-control" placeholder="Tìm kiếm" name="q" value="{{ request('q') }}">
                            <button class="btn btn-success" type="submit"><i class="ti ti-search"></i></button>
                        </div>
                    </div>
                </div>

            </div>
        </form>

    </div>
</div>

<div class="card">

    <div class="card-header">
        <div class="d-flex flex-row justify-content-between align-items-center">
            <a class="btn btn-sm btn-secondary" href="{{ route('exhibition.create') }}">Thêm mới&nbsp;&nbsp;<i class="ti ti-circle-plus"></i></a>
            <a class="btn btn-sm btn-outline-danger btn_del_multi" href="javascript:;"><i class="ti ti-trash"></i>&nbsp;&nbsp;Xóa</a>
            <input type="hidden" id="url" value="{{ route('exhibition.delete') }}" >
        </div>
    </div>

    <div class="card-body">
        
        {{ !empty($data) ? vdh_paginate($data, $data->total()) : null }}

        <div class="table-responsive">
            <table class="table table-hover table-vcenter table-bordered table-striped" width="100%">
                <thead>
                    <tr>
                        <th class="text-center" width="5%">
                            <input type="checkbox" class="form-check-input checkall">
                        </th>
                        <th width="10%">Logo</th>
                        <th width="20%">Tên triển lãm</th>
                        <th width="55%">Ban tổ chức</th>
                        <th width="10%">#</th>
                    </tr>
                </thead>
                <tbody class="sortable-wrapper">
                    @if(!empty($data)) 
                        @foreach($data as $key => $val)
                        <tr>
                            <td class="text-center">
                                <input type="checkbox" class="checkbox_id" value="{{ empty($val->id) ? '' : $val->id }}">
                            </td>
                            <td>
                                <a href='{{ viewImage($val->logo) ?? no_image() }}' data-fancybox='gallery'>
                                    <img src="{{ viewImage($val->logo) ?? no_image() }}" alt="{{ $val->title ?? null }}" title="{{ $val->title ?? null }}" width="100%">
                                </a>
                            </td>

                            <td>
                                <a href="{{ route('exhibition.create', ['id' => $val->id]) }}" title="{{ $val->title ?? null }}">{{ $val->title ?? null }}</a>
                            </td>

                            <td>
                                <a href="{{ route('organizer.create', ['id' => $val->organizer->id]) }}" title="{{ $val->organizer->name ?? null }}">{{ $val->organizer->name ?? null }}</a>
                            </td>

                            <td>
                                {{ vdh_label_button(route('exhibition.create', ['id' => $val->id]), route('exhibition.delete', ['id' => $val->id])) }}
                            </td>
                        </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
        
        {{ !empty($data) ? vdh_paginate($data, $data->total()) : null }}

    </div>
</div>

@endsection