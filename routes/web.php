<?php

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

Route::get('/', 'AduanController@getPage');
Route::post('/save-report', 'AduanController@save');
Route::post('/get-aduan', 'AduanController@get');
Route::post('/save-response', 'AduanController@response');

Route::group(["prefix" => '/admin', "middleware" => ["is_login"]], function(){
    Route::get('/', function() { return redirect('/admin/home'); });
	Route::get('/home', 'AdminController@getHomePage');
	Route::get('/master-kategori-pengaduan', 'AdminController@getMasterKategoriPage');
	Route::get('/daftar-pengaduan/{ticket?}', 'AdminController@getDaftarPengaduanPage');
	Route::post('/save-changes', 'AdminController@save');
	Route::post('/set-kategori', 'AdminController@setAktif');
	Route::post('/respon-admin', 'AdminController@responAdmin');
	Route::post('/new-kategori', 'AdminController@newKategori');
	Route::get('/get-kategori', 'AdminController@getKategori');
	Route::post('/delete-kategori', 'AdminController@delete');
});

Route::group(["prefix" => "/login"], function(){
	Route::get('/', function() { return view('login'); })->middleware('is_login');
	Route::post('/', 'LoginController@signIn');	
	Route::get('/logout', 'LoginController@signOut');
});


Route::get('sendbasicemail','SendMail@basic_email');
Route::get('sendhtmlemail','SendMail@html_email');
Route::get('sendattachmentemail','SendMail@attachment_email');
Route::get('cek', function(){return view('email.template');});
Route::get('sendrespon', 'SendMail@sendNotifEmail');

