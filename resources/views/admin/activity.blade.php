@extends('admin.layout') 
@section('title', 'Activity') 
@section('content')
	
<div class="card">

    <div class="card-header">
        <h5 class="card-title mb-0">Lịch sử hệ thống</h5>
    </div>

    <div class="card-body">
    	{{ !empty($data) ? vdh_paginate($data, $data->total()) : null }}
        <div class="table-responsive text-nowrap">
            <table class="table table-hover table-vcenter table-bordered table-striped" width="100%">
                <thead>
                    <tr>
                    	<th width="5%">ID</th>
                        <th width="45%">Hành động</th>
                        <th width="20%">Tài khoản thực hiện</th>
                        <th width="10%">Phân loại</th>
                        <th width="10%">Địa chỉ IP</th>
                        <th width="10%">Thời gian</th>
                    </tr>
                </thead>
                <tbody>
                    @if(!empty($data) && count($data) > 0) 
                        @foreach($data as $key => $val)
                        <tr>
                        	<td>
                                {{ $val->id ?? null }}
                            </td>
                            <td>
                                {{ $val->content ?? null }}
                            </td>
                            <td>
                                @if($val->type == 'user')
                                    {{ $val->user->email ?? null }}
                                @else
                                    {{ $val->organizer->email ?? null }}
                                @endif
                            </td>
                            <td>
                                {{ $val->type ?? null }}
                            </td>
                            <td>
                                {{ $val->ip_address ?? null }}
                            </td>
                            <td>
                                <small>{{ $val->created_at ?? null }}</small>
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