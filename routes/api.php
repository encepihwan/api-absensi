<?php

use App\Http\Controllers\AttendacesController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DevisionController;
use App\Http\Controllers\MediaController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;

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

Route::prefix('user')->middleware('auth:api')->group(function () {
    Route::get('/', [UserController::class, 'index']);
    Route::post('/', [UserController::class, 'store']);
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

Route::prefix('attendance')->middleware('auth:api')->group(function () {
    Route::post('/', [AttendacesController::class, 'store']);
    Route::get('/summary', [AttendacesController::class, 'summary']);
    Route::get('/log', [AttendacesController::class, 'attendanceLogs']);
});

Route::prefix("media")->middleware('auth:api')->group(function () {
    Route::post('/', [MediaController::class, 'store']);
});

Route::prefix("profile")->middleware(['auth:api'])->group(function () {
    Route::get('/', [AuthController::class, 'userProfile']);
    Route::get('/me', [ProfileController::class, 'me']);
    Route::post('edit', [ProfileController::class, 'update']);
    Route::post('update/{id}', [ProfileController::class, 'update']);
});

Route::prefix('roles')->middleware(['auth:api'])->group(function () {
    Route::get('/', [RoleController::class, 'index']);
});
