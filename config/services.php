<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'github' => [
        'client_id' => env('GITHUB_CLIENT_ID'),
        'client_secret' => env('GITHUB_CLIENT_SECRET'),
        'redirect'      => env('GITHUB_LOGIN_REDIRECT'),
        /*'redirect'      => url('auth/github/callback'),*/
    ],
    
        'google' => [
        'client_id' => env('GOOGLE_CLIENT_ID'),
        'client_secret' => env('GOOGLE_CLIENT_SECRET'),
        'redirect'      => env('GOOGLE_LOGIN_REDIRECT'),
        /*'redirect'      => url('auth/google/callback'),*/

    ],

        'facebook' => [
        'client_id' => env('FACEBOOK_CLIENT_ID'),
        'client_secret' => env('FACEBOOK_CLIENT_SECRET'),
        'redirect'      => env('FACEBOOK_LOGIN_REDIRECT'),
        /*'redirect' => url('auth/facebook/callback'),*/

    ],

     'linkedin' => [
        'client_id' => env('LINKEDIN_CLIENT_ID'),
        'client_secret' => env('LINKEDIN_CLIENT_SECRET'),
        'redirect'      => env('LINKEDIN_LOGIN_REDIRECT'),
        /*'redirect'      => url('auth/linkedin/callback'),*/
    ],

    'amazon' => [
        'client_id'     => env('AMAZON_LOGIN_ID'),
        'client_secret' => env('AMAZON_LOGIN_SECRET'),
        'redirect'      => env('AMAZON_LOGIN_REDIRECT'),
        /*'redirect'      => url('auth/amazon/callback'),*/
    ],





    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],

];
