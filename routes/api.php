<?php

use App\Http\Controllers\api\CandidateController;
use App\Http\Controllers\api\HomeContoller;
use App\Http\Controllers\Auth\UserAuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/home',[HomeContoller::class,'index']);

Route::group(['middleware' => 'auth:api'], function() {
    Route::get('candidate',[CandidateController::class,'index']);
    Route::post('candidate/submit',[CandidateController::class,'store']);
    Route::put('candidate/edit/{id}',[CandidateController::class,'update']);
    Route::post('candidate/delete/{id}',[CandidateController::class,'destroy']);
});

Route::post('register',[UserAuthController::class,'register']);

Route::post('login',[UserAuthController::class,'login']);

