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

Route::get('/', [VariabelController::class, 'show'])->name('show');
Route::get('/edit/{id}', [VariabelController::class, 'edit'])->name('edit');
Route::put('/update/{id}', [VariabelController::class, 'update'])->name('update');

Route::get('/show-hak-ekonomi-sosial-dan-budaya', [Variabel2Controller::class, 'show'])->name('show2');
Route::get('/edit2/{id}', [Variabel2Controller::class, 'edit'])->name('edit2');
Route::put('/update2/{id}', [Variabel2Controller::class, 'update'])->name('update2');


