<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


class RestApiController extends Controller
{
    public function apiv1(Request $request)
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_VERBOSE, 0);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($curl, CURLOPT_TIMEOUT, 30);
        curl_setopt($curl, CURLOPT_URL, 'http://www.mocky.io/v2/5d47f24c330000623fa3ebfa');
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

        $result = curl_exec($curl);
        curl_close($curl);

        $data = json_decode($result, true);
        //print_r($data);
        return view('testApi', ['data'=>$data]);
    }


    public function apiv2(Request $request)
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_VERBOSE, 0);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($curl, CURLOPT_TIMEOUT, 30);
        curl_setopt($curl, CURLOPT_URL, 'http://www.mocky.io/v2/5d47f235330000623fa3ebf7');
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

        $result = curl_exec($curl);
        curl_close($curl);

        $data = json_decode($result, true);
        //print_r($data);
        return view('testApi', ['data'=>$data]);
    }
}
