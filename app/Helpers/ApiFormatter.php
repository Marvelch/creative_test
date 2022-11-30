<?php

namespace App\Helpers;

class ApiFormatter {
    protected static $response = [
        'responCode' => null,
        'message' => null,
        'data' => null,
    ];

    public static function createApi($responCode = null, $message = null, $data = null) 
    {
        self::$response['responCode'] = $responCode;
        self::$response['message'] = $message;
        self::$response['data'] = $data;

        return response()->json(self::$response, 200)->withHeaders([
            'Content-Type' => 'Application/json'
        ]);
    }
}

?>