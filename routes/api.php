<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\File;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::group(['prefix' => 'v1', 'namespace' => 'Api\V1'], function() {
	Route::post('login', 'AuthController@login');

	Route::middleware(['auth:api'])->group(function () {
        Route::get('me', 'AuthController@me');
        Route::get('refresh', 'AuthController@refresh');
        Route::post('logout', 'AuthController@logout');

        Route::middleware(['permission'])->group(function () {
            
            Route::prefix('user')
                    ->as('user.')
                    ->controller(UserController::class)
                    ->group(function () {
                        Route::get('', 'index')->name('index');
                        Route::get('edit', 'edit')->name('edit');
                        Route::post('save', 'save')->name('save');
                        Route::post('updateProfile', 'updateProfile')->name('updateProfile');
                        Route::post('delete', 'delete')->name('delete');
                        Route::get('roles', 'roles')->name('roles');
                    });

            Route::prefix('role')
                    ->as('role.')
                    ->controller(RoleController::class)
                    ->group(function () {
                        Route::get('', 'index')->name('index');
                        Route::get('edit', 'edit')->name('edit');
                        Route::post('save', 'save')->name('save');
                        Route::post('delete', 'delete')->name('delete');
                    });

            Route::prefix('todo')
                    ->as('todo.')
                    ->controller(ToDoController::class)
                    ->group(function () {
                        Route::get('', 'index')->name('index');
                        Route::get('detail', 'detail')->name('detail');
                        Route::post('store', 'store')->name('store');
                        Route::post('update', 'update')->name('update');
                        Route::post('delete', 'delete')->name('delete');
                        Route::post('completed', 'completed')->name('completed');
                        Route::post('bookmark', 'bookmark')->name('bookmark');
                        Route::post('sort', 'sort')->name('sort');
                    });

            Route::prefix('event')
                    ->as('event.')
                    ->controller(EventController::class)
                    ->group(function () {
                        Route::get('', 'index')->name('index');
                        Route::get('detail', 'detail')->name('detail');
                        Route::post('store', 'store')->name('store');
                        Route::post('update', 'update')->name('update');
                        Route::post('update-time', 'updateTime')->name('updateTime');
                        Route::post('delete', 'delete')->name('delete');
                    });

            Route::prefix('customer')
                    ->as('customer.')
                    ->controller(CustomerController::class)
                    ->group(function () {
                        Route::post('', 'index')->name('index');
                        Route::get('view', 'view')->name('view');
                        Route::post('store', 'store')->name('store');
                        Route::post('update', 'update')->name('update');
                        Route::get('source', 'source')->name('source');
                        Route::post('bookmark', 'bookmark')->name('bookmark');
                        Route::post('delete', 'delete')->name('delete');
                        Route::post('avatar', 'avatar')->name('avatar');
                        Route::post('comment', 'comment')->name('comment.store');
                        Route::get('comment', 'listComment')->name('comment.index');
                        Route::get('activityLogs', 'activityLogs')->name('activity.logs');
                        Route::post('assignedTo', 'assignedTo')->name('assigned');
                    });

            Route::prefix('customer-group')
                    ->as('customer-group.')
                    ->controller(CustomerGroupController::class)
                    ->group(function () {
                        Route::get('', 'index')->name('index');
                        Route::get('detail', 'detail')->name('detail');
                        Route::post('save', 'save')->name('save');
                        Route::get('list', 'list')->name('list');
                        Route::post('assign', 'assign')->name('assign');
                    });

            Route::prefix('campaign')
                    ->as('campaign.')
                    ->controller(CampaignController::class)
                    ->group(function () {
                        Route::get('', 'index')->name('index');
                        Route::get('detail', 'detail')->name('detail');
                        Route::get('edit', 'edit')->name('edit');
                        Route::post('save', 'save')->name('save');
                        Route::get('list', 'list')->name('list');
                        Route::post('assign', 'assign')->name('assign');
                        Route::post('delete', 'delete')->name('delete');
                        Route::post('deleteCustomer', 'deleteCustomer')->name('deleteCustomer');
                        Route::post('customer', 'customer')->name('customer');
                        Route::get('customer-group', 'customerGroup')->name('customerGroup');
                        Route::post('update-customer', 'updateCustomer')->name('updateCustomer');
                        Route::post('report', 'report')->name('report');
                        Route::post('assignedTo', 'assignedTo')->name('assigned');
                    });

            Route::prefix('task')
                    ->as('task.')
                    ->controller(TaskController::class)
                    ->group(function () {
                        Route::get('', 'index')->name('index');
                        Route::get('detail', 'detail')->name('detail');
                        Route::post('store', 'store')->name('store');
                        Route::post('update', 'update')->name('update');
                        Route::post('delete', 'delete')->name('delete');
                        Route::post('completed', 'completed')->name('completed');
                        Route::post('bookmark', 'bookmark')->name('bookmark');
                        Route::post('sort', 'sort')->name('sort');
                    });

            Route::prefix('product')
                    ->as('product.')
                    ->controller(ProductController::class)
                    ->group(function () {
                        Route::get('', 'index')->name('index');
                        Route::get('edit', 'edit')->name('edit');
                        Route::post('save', 'save')->name('save');
                        Route::post('delete', 'delete')->name('delete');
                    });

            Route::prefix('quotation')
                    ->as('quotation.')
                    ->controller(QuotationController::class)
                    ->group(function () {
                        Route::get('', 'index')->name('index');
                        Route::get('edit', 'edit')->name('edit');
                        Route::post('save', 'save')->name('save');
                        Route::post('delete', 'delete')->name('delete');
                        Route::post('export', 'export')->name('export');
                    });

            Route::prefix('exhibition')
                    ->as('exhibition.')
                    ->controller(ExhibitionController::class)
                    ->group(function () {
                        Route::get('', 'index')->name('index');
                        Route::get('edit', 'edit')->name('edit');
                        Route::post('save', 'save')->name('save');
                        Route::post('delete', 'delete')->name('delete');
                    });

            Route::prefix('report')
                    ->as('report.')
                    ->controller(ReportController::class)
                    ->group(function () {
                        Route::get('task', 'task')->name('task');
                        Route::get('customer', 'customer')->name('customer');
                    });

            Route::prefix('permission')
                    ->as('permission.')
                    ->controller(PermissionController::class)
                    ->group(function () {
                        Route::get('', 'index')->name('index');
                    });

            Route::prefix('role')
                    ->as('role.')
                    ->controller(RoleController::class)
                    ->group(function () {
                        Route::post('', 'index')->name('index');
                        Route::get('edit', 'edit')->name('edit');
                        Route::post('save', 'save')->name('save');
                        Route::post('delete', 'delete')->name('delete');
                    });

        });
        
    });
});