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

        Route::group(['prefix' => 'customer'], function() {
        	Route::post('', 'CustomerController@index');
            Route::get('view', 'CustomerController@view');
            Route::post('store', 'CustomerController@store');
            Route::post('update', 'CustomerController@update');
            Route::get('source', 'CustomerController@source');
            Route::post('bookmark', 'CustomerController@bookmark');
            Route::post('delete', 'CustomerController@delete');
            Route::post('avatar', 'CustomerController@avatar');
            Route::post('comment', 'CustomerController@comment');
            Route::get('comment', 'CustomerController@listComment');
            Route::get('activityLogs', 'CustomerController@activityLogs');
        });

        Route::group(['prefix' => 'user'], function(){
            Route::get('', 'UserController@index');
        });

        Route::group(['prefix' => 'todo'], function(){
            Route::get('', 'ToDoController@index');
            Route::get('detail', 'ToDoController@detail');
            Route::post('store', 'ToDoController@store');
            Route::post('update', 'ToDoController@update');
            Route::post('delete', 'ToDoController@delete');
            Route::post('completed', 'ToDoController@completed');
            Route::post('bookmark', 'ToDoController@bookmark');
            Route::post('sort', 'ToDoController@sort');
        });

        Route::group(['prefix' => 'event'], function(){
            Route::get('', 'EventController@index');
            Route::get('detail', 'EventController@detail');
            Route::post('store', 'EventController@store');
            Route::post('update', 'EventController@update');
            Route::post('update-time', 'EventController@updateTime');
        });

        Route::group(['prefix' => 'customer-group'], function(){
            Route::get('', 'CustomerGroupController@index');
            Route::get('detail', 'CustomerGroupController@detail');
            Route::post('save', 'CustomerGroupController@save');
            Route::get('list', 'CustomerGroupController@list');
            Route::post('assign', 'CustomerGroupController@assign');
        });

        Route::group(['prefix' => 'task'], function(){
            Route::get('', 'TaskController@index');
            Route::get('detail', 'TaskController@detail');
            Route::post('store', 'TaskController@store');
            Route::post('update', 'TaskController@update');
            Route::post('delete', 'TaskController@delete');
            Route::post('completed', 'TaskController@completed');
            Route::post('bookmark', 'TaskController@bookmark');
            Route::post('sort', 'TaskController@sort');
        });
    });
});