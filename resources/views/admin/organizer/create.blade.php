@extends('admin.layout')
@section('title', 'Thêm mới')
@section('content')

<div class="card">

    <form class="card-body" action="{{ route('organizer.store') }}" method="post" enctype="multipart/form-data">

        @csrf

        @if(request('id')) 
            @method('PUT')
            <input type="hidden" name="id" value="{{ request('id') }}">
        @endif

        <div class="row g-3">

            <div class="col-md-6">
                <label class="form-label" for="name">Tên</label>
                <input type="text" class="form-control" name="name" placeholder="Họ tên" autofocus="" value="{{ !empty($organizer->name) ? $organizer->name : old('name') }}">
            </div>

            <div class="col-md-6">
                <label class="form-label" for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Email" autofocus="" value="{{ !empty($organizer->email) ? $organizer->email : old('email') }}">
            </div>
            
            <div class="col-md-6">
                <label class="form-label" for="phone">Phone</label>
                <input type="text" class="form-control" name="phone" placeholder="Số điện thoại" autofocus="" value="{{ !empty($organizer->phone) ? $organizer->phone : old('phone') }}">
            </div>

            <div class="col-md-6">
                <label class="form-label" for="address">Address</label>
                <input type="text" class="form-control" name="address" placeholder="Địa chỉ" autofocus="" value="{{ !empty($organizer->address) ? $organizer->address : old('address') }}">
            </div>

            <div class="col-md-6">
                <label class="form-label">Logo</label>
                {{ vdh_upload_ckfinder(!empty($organizer->avatar) ? $organizer->avatar : old('avatar')) }}
            </div>

            <div class="col-md-6">
                {{ vdh_input_status(!empty($organizer->status) ? $organizer->status : old('status')) }}
            </div>

        </div>
        {{ vdh_button_form() }}
    </form>

</div>
@endsection