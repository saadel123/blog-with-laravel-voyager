<?php

use App\Http\Controllers\BlogController;
use App\Http\Controllers\SiteController;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

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

Route::get('/',[SiteController::class,'index']);
Route::get('/blog/{id?}',[BlogController::class,'index']);
Route::get('/details/{slug}',[BlogController::class,'show']);
Route::post('/contact',[SiteController::class,'store']);
/*
Route::get('/blog', function () {
    return view('blog.blog');
});
*/
Route::get('/about', function () {
    return view('blog.about');
});
Route::get('/contact', function () {
    return view('blog.contact');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
