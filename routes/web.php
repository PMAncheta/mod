<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function(){
    return view('admin.dashboard');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' => ['auth', 'admin']], function()
{
    Route::get('/dashboard', function () {
        return view('admin.dashboard');
    });

    Route::get('/role-register', 'Admin\DashboardController@registered');
    Route::get('/role-edit/{id}', 'Admin\DashboardController@registeredit');
    Route::put('/role-register-update/{id}', 'Admin\DashboardController@registerupdate');
    Route::delete('/role-delete/{id}', 'Admin\DashboardController@registerdelete');

    Route::get('/cadets', 'Admin\CadetController@index');
    Route::get('/add-cadet', 'Admin\CadetController@add');
    Route::post('/save-cadet', 'Admin\CadetController@store');
    Route::get('/edit-cadet/{id}', 'Admin\CadetController@edit');
    Route::put('/update-cadet/{id}', 'Admin\CadetController@update');

    Route::get('/department', 'Admin\DepartmentController@index');
    Route::get('/add-department', 'Admin\DepartmentController@add');
    Route::post('/save-department', 'Admin\DepartmentController@store');
    Route::get('/edit-department/{id}', 'Admin\DepartmentController@edit');
    Route::put('/update-department/{id}', 'Admin\DepartmentController@update');

    Route::get('/courses', 'Admin\CourseController@index');
    Route::get('/add-course', 'Admin\CourseController@add');
    Route::post('/save-course', 'Admin\CourseController@store');
    Route::get('/edit-course/{id}', 'Admin\CourseController@edit');
    Route::put('/update-course/{id}', 'Admin\CourseController@update');

    Route::get('/cadetcrse', 'Admin\CadetcrseController@index');
    Route::get('/add-cadetcrse', 'Admin\CadetcrseController@add');
    Route::post('/save-cadetcrse', 'Admin\CadetcrseController@store');
    Route::get('/edit-cadetcrse/{id}', 'Admin\CadetcrseController@edit');
    Route::put('/update-cadetcrse/{id}', 'Admin\CadetcrseController@update');

    // Route::post('/section-sort', 'Admin\SectionController@sort');
    Route::get('/section', 'Admin\SectionController@index');
    Route::put('/section-add', 'Admin\SectionController@add');
    Route::get('/set-section', 'Admin\SectionController@set');
    Route::post('/section-save', 'Admin\SectionController@save');
    Route::get('/sort-section', 'Admin\SectionController@order');
    Route::post('/set-servid', 'Admin\SectionController@sortSet');
    Route::post('/group-section', 'Admin\SectionController@group');
    Route::get('/sort-servid', 'Admin\SectionController@sortServ');
    Route::get('/update-section', 'Admin\SectionController@update');
    Route::get('/edit-section/{id}', 'Admin\SectionController@edit');
    Route::put('/section-saved', 'Admin\SectionController@addCadets');
    Route::put('/update-section/{id}', 'Admin\SectionController@updates');

    Route::get('/testing', 'Admin\TestingController@index');
    Route::get('/add-testing', 'Admin\TestingController@update');
});
