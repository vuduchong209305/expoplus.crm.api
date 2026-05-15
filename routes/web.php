<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::group(['prefix' => 'hadmin', 'namespace' => 'Admin'], function() {

    Route::get('/', 'AuthController@login');
    
    Route::get('login', ['as' => 'get.login', 'uses' => 'AuthController@login']);
    Route::post('login', ['as' => 'post.login', 'uses' => 'AuthController@login']);    
    Route::get('logout', ['as' => 'logout', 'uses' => 'AuthController@logout']);

    Route::middleware(['CheckAdminLogin', 'CheckRole', 'Locale'])->group(function() {
        Route::get('dashboard', ['as' => 'dashboard', 'uses' => 'DashboardController@index']);

        /* Admin */
        Route::group(['prefix' => 'admin', 'as' => 'admin.'], function() {
            Route::get('index', ['as' => 'index', 'uses' => 'AdminController@index']);
            Route::get('create', ['as' => 'create', 'uses' => 'AdminController@create']);
            Route::post('store', ['as' => 'store', 'uses' => 'AdminController@store']);
            Route::put('store', ['as' => 'update', 'uses' => 'AdminController@store']);
            Route::get('delete', ['as' => 'delete', 'uses' => 'AdminController@delete']);

            Route::get('profile', ['as' => 'profile', 'uses' => 'AdminController@profile']);
            Route::post('profile', ['as' => 'updateProfile', 'uses' => 'AdminController@profile']);

            /* Role */
            Route::group(['prefix' => 'role', 'as' => 'role.'], function() {
                Route::get('index', ['as' => 'index', 'uses' => 'RoleController@index']);
                Route::get('create', ['as' => 'create', 'uses' => 'RoleController@create']);
                Route::post('store', ['as' => 'store', 'uses' => 'RoleController@store']);
                Route::put('store', ['as' => 'update', 'uses' => 'RoleController@store']);
                Route::get('delete', ['as' => 'delete', 'uses' => 'RoleController@delete']);
            });
        });

        /* Organizer */
        Route::group(['prefix' => 'organizer', 'as' => 'organizer.'], function() {
            Route::get('index', ['as' => 'index', 'uses' => 'OrganizerController@index']);
            Route::get('create', ['as' => 'create', 'uses' => 'OrganizerController@create']);
            Route::post('store', ['as' => 'store', 'uses' => 'OrganizerController@store']);
            Route::put('store', ['as' => 'update', 'uses' => 'OrganizerController@store']);
            Route::get('delete', ['as' => 'delete', 'uses' => 'OrganizerController@delete']);

            Route::get('profile', ['as' => 'profile', 'uses' => 'OrganizerController@profile']);
            Route::post('profile', ['as' => 'updateProfile', 'uses' => 'OrganizerController@profile']);

            /* User */
            Route::group(['prefix' => 'user', 'as' => 'user.'], function() {
                Route::get('index', ['as' => 'index', 'uses' => 'UserController@index']);
                Route::get('create', ['as' => 'create', 'uses' => 'UserController@create']);
                Route::post('store', ['as' => 'store', 'uses' => 'UserController@store']);
                Route::put('store', ['as' => 'update', 'uses' => 'UserController@store']);
                Route::get('delete', ['as' => 'delete', 'uses' => 'UserController@delete']);
            });

            /* Permission */
            Route::group(['prefix' => 'permission', 'as' => 'permission.'], function() {
                Route::get('index', ['as' => 'index', 'uses' => 'PermissionController@index']);
                Route::post('store', ['as' => 'store', 'uses' => 'PermissionController@store']);;
            });

        });

        /* Exhibition */
        Route::group(['prefix' => 'exhibition', 'as' => 'exhibition.'], function() {
            Route::get('index', ['as' => 'index', 'uses' => 'ExhibitionController@index']);
            Route::get('create', ['as' => 'create', 'uses' => 'ExhibitionController@create']);
            Route::post('store', ['as' => 'store', 'uses' => 'ExhibitionController@store']);
            Route::put('store', ['as' => 'update', 'uses' => 'ExhibitionController@store']);
            Route::get('delete', ['as' => 'delete', 'uses' => 'ExhibitionController@delete']);
        });

        /* Customer */
        Route::group(['prefix' => 'customer', 'as' => 'customer.'], function() {
            Route::get('index', ['as' => 'index', 'uses' => 'CustomerController@index']);
            Route::get('create', ['as' => 'create', 'uses' => 'CustomerController@create']);
            Route::post('store', ['as' => 'store', 'uses' => 'CustomerController@store']);
            Route::put('store', ['as' => 'update', 'uses' => 'CustomerController@store']);
            Route::get('delete', ['as' => 'delete', 'uses' => 'CustomerController@delete']);
        });

        /* Setting */
        Route::group(['prefix' => 'setting', 'as' => 'setting.'], function() {
            Route::get('index', ['as' => 'index', 'uses' => 'SettingController@index']);
            Route::post('store', ['as' => 'store', 'uses' => 'SettingController@store']);

            /* Lang */
            Route::group(['prefix' => 'lang', 'as' => 'lang.'], function() {
                Route::get('index', ['as' => 'index', 'uses' => 'LangController@index']);
                Route::post('store', ['as' => 'store', 'uses' => 'LangController@store']);
                Route::put('store', ['as' => 'update', 'uses' => 'LangController@store']);
                Route::get('delete', ['as' => 'delete', 'uses' => 'LangController@delete']);
            });
            
            /* Logo */
            Route::group(['prefix' => 'logo', 'as' => 'logo.'], function() {
                Route::get('index', ['as' => 'index', 'uses' => 'LogoController@index']);
                Route::get('create', ['as' => 'create', 'uses' => 'LogoController@create']);
                Route::post('store', ['as' => 'store', 'uses' => 'LogoController@store']);
                Route::put('store', ['as' => 'update', 'uses' => 'LogoController@store']);
                Route::get('delete', ['as' => 'delete', 'uses' => 'LogoController@delete']);
            });

        });

        /* Career */
        Route::group(['prefix' => 'career', 'as' => 'career.'], function() {
            Route::get('index', ['as' => 'index', 'uses' => 'CareerController@index']);
            Route::get('create', ['as' => 'create', 'uses' => 'CareerController@create']);
            Route::post('store', ['as' => 'store', 'uses' => 'CareerController@store']);
            Route::put('store', ['as' => 'update', 'uses' => 'CareerController@store']);
            Route::get('delete', ['as' => 'delete', 'uses' => 'CareerController@delete']);
        });

        /* Stakeholder */
        Route::group(['prefix' => 'stakeholder', 'as' => 'stakeholder.'], function() {
            Route::get('index', ['as' => 'index', 'uses' => 'StakeholderController@index']);
            Route::get('create', ['as' => 'create', 'uses' => 'StakeholderController@create']);
            Route::post('store', ['as' => 'store', 'uses' => 'StakeholderController@store']);
            Route::put('store', ['as' => 'update', 'uses' => 'StakeholderController@store']);
            Route::get('delete', ['as' => 'delete', 'uses' => 'StakeholderController@delete']);
        });

        Route::get('activity', ['as' => 'activity', 'uses' => 'ActivityController@index']);

    });

    Route::get('403', function(){
        return view('admin.403');
    })->name('403');
});