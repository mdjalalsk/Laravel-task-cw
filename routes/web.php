<?php

use App\Http\Controllers\Frontend\CommentController;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Frontend\PostController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', [HomeController::class, 'home'])->name('home');
Route::get('/postDetails/{id}', [HomeController::class, 'postDetails'])->name('postDetails');


Route::middleware('auth')->group(function () {
    Route::get('/home', [HomeController::class, 'index'])->name('home');
    // comment  controller
    Route::post('/storeComment', [CommentController::class, 'store'])->name('storeComment');
    Route::put('/comments/{id}', [CommentController::class, 'update'])->name('comments.update');
    Route::delete('/comments/{id}', [CommentController::class, 'destroy'])->name('comments.destroy');
    // post controller
    Route::get('/post-list', [PostController::class, 'index'])->name('post.index');
    Route::get('/show-post/{id}', [PostController::class, 'show'])->name('post.show');
    Route::get('/create-post', [PostController::class, 'create'])->name('post.create');
    route::post('/store-post', [PostController::class, 'store'])->name('post.store');
    Route::get('/edit-post/{id}', [PostController::class, 'edit'])->name('post.edit');
    Route::put('/update-post/{id}', [PostController::class, 'update'])->name('post.update');
    Route::delete('/delete-post/{id}', [PostController::class, 'destroy'])->name('post.destroy');

    // ckeditor
    Route::post('/ckeditor-upload', [PostController::class, 'ckeImageStore'])->name('ckeditor.upload');
});

require __DIR__ . '/auth.php';
