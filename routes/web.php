<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;

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

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::group(['middleware' => ['auth']] , function(){
    Route::resource('product', ProductController::class);
    Route::get('/get-import', [ProductController::class, 'getImport'])->name('import');
    Route::post('/import_parse', [ProductController::class, 'parseImport'])->name('import_parse');
    Route::post('/import_process', [ProductController::class, 'processImport'])->name('import_process');
});
