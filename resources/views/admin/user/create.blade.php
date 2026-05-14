@extends('admin.layout')
@section('title', 'Danh sách')
@section('content')

<div class="card">

    <div class="card-body">
        <form action="{{ route('organizer.user.store') }}" method="post" enctype="multipart/form-data">

            @csrf

            @if(request('id')) 
                @method('PUT')
                <input type="hidden" name="id" value="{{ request('id') }}">
            @endif

            <div class="row g-3">

                <div class="col-md-6">
                    <label class="form-label" for="avatar">Avatar</label>
                    {{ vdh_upload_avatar(!empty($user->avatar) ? $user->avatar : old('avatar')) }}
                </div>
                
                <div class="col-md-6">
                    {{ vdh_input_status(!empty($user->status) ? $user->status : old('status')) }}
                </div>

                <div class="col-md-6">
                    <label class="form-label" for="email">Email <span class="text-danger">(*)</span></label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email (*)" autofocus="" required value="{{ !empty($user->email) ? $user->email : old('email') }}">
                </div>
                <div class="col-md-6">
                    <label class="form-label" for="fullname">Họ & tên <span class="text-danger">(*)</span></label>
                    <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Họ & tên (*)" required value="{{ !empty($user->fullname) ? $user->fullname : old('fullname') }}">
                </div>
                
                <div class="col-md-6">
                    <label class="form-label" for="organizer_id">Ban tổ chức <span class="text-danger">(*)</span></label>
                    <select name="organizer_id" id="organizer_id" class="form-select">
                        <option value="">Lựa chọn</option>
                        @foreach($organizers as $organizer)
                        <option value="{{ $organizer->id ?? null }}" {{ !empty($user->organizer_id) && $user->organizer_id == $organizer->id ? 'selected' : null }}>{{ $organizer->name ?? null }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="col-md-6">
                    <label class="form-label" for="phone">Số điện thoại</label>
                    <input type="text" class="form-control" id="phone" name="phone" placeholder="Số điện thoại" value="{{ !empty($user->phone) ? $user->phone : old('phone') }}">
                </div>

                <div class="col-md-6">
                    <div class="form-group mb-3">
                        <label class="form-label" for="is_admin">Chỉ định là ADMIN</label>
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox" id="is_admin" name="is_admin" value="1" {{ old('is_admin', $user->is_admin ?? 0) ? 'checked' : '' }} >
                            <label class="form-check-label" for="is_admin">Kích hoạt</label>
                        </div>
                    </div>
                </div>
            </div>

            <hr>

            <i><small>Khởi tạo: {{ $user->created_at ?? null }}</small></i><br>
            <i><small>Cập nhật: {{ $user->updated_at ?? null }}</small></i>
            
            {{ vdh_button_form() }}
            
        </form>
    </div>

</div>

@endsection