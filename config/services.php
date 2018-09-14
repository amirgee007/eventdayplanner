<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, Mandrill, and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'mandrill' => [
        'secret' => env('MANDRILL_SECRET'),
    ],

    'ses' => [
        'key'    => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],

    'stripe' => [
        'model'  => App\User::class,
        'key'    => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],

    'facebook' => [
        'client_id'     => env('FACEBOOK_ID','1932067973737435'),
        'client_secret' => env('FACEBOOK_SECRET','a345c54f5d8ab2163945a6432668d016'),
        'redirect'      => env('FACEBOOK_REDIRECT','https://eventdayplanner.com/auth/callback/facebook')
    ],
    'google' => [
        'client_id'     => env('GOOGLE_ID','386344207895-lk3of2jl4br4vsbg1jnvjuvaqf70esdu.apps.googleusercontent.com'),
        'client_secret' => env('GOOGLE_SECRET','L5oAWOf9nb7fyWwAkDWEDcvl'),
        'redirect'      => env('GOOGLE_REDIRECT','https://eventdayplanner.com/auth/callback/google')
    ],
    'twitter' => [
        'client_id'     => env('TWITTER_ID','UMPEVjSDaAyxyYiwaDXAj3yJZ'),
        'client_secret' => env('TWITTER_SECRET','X8RF6MmqbPghdV66RpV6y2hPg38Giric1Ur7V5RvYX03jqz4K5'),
        'redirect'      => env('TWITTER_REDIRECT','https://eventdayplanner.com/auth/callback/twitter')
    ],
    'linkedin' => [
        'client_id'     => env('LINKEDIN_ID','81l9han96op5a7'),
        'client_secret' => env('LINKEDIN_SECRET','dffszywxB9giUWrx'),
        'redirect'      => env('LINKEDIN_REDIRECT','http://eventdayplanner.com/dev/public/auth/callback/linkedin')
    ],

];
