<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\VariabelController;
use App\Http\Controllers\Variabel2Controller;

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

Route::redirect('/', '/show/{dimensiId}', 301);

Route::get('/show/{dimensiId}', [VariabelController::class, 'show'])->name('show');
Route::get('/edit/{id}/{dimensiId}', [VariabelController::class, 'edit'])->name('edit');
Route::put('/update/{id}', [VariabelController::class, 'update'])->name('update');

Route::resource('variabel', VariabelController::class);

