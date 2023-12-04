<?php

use App\Http\Controllers\AttendacesController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DevisionController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ProjectController;

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

Route::group([
    'middleware' => 'api',
    // 'prefix' => 'auth'
], function ($router) {
    $router->group(['prefix' => 'auth'], function ($router) {
        Route::post('/login', [AuthController::class, 'login']);
        Route::post('/register', [AuthController::class, 'register']);
        Route::post('/logout', [AuthController::class, 'logout']);
        Route::post('/refresh', [AuthController::class, 'refresh']);
        Route::post('/change-password', [AuthController::class, 'changePassword']);
    });

    $router->group(['prefix' => 'profile'], function ($router) {
        Route::get('/', [AuthController::class, 'userProfile']);
        Route::get('edit', [ProfileController::class, 'edit']);
        Route::post('update/{id}', [ProfileController::class, 'update']);
    });

    $router->group(['prefix' => 'attendances'], function ($router) {
        Route::post('/', [AttendacesController::class, 'Attendances']);
    });

    $router->group(['prefix' => 'project'], function ($router) {
        // Route::get('/', [ProjectController::class, 'index']);
        // Route::post('/store', [ProjectController::class, 'store']);
        // Route::get('/show/{id}', [ProjectController::class, 'show']);
        // Route::post('/update/{id}', [ProjectController::class, 'update']);
        // Route::post('/destroy/{id}', [ProjectController::class, 'destroy']);

        // Route::get('/global', [ProjectController::class, 'global_function']);
        // Route::get('/detail-project', [ProjectController::class, 'detailProject']);
    });

    // $router->group(['prefix' => 'devision'], function ($router) {
    //     Route::get('/', [DevisionController::class, 'index']);
    //     Route::post('/store', [DevisionController::class, 'store']);
    //     Route::get('/show/{id}', [DevisionController::class, 'show']);
    //     Route::post('/update/{id}', [DevisionController::class, 'update']);
    //     Route::post('/destroy/{id}', [DevisionController::class, 'destroy']);
    //     // Route::apiResource('', DevisionController::class);
    // })->middleware(['auth:api']);
});

Route::prefix('devision')->middleware('auth:api')->group(function () {
    Route::get('/', [DevisionController::class, 'index']);
    Route::post('/store', [DevisionController::class, 'store']);
    Route::get('/show/{id}', [DevisionController::class, 'show']);
    Route::post('/update/{id}', [DevisionController::class, 'update']);
    Route::post('/destroy/{id}', [DevisionController::class, 'destroy']);
    // Route::apiResource('', DevisionController::class);
});

Route::prefix('project')->middleware('auth:api')->group(function () {
    Route::get('/', [ProjectController::class, 'index']);
    Route::post('/store', [ProjectController::class, 'store']);
    Route::get('/show/{id}', [ProjectController::class, 'show']);
    Route::post('/update/{id}', [ProjectController::class, 'update']);
    Route::post('/destroy/{id}', [ProjectController::class, 'destroy']);

    Route::get('/global', [ProjectController::class, 'global_function']);
    Route::get('/detail-project', [ProjectController::class, 'detailProject']);
});
