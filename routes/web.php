<?php

#Test Api
/*
Route::prefix('rest-api')->name('rest-api.')->group(function (){
    Route::get('/v1', 'Api\RestApiController@apiv12')->name('v1');
    Route::get('/v2', 'Api\RestApiController@apiv2')->name('v2');
});
*/


#Front
Route::get('/', 'HomepageController@index');
