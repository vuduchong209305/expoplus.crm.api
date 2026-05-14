@extends('admin.layout')
@section('title', 'Danh sách')
@section('content')

<div class="card">
    <div class="card-header">
        <h5 class="card-title mb-0">Hoạt động gửi mail</h5>
    </div>
    <div class="card-body">

        <div class="table-responsive text-nowrap">
            <table class="table table-striped table-hover" width="100%">
                <thead>
                    <tr>
                        <th width="50%">Người nhận</th>
                        <th width="20%">Thời gian</th>
                        <th width="20%">Trạng thái</th>
                        <th width="10%">#</th>
                    </tr>
                </thead>
                <tbody>
                    @if(!empty($data) && count($data) > 0) 
                        @foreach($data as $key => $val)
                        <tr>
                            <td>
                                <p class="mb-0">{{ $val['to'] ?? null }}</p>
                                <span class="text-muted">{{ $val['subject'] ?? null }}</span>
                            </td>
                            <td>
                                {{ $val['datesent'] ?? null }}
                            </td>
                            <td>
                                {{ $val['status'] ?? null }}
                            </td>
                            <td>
                                <a href="{{ route('mail.detail', ['id' => $val['msgid']]) }}" class="btn btn-icon btn-sm bg-primary-subtle">
                                    <i class="ti ti-eye text-primary fs-14"></i>
                                </a>
                            </td>
                        </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
    </div>
</div>

@push('scripts')
<script>
    document.addEventListener('DOMContentLoaded', function () {

        new Sortable(document.querySelector('.sortable-wrapper'), {
            animation: 150,
            handle: '.drag-handle',
            onEnd: function () {
                updateOrder();
            }
        });

        function updateOrder() {
            let orders = [];

            document.querySelectorAll('.sortable-wrapper tr').forEach((tr, index) => {
                orders.push({
                    id: tr.dataset.id,
                    order: index + 1
                });
            });

            $.ajax({
                url: "{{ route('product.category_product.sort') }}",
                method: "POST",
                data: { orders },
                success(res) {
                    toastr.success(res.message);
                },
                error(err) {
                    toastr.error(res.message);
                }
            })
        }
    });
</script>
@endpush

@endsection