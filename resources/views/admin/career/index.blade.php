@extends('admin.layout')
@section('title', 'Danh sách')
@section('content')

<div class="card">

    <div class="card-header">
        <h5 class="card-title mb-0">Ngành nghề lĩnh vực</h5>
    </div>

    <div class="card-body">

        <form action="{{ route('career.index') }}">
            <div class="row">

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

<div class="row">
 
    <div class="col-md-3">
        <div class="card">

            <div class="card-body">

                <form action="{{ route('career.store') }}" method="post" enctype="multipart/form-data">

                    @csrf

                    <h4>
                        @if(request('id')) 
                            Cập nhật

                            @method('PUT')
                            <input type="hidden" name="id" value="{{ request('id') }}">
                        @else
                            Thêm mới
                        @endif
                    </h4>
                        
                    <div class="form-group mb-3">
                        <label class="form-label" for="title">Tên <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="title" name="title" placeholder="Tên lĩnh vực *" required="" autofocus="" value="{{ !empty($career->title) ? $career->title : old('title') }}">
                    </div>

                    {{ vdh_button_form() }}

                </form>

            </div>
        </div>
    </div>

    <div class="col-md-9">
        <div class="card">
            <div class="card-header">
                <div class="d-flex flex-row justify-content-between align-items-center">
                    <a class="btn btn-sm btn-outline-danger btn_del_multi" href="javascript:;"><i class="ti ti-trash"></i>&nbsp;&nbsp;Xóa</a>
                    <input type="hidden" id="url" value="{{ route('career.delete') }}" >
                </div>
            </div>
            <div class="card-body">

                {{ !empty($data) ? vdh_paginate($data, $data->total()) : null }}

                <table class="table table-hover table-vcenter table-bordered table-striped" id="datatable" width="100%">
                    <thead>
                        <tr>
                            <th class="text-center" width="5%">
                                <input type="checkbox" class="form-check-input checkall">
                            </th>
                            <th width="95%">Tên</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if(isset($data) && count($data) > 0) 
                        @foreach($data as $key => $val)
                        <tr>
                            <td class="text-center">
                                <input type="checkbox" class="form-check-input checkbox_id" value="{{ $val->id ?? null }}">
                            </td>
                            <td>
                                <a href="{{ route('career.index', ['id' => $val->id]) }}">{{ $val->title ?? null }}</a>
                            </td>
                        </tr>
                        @endforeach
                        @endif
                    </tbody>
                </table>

                {{ !empty($data) ? vdh_paginate($data, $data->total()) : null }}

            </div>
        </div>
    </div>

</div>

@endsection