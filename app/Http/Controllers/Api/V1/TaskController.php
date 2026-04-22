<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Task;

class TaskController extends Controller
{
    public function index(Request $request)
    {
        $tasks = Task::with('user')->orderBy('order')->get();
        return sendResponse($tasks);
    }

    public function store(Request $request)
    {
        if(empty($request->title)) return sendError('Tên công việc bắt buộc');

        $task = Task::create([
            'title' => $request->title,
            'start_date' => $request->start_date,
            'end_date' => $request->end_date,
            'assigned_to' => $request->assigned_to
        ]);

        return sendResponse($task, 'Thêm công việc thành công');
    }

    public function completed(Request $request)
    {
        $task = Task::find($request->id);

        if(!empty($task->completed_at)) {
            $task->update(['progress' => 0, 'completed_at' => null]);
        } else {
            $task->update(['progress' => 100, 'completed_at' => now()]);
        }

        return sendResponse($task, 'Cập nhật thành công');
    }

    public function update(Request $request)
    {
        $form = $request->form;

        $task = Task::findOrFail($form['id']);
        $task->title = $form['title'];
        $task->start_date = $form['start_date'];
        $task->end_date = $form['end_date'];
        $task->progress = $form['progress'];
        $task->assigned_to = $form['assigned_to'];
        $task->note = $form['note'];
        $task->completed_at = $form['completed_at'];

        $task->save();

        return sendResponse($task, 'Cập nhật thành công');
    }

    public function detail(Request $request)
    {
        $task = Task::findOrFail($request->id);
        return sendResponse($task);
    }

    public function delete(Request $request)
    {
        $task = Task::findOrFail($request->id);

        $task->delete();

        return sendResponse($task, "Xóa thành công " . $task->title ?? null);
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
