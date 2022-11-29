<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\WebPublic;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ContentController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\PasswordController;
use App\Http\Controllers\CategoryController;

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
    return redirect()->route('home');
});

//PUBLIC
Route::get('home', [WebPublic::class, 'home'])->name('home');

//ADMIN
Route::middleware(['auth:sanctum', 'verified'])->group (function(){

    Route::resource('crud_category', CategoryController::class);
    Route::post('crud_category/store', [CategoryController::class, 'store'])->name('crud_category.store');
    Route::post('crud_category/update', [CategoryController::class, 'update'])->name('crud_category.update');
    Route::get('crud_category/destroy/{id}', [CategoryController::class, 'destroy']);

    Route::resource('crud_product', ProductController::class);
    Route::get('crud_product_add', [ProductController::class, 'create'])->name('add_product');
    Route::post('crud_product_store', [ProductController::class, 'store'])->name('store_product');
    Route::get('crud_product/view/{id}', [ProductController::class, 'show']);
    Route::get('crud_product/edit/{id}', [ProductController::class, 'edit']);
    Route::post('crud_product_update', [ProductController::class, 'update'])->name('update_product');
    Route::get('crud_product/destroy/{id}', [ProductController::class, 'destroy']);
    
    Route::resource('/crud_content', ContentController::class);
    Route::get('/crud_content_add', [ContentController::class, 'create'])->name('add_content');
    Route::post('crud_content_store', [ContentController::class, 'store'])->name('store_content');
    Route::get('crud_content/view/{id}', [ContentController::class, 'show']);
    Route::get('crud_content/edit/{id}', [ContentController::class, 'edit']);
    Route::post('crud_content_update', [ContentController::class, 'update'])->name('update_content');
    Route::get('crud_content/destroy/{id}', [ContentController::class, 'destroy']);    
    
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
    
    Route::get('edit_profile', [ProfileController::class, 'edit_profile'])->name('edit_profile');
    Route::patch('edit_profile', [ProfileController::class, 'update_profile'])->name('update_profile');
    Route::get('change_password',  [PasswordController::class,'change_password'])->name('change_password');
    Route::patch('change_password',  [PasswordController::class,'update_password'])->name('update_password');

    
});