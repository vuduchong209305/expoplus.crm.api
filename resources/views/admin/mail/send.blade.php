@extends('admin.layout')
@section('title', 'Gửi mail')
@section('content')

<form action="#" id="formSendMail" method="post">
    <div class="row">

        <div class="col-md-3">
            <div class="card">
                <div class="card-body">

                    <div class="form-group mb-3">
                        <label class="form-label" for="title">Tài khoản <span class="text-danger">*</span></label>
                        <select name="emails[]" class="form-control select2" multiple="" data-placeholder="Chọn email" required>
                        	<option value=""></option>
                        	@if(!empty($users) && $users->count() > 0)
	                        	@foreach($users as $user)
	                        		<option value="{{ $user->email ?? null }}">{{ $user->email ?? null }}</option>
	                        	@endforeach
                        	@endif
                        </select>
                    </div>

                    <button type='submit' class='btn btn-primary me-2'>Gửi mail</button>
                </div>
            </div>
        </div>

        <div class="col-md-9">

            <div class="card">
                <div class="card-body">

                	<div class="form-group mb-3">
                		<label class="form-label" for="subject">Tiêu đề <span class="text-danger">*</span></label>
                    	<input type="text" class="form-control" name="subject" placeholder="Tiêu đề" required>
                   	</div>

                	<div class="form-group">
                		<label class="form-label" for="content">Nội dung <span class="text-danger">*</span></label>
                    	<textarea name="content" id="content" class="form-control ckeditor" rows="30" placeholder="Nội dung" required></textarea>
                   	</div>
                </div>
            </div>
            
        </div>
        
    </div>
</form>

@push('scripts')
<script>
	$('#formSendMail').submit(function(e){
		e.preventDefault()

		for (instance in CKEDITOR.instances) {
	        CKEDITOR.instances[instance].updateElement();
	    }
	    
		let data = $(this).serialize()

		$.ajax({
			url: '{{ route('mail.send') }}',
			method: 'POST',
			data: data,
			success(res) {
				if(res.status) {
					toastr.success(res.message);
				} else {
					toastr.error(res.message);
				}
			},
			error(err) {
				console.log(err)
			}
		})
	});
</script>
@endpush

@endsection