@extends('admin.layout')
@section('content')

<div class="card">

    <div class="card-body">
        <form action="{{ route('exhibition.store') }}" method="post" enctype="multipart/form-data">

            @csrf

            @if(request('id')) 
                @method('PUT')
                <input type="hidden" name="id" value="{{ request('id') }}">
            @endif

            <div class="row g-3">

                <div class="col-md-12">
                    <label class="form-label" for="avatar">Logo</label>
                    {{ vdh_upload_avatar(!empty($exhibition->logo) ? $exhibition->logo : old('logo'), 'logo') }}
                </div>
            
                <div class="col-md-6">
                    <label class="form-label" for="title">Tên triển lãm <span class="text-danger">(*)</span></label>
                    <input type="text" class="form-control" id="title" name="title" placeholder="Tên triển lãm (*)" autofocus="" required value="{{ !empty($exhibition->title) ? $exhibition->title : old('title') }}">
                </div>
                
                <div class="col-md-6">
                    <label class="form-label" for="organizer_id">Ban tổ chức <span class="text-danger">(*)</span></label>
                    <select name="organizer_id" id="organizer_id" class="form-select">
                        <option value="">Chọn chức vụ</option>
                        @foreach($organizers as $organizer)
                        <option value="{{ $organizer->id ?? null }}" {{ !empty($exhibition->organizer_id) && $exhibition->organizer_id == $organizer->id ? 'selected' : null }}>{{ $organizer->name ?? null }}</option>
                        @endforeach
                    </select>
                </div>

            </div>

            {{ vdh_button_form() }}
            
        </form>
    </div>

</div>

@endsection