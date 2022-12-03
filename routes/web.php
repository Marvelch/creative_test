<?php

use App\Http\Controllers\Auth\UserAuthController;
use App\Http\Controllers\CandidateController;
use Illuminate\Support\Facades\Route;

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

Route::post('candidate',[CandidateController::class,'store']);

Route::get('submit',function() {
    return view('/pages/submit');
});

Route::get('download/{id}',[CandidateController::class,'download']);

Route::get('edit/{id}',[CandidateController::class,'edit']);

Route::put('candidate/update/information/{id}',[CandidateController::class,'update']);

Route::get('candidate/detail/{id}',[CandidateController::class,'show']);
