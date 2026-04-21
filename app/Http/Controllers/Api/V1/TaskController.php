<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Task;

class TaskController extends Controller
{
    public function index()
    {
        $tasks = Task::organizer()->orderByDesc('order')->paginate();
        return sendResponse($tasks);
    }

    public function store(Request $request)
    {
        $task = Task::create([
            'title' => $request->title,
            'user_id' => auth('api')->id(),
            'organizer_id' => auth('api')->user()->organizer_id
        ]);

        return sendResponse($task, 'Thêm task thành công');
    }

    public function completed(Request $request)
    {
        $task = Task::organizer()->find($request->id);

        if(!empty($task->completed_at)) {
            $task->update(['status' => 'pending', 'completed_at' => null]);
        } else {
            $task->update(['status' => 'completed', 'completed_at' => now()]);
        }

        return sendResponse($task, 'Cập nhật thành công');
    }

    public function update(Request $request)
    {
        $form = $request->form;

        $task = Task::organizer()->findOrFail($form['id']);
        $task->title = $form['title'];
        $task->priority = $form['priority'];
        $task->status = $form['status'];
        $task->due_date = $form['due_date'];
        $task->description = $form['description'];
        $task->note = $form['note'];

        if($form['status'] == 'completed') {
            $task->completed_at = now();
        } else {
            $task->completed_at = null;
        }

        $task->save();

        return sendResponse($task, 'Cập nhật thành công');
    }

    public function detail(Request $request)
    {
        $task = Task::organizer()->findOrFail($request->id);
        return sendResponse($task);
    }

    public function delete(Request $request)
    {
        $task = Task::organizer()->findOrFail($request->id);

        $task->delete();

        return sendResponse($task, "Xóa thành công " . $task->title ?? null);
    }

    public function bookmark(Request $request)
    {
        $task = Task::organizer()->findOrFail($request->id);

        if(!empty($task->bookmark)) {
            $task->update(['bookmark' => null]);
        } else {
            $task->update(['bookmark' => 1]);
        }

        $task->save();

        return sendResponse($task, 'Cập nhật ' . $task->title ?? null);
    }

    public function sort(Request $request)
    {
        $tasks = $request->tasks;

        foreach ($tasks as $task) {
           Task::where('id', $task['id'])->update(['order' => $task['order']]);
        }

        return sendResponse($tasks, 'Cập nhật thứ tự thành công');
    }
}
