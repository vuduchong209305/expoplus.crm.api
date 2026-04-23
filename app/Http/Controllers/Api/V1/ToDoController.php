<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ToDo;

class ToDoController extends Controller
{
    public function index()
    {
        $todos = ToDo::users()->paginate();
        return sendResponse($todos);
    }

    public function store(Request $request)
    {
        $todo = ToDo::create([
            'title' => $request->title,
            'user_id' => auth('api')->id(),
            'organizer_id' => auth('api')->user()->organizer_id
        ]);

        return sendResponse($todo, 'Thêm task thành công');
    }

    public function completed(Request $request)
    {
        $todo = ToDo::users()->find($request->id);

        if(!empty($todo->completed_at)) {
            $todo->update(['status' => 'pending', 'completed_at' => null]);
        } else {
            $todo->update(['status' => 'completed', 'completed_at' => now()]);
        }

        return sendResponse($todo, 'Cập nhật thành công');
    }

    public function update(Request $request)
    {
        $form = $request->form;

        $todo = ToDo::users()->findOrFail($form['id']);
        $todo->title = $form['title'];
        $todo->priority = $form['priority'];
        $todo->status = $form['status'];
        $todo->due_date = $form['due_date'];
        $todo->description = $form['description'];
        $todo->note = $form['note'];

        if($form['status'] == 'completed') {
            $todo->completed_at = now();
        } else {
            $todo->completed_at = null;
        }

        $todo->save();

        return sendResponse($todo, 'Cập nhật thành công');
    }

    public function detail(Request $request)
    {
        $todo = ToDo::users()->findOrFail($request->id);
        return sendResponse($todo);
    }

    public function delete(Request $request)
    {
        $todo = ToDo::users()->findOrFail($request->id);

        $todo->delete();

        return sendResponse($todo, "Xóa thành công " . $todo->title ?? null);
    }

    public function bookmark(Request $request)
    {
        $todo = ToDo::users()->findOrFail($request->id);

        if(!empty($todo->bookmark)) {
            $todo->update(['bookmark' => null]);
        } else {
            $todo->update(['bookmark' => 1]);
        }

        $todo->save();

        return sendResponse($todo, 'Cập nhật ' . $todo->title ?? null);
    }

    public function sort(Request $request)
    {
        $todos = $request->tasks;

        foreach ($todos as $todo) {
           ToDo::users()->where('id', $todo['id'])->update(['order' => $todo['order']]);
        }

        return sendResponse($todos, 'Cập nhật thứ tự thành công');
    }
}
