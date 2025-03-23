<?php

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Route;

Route::get('/bypass/{any}', function ($any) {
    $response = Http::get(env('API_URL') . '/' . $any);
    return $response->json();
})->where('any', '.*');
