<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Event;

class EventController extends Controller
{
    public function index(Request $request)
    {
        $start = \Carbon\Carbon::parse($request->start);
        $end = \Carbon\Carbon::parse($request->end);

        $events = Event::whereBetween('start_time', [
                            $start,
                            $end
                        ])->get();

        return sendResponse($events);
    }

    public function detail(Request $request)
    {
        $event = Event::findOrFail($request->id);
        return sendResponse($event, 'Chi tiết sự kiện');
    }

    public function store(Request $request)
    {
        $event = Event::create([
            'title' => $request->title,
            'type' => $request->type,
            'start_time' => $request->start_time,
            'end_time' => $request->end_time ?? $request->start_time,
            'customer_id' => $request->customer_id ?? null,
            'user_id' => auth('api')->id(),
            'location' => $request->location,
            'note' => $request->note
        ]);

        return sendResponse($event, 'Tạo lịch thành công');
    }

    public function update(Request $request)
    {
        $event = Event::findOrFail($request->id);

        $event->update([
            'title' => $request->title,
            'type' => $request->type,
            'start_time' => $request->start_time,
            'end_time' => $request->end_time ?? $request->start_time,
            'location' => $request->location,
            'note' => $request->note
        ]);

        return sendResponse($event, 'Cập nhật thành công');
    }

    public function updateTime(Request $request)
    {
        $event = Event::find($request->id);

        $start = \Carbon\Carbon::parse($request->start);
        $end = \Carbon\Carbon::parse($request->end);

        $event->update([
            'start_time' => $start,
            'end_time' => $end
        ]);

        return sendResponse($event);
    }
}
