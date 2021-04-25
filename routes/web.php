<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
//use App\Http\Controllers\MessageController;

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
    return redirect('/login');
});

Auth::routes();

Route::resource('/messages', 'MessageController');


//Route::view('/home','admin.home');
Route::get('/sms', 'TwilioController@show');
Route::post('/sms', 'TwilioController@storePhoneNumber');
Route::post('/custom', 'TwilioController@sendCustomMessage');
//Route::post('/create', 'UnitController@store');

Route::group(['middleware' => ['auth','role:Teacher']], function ()
{

});

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/profile', 'HomeController@profile')->name('profile');
Route::get('/profile/edit', 'HomeController@profileEdit')->name('profile.edit');
Route::put('/profile/update', 'HomeController@profileUpdate')->name('profile.update');
Route::get('/profile/changepassword', 'HomeController@changePasswordForm')->name('profile.change.password');
Route::post('/profile/changepassword', 'HomeController@changePassword')->name('profile.changepassword');

Route::group(['middleware' => ['auth','role:Admin']], function ()
{
    Route::get('/roles-permissions', 'RolePermissionController@roles')->name('roles-permissions');
    Route::get('/role-create', 'RolePermissionController@createRole')->name('role.create');
    Route::post('/role-store', 'RolePermissionController@storeRole')->name('role.store');
    Route::get('/role-edit/{id}', 'RolePermissionController@editRole')->name('role.edit');
    Route::put('/role-update/{id}', 'RolePermissionController@updateRole')->name('role.update');

    Route::get('/permission-create', 'RolePermissionController@createPermission')->name('permission.create');
    Route::post('/permission-store', 'RolePermissionController@storePermission')->name('permission.store');
    Route::get('/permission-edit/{id}', 'RolePermissionController@editPermission')->name('permission.edit');
    Route::put('/permission-update/{id}', 'RolePermissionController@updatePermission')->name('permission.update');

    Route::get('assign-subject-to-class/{id}', 'GradeController@assignSubject')->name('class.assign.subject');
    Route::post('assign-subject-to-class/{id}', 'GradeController@storeAssignedSubject')->name('store.class.assign.subject');

    Route::resource('assignrole', 'RoleAssign');
    Route::resource('classes', 'GradeController');
    Route::resource('subject', 'SubjectController');
    Route::resource('teacher', 'TeacherController');
    Route::resource('parents', 'ParentsController');
    Route::resource('student', 'StudentController');
    Route::get('attendance', 'AttendanceController@index')->name('attendance.index');

    //Route::get('/Admin/sms', 'TwilioController@show');
    //Route::post('/Admin/sms', 'TwilioController@storePhoneNumber');
    //Route::post('/Admin/custom', 'TwilioController@sendCustomMessage');

    Route::get('/Admin/teacher/sms', 'TwilioController@smsLecturer');
    Route::post('/Admin/teacher/sms', 'TwilioController@storePhoneNumber');
    Route::post('/Admin/teacher/custom', 'TwilioController@sendCustomMessage');

    Route::get('/Admin/all/sms', 'TwilioController@smsAll');
    Route::post('/Admin/all/sms', 'TwilioController@storePhoneNumber');
    Route::post('/Admin/all/custom', 'TwilioController@sendCustomMessage');


    Route::get('/Admin/parent/sms', 'TwilioController@smsParent');
    Route::post('/Admin/parent/sms', 'TwilioController@storePhoneNumber');
    Route::post('/Admin/parent/custom', 'TwilioController@sendCustomMessage');


    Route::get('/Admin/student/sms', 'TwilioController@show');
    Route::post('/Admin/student/sms', 'TwilioController@storePhoneNumber');
    Route::post('/Admin/student/custom', 'TwilioController@sendCustomMessage');


//Route::post('/create', 'UnitController@store');

});

Route::group(['middleware' => ['auth','role:Teacher']], function ()
{
    Route::post('attendance', 'AttendanceController@store')->name('teacher.attendance.store');
    Route::get('attendance-create/{id}', 'AttendanceController@createByTeacher')->name('teacher.attendance.create');


    Route::get('/teacher/sms', 'TwilioController@show');
    Route::post('/teacher/sms', 'TwilioController@storePhoneNumber');
    Route::post('/teacher/custom', 'TwilioController@sendCustomMessage');
//Route::post('/create', 'UnitController@store');
});

Route::group(['middleware' => ['auth','role:Parent']], function ()
{
    Route::get('attendance/{id}', 'AttendanceController@show')->name('attendance.show');

    Route::get('/parent/sms', 'TwilioController@show');
    Route::post('/parent/sms', 'TwilioController@storePhoneNumber');
    Route::post('/parent/custom', 'TwilioController@sendCustomMessage');
});

Route::group(['middleware' => ['auth','role:Student']], function () {


    Route::get('/student/sms', 'TwilioController@show');
    Route::post('/student/sms', 'TwilioController@storePhoneNumber');
    Route::post('/student/custom', 'TwilioController@sendCustomMessage');

});
