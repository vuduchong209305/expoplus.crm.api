<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Task;
use App\Models\Campaign;
use App\Models\Customer;

class ReportController extends Controller
{
    public function task(Request $request)
    {
        $user = auth('api')->user();

        // TASK
        $tasks = Task::where(['organizer_id' => $user->organizer_id, 'assigned_to' => $user->id]);

        $task_total = (clone $tasks)->count();

        $task_completed = (clone $tasks)
            ->where('progress', 100)
            ->count();

        $task_processing = (clone $tasks)
            ->whereBetween('progress', [1, 99])
            ->count();

        $task_pending = (clone $tasks)
            ->where('progress', 0)
            ->count();

        $task_overdue = (clone $tasks)
            ->whereDate('end_date', '<', now())
            ->where('progress', '<', 100)
            ->count();

        // hiệu suất
        $success_rate = $task_total > 0
            ? round(($task_completed / $task_total) * 100)
            : 0;

        // CAMPAIGN
        $campaign = Campaign::where(['organizer_id' => $user->organizer_id, 'assigned_to' => $user->id]);

        $campaign_total = (clone $campaign)->count();

        $campaign_completed = (clone $campaign)
            ->where('is_complete', 1)
            ->count();

        $campaign_pending = (clone $campaign)
            ->where('is_complete', 0)
            ->count();

        return sendResponse([
            'task_total' => $task_total,
            'task_completed' => $task_completed,
            'task_processing' => $task_processing,
            'task_pending' => $task_pending,
            'task_overdue' => $task_overdue,
            'success_rate' => $success_rate,

            'campaign_total' => $campaign_total,
            'campaign_completed' => $campaign_completed,
            'campaign_pending' => $campaign_pending,
        ]);
    }

    public function customer(Request $request)
    {
        $user = auth('api')->user();

        $customers = Customer::where(['organizer_id' => $user->organizer_id, 'assigned_to' => $user->id]);

        $customer_total = (clone $customers)->count();

        $customer_lead = (clone $customers)
            ->where('type_id', 1)
            ->count();

        $customer_contact = (clone $customers)
            ->where('type_id', 2)
            ->count();

        return sendResponse([
            'customer_total' => $customer_total,
            'customer_lead' => $customer_lead,
            'customer_contact' => $customer_contact,
        ]);
    }
}