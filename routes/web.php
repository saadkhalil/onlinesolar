<?php

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
//FRONTEND
Route::get('/', ['uses' => 'PagesController@index']);
Route::get('/register', ['uses' => 'Front\Register\RegisterController@index']);
Route::get('/login', ['uses' => 'Front\Login\LoginController@index']);
Route::post('/userregister', 'Front\Register\RegisterController@store');
Route::post('/usercode', 'Front\Register\RegisterController@confirmationcode');
Route::post('/usercoderesend', 'Front\Register\RegisterController@resendconfirmationcode');
Route::post('user/login', 'Auth\UserController@login')->name('front.login.submit');
Route::post('user/autologin', 'Auth\UserautologinController@login')->name('front.login.submit');
Route::get('user/logout', ['uses' => 'PagesController@userLogout']);
Route::post('/submitchangepassword', 'Front\Losspassword\LosspasswordController@submitchangepassword');
Route::post('/useraddressconfirm', ['uses' => 'Front\Register\RegisterController@addressconfirmation']);
Route::post('/saveaddress', ['uses' => 'Front\Register\RegisterController@saveaddress']);
Route::get('/privacypolicy', ['uses' => 'Front\Privacy\PrivacyController@index']);
Route::get('/terms', ['uses' => 'Front\Terms\TermsController@index']);
Route::post('/addcarts', ['uses' => 'Front\Cart\CartController@store']);
Route::post('/showcartitems', ['uses' => 'Front\Cart\CartController@showcartitems']);
Route::post('/deleteitem', ['uses' => 'Front\Cart\CartController@destroy']);
Route::get('/orderconfirmation', ['uses' => 'Front\Orderconfirmation\OrderconfirmationController@index']);
Route::get('/ordersave/{id}/{payslug}', ['uses' => 'Front\Orderconfirmation\OrderconfirmationController@store']);
Route::get('/shedulevisit', ['uses' => 'Front\Shedule\SheduleController@index']);
Route::get('/products', ['uses' => 'Front\Products\ProductsController@index']);
Route::post('/userbillupload', ['uses' => 'Front\Shedule\SheduleController@store']);
Route::get('/thanks', ['uses' => 'Front\Thanks\ThanksController@index']);
Route::post('/usersurverysubmit', ['uses' => 'Front\Thanks\ThanksController@store']);
Route::get('/profile', ['uses' => 'Front\Profile\ProfileController@index']);
Route::post('/updateinfo', ['uses' => 'Front\Profile\ProfileController@update']);
Route::post('/addonetimeoffr', ['uses' => 'Front\Orderconfirmation\OrderconfirmationController@addonetime']);
Route::post('/showcart_otoitems', ['uses' => 'Front\Orderconfirmation\OrderconfirmationController@showcart_otoitems']);
Route::post('/updateuserpas', ['uses' => 'Front\Profile\ProfileController@updatepass']);
Route::get('/get_rates', ['uses' => 'Front\Products\ProductsController@get_rates']);