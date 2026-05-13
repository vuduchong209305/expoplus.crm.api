<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Permission;
use Route;

class SyncPermission extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'permission:sync';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Sync Permission';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $routes = Route::getRoutes();

        foreach ($routes as $route) {

            $routeMiddleware = $route->gatherMiddleware();

            if (!in_array('permission', $routeMiddleware)) {
                continue;
            }

            $name = $route->getName();

            if (!$name) {
                continue;
            }

            Permission::firstOrCreate([
                'key' => $name
            ], [
                'title' => $name,
                'group' => explode('.', $name)[0]
            ]);
        }

        $this->info('Permission synced');
    }
}
