<?php return array (
  'broadcasting' => 
  array (
    'default' => 'log',
    'connections' => 
    array (
      'pusher' => 
      array (
        'driver' => 'pusher',
        'key' => NULL,
        'secret' => NULL,
        'app_id' => '',
        'options' => 
        array (
        ),
      ),
      'redis' => 
      array (
        'driver' => 'redis',
        'connection' => 'default',
      ),
      'log' => 
      array (
        'driver' => 'log',
      ),
    ),
  ),
  'eloquent-oauth' => 
  array (
    'model' => 'App\\User',
    'table' => 'oauth_identities',
    'providers' => 
    array (
      'facebook' => 
      array (
        'client_id' => '1164771373610687',
        'client_secret' => 'e52399bdfc8d6891a32843e78b88dfea',
        'redirect_uri' => 'http://eventdayplanner.com/public/dev',
        'scope' => 
        array (
        ),
      ),
      'google' => 
      array (
        'client_id' => '521125266075-6a4lg5bsh6b924aq6igguu4rd960ejho.apps.googleusercontent.com',
        'client_secret' => 'enOpVGZe06dDZ66pVmuOkz46',
        'redirect_uri' => 'http://eventdayplanner.com/auth/callback/google',
      ),
      'github' => 
      array (
        'client_id' => '12345678',
        'client_secret' => 'y0ur53cr374ppk3y',
        'redirect_uri' => 'https://example.com/your/github/redirect',
        'scope' => 
        array (
        ),
      ),
      'linkedin' => 
      array (
        'client_id' => '12345678',
        'client_secret' => 'y0ur53cr374ppk3y',
        'redirect_uri' => 'https://example.com/your/linkedin/redirect',
        'scope' => 
        array (
        ),
      ),
      'instagram' => 
      array (
        'client_id' => '12345678',
        'client_secret' => 'y0ur53cr374ppk3y',
        'redirect_uri' => 'https://example.com/your/instagram/redirect',
        'scope' => 
        array (
        ),
      ),
      'soundcloud' => 
      array (
        'client_id' => '12345678',
        'client_secret' => 'y0ur53cr374ppk3y',
        'redirect_uri' => 'https://example.com/your/soundcloud/redirect',
        'scope' => 
        array (
        ),
      ),
    ),
  ),
  'view' => 
  array (
    'paths' => 
    array (
      0 => '/var/www/html/laravel/resources/views',
    ),
    'compiled' => '/var/www/html/laravel/storage/framework/views',
  ),
  'auth' => 
  array (
    'defaults' => 
    array (
      'guard' => 'web',
      'passwords' => 'users',
    ),
    'guards' => 
    array (
      'web' => 
      array (
        'driver' => 'session',
        'provider' => 'users',
      ),
      'api' => 
      array (
        'driver' => 'token',
        'provider' => 'users',
      ),
    ),
    'providers' => 
    array (
      'users' => 
      array (
        'driver' => 'eloquent',
        'model' => 'App\\User',
      ),
    ),
    'passwords' => 
    array (
      'users' => 
      array (
        'provider' => 'users',
        'email' => 'auth.emails.password',
        'table' => 'password_resets',
        'expire' => 60,
      ),
    ),
  ),
  'services' => 
  array (
    'payPalCredsApi' => 
    array (
      'PP_API_EMAIL' => 'info@eventdayplanner.com',
      'PP_API_CLIENT' => 'ATZ6kbs6MiA2PzaJV_EeQn-6f_5flbFdzT8cSZKpovB-AZ2cSDYcfIcjgMSkK_sUDeGl7l2US_3O82aj',
      'PP_API_SECRET' => 'EKWA-_yCToOc_dGpMJa0s0LdtcdZmHSm8uW8Nh5d2UPNqynpHkjVc3cTBAFi7KxvLFuTfu_M58_1zQIF',
      'PP_API_MODE' => false,
    ),
    'payPalCreds' => 
    array (
      'PP_API_USERNAME' => 'info_api1.eventdayplanner.com',
      'PP_API_PASSWORD' => 'LMYN8T67XMYBHSEE',
      'PP_API_SIGNATURE' => 'Apa4Xxb8oukL9MQetpVsHXAy-FGXA37BRzwuPHjkoU9QIIEiRC2OEb1I',
      'PP_API_TEST_MODE' => false,
    ),
    'mailgun' => 
    array (
      'domain' => 'emails.msaeed.de',
      'secret' => 'key-d224d4fafd92c54217dfe6f3a941a11f',
    ),
    'mandrill' => 
    array (
      'secret' => NULL,
    ),
    'ses' => 
    array (
      'key' => NULL,
      'secret' => NULL,
      'region' => 'us-east-1',
    ),
    'stripe' => 
    array (
      'model' => 'App\\User',
      'key' => NULL,
      'secret' => NULL,
    ),
    'facebook' => 
    array (
      'client_id' => '1932067973737435',
      'client_secret' => 'a345c54f5d8ab2163945a6432668d016',
      'redirect' => 'https://eventdayplanner.com/auth/callback/facebook',
    ),
    'google' => 
    array (
      'client_id' => '386344207895-lk3of2jl4br4vsbg1jnvjuvaqf70esdu.apps.googleusercontent.com',
      'client_secret' => 'L5oAWOf9nb7fyWwAkDWEDcvl',
      'redirect' => 'https://eventdayplanner.com/auth/callback/google',
    ),
    'twitter' => 
    array (
      'client_id' => 'UMPEVjSDaAyxyYiwaDXAj3yJZ',
      'client_secret' => 'X8RF6MmqbPghdV66RpV6y2hPg38Giric1Ur7V5RvYX03jqz4K5',
      'redirect' => 'https://eventdayplanner.com/auth/callback/twitter',
    ),
    'linkedin' => 
    array (
      'client_id' => '86di1ce7mk7kji',
      'client_secret' => 'MvZtYJqQdgYcYubx',
      'redirect' => 'https://eventdayplanner.com/auth/callback/linkedin',
    ),
  ),
  'image' => 
  array (
    'driver' => 'gd',
  ),
  'database' => 
  array (
    'fetch' => 8,
    'default' => 'mysql',
    'connections' => 
    array (
      'sqlite' => 
      array (
        'driver' => 'sqlite',
        'database' => '/var/www/html/laravel/database/database.sqlite',
        'prefix' => '',
      ),
      'mysql' => 
      array (
        'driver' => 'mysql',
        'host' => 'localhost',
        'database' => 'events',
        'username' => 'root',
        'password' => 'amazonroot',
        'charset' => 'utf8',
        'collation' => 'utf8_unicode_ci',
        'prefix' => '',
        'strict' => false,
        'engine' => NULL,
      ),
      'pgsql' => 
      array (
        'driver' => 'pgsql',
        'host' => 'localhost',
        'database' => 'events',
        'username' => 'root',
        'password' => 'amazonroot',
        'charset' => 'utf8',
        'prefix' => '',
        'schema' => 'public',
      ),
      'sqlsrv' => 
      array (
        'driver' => 'sqlsrv',
        'host' => 'localhost',
        'database' => 'events',
        'username' => 'root',
        'password' => 'amazonroot',
        'charset' => 'utf8',
        'prefix' => '',
      ),
    ),
    'migrations' => 'migrations',
    'redis' => 
    array (
      'cluster' => false,
      'default' => 
      array (
        'host' => '127.0.0.1',
        'password' => NULL,
        'port' => '6379',
        'database' => 0,
      ),
    ),
  ),
  'dompdf' => 
  array (
    'show_warnings' => false,
    'orientation' => 'portrait',
    'defines' => 
    array (
      'DOMPDF_FONT_DIR' => '/var/www/html/laravel/storage/fonts/',
      'DOMPDF_FONT_CACHE' => '/var/www/html/laravel/storage/fonts/',
      'DOMPDF_TEMP_DIR' => '/tmp',
      'DOMPDF_CHROOT' => '/var/www/html/laravel',
      'DOMPDF_UNICODE_ENABLED' => true,
      'DOMPDF_ENABLE_FONT_SUBSETTING' => false,
      'DOMPDF_PDF_BACKEND' => 'CPDF',
      'DOMPDF_DEFAULT_MEDIA_TYPE' => 'screen',
      'DOMPDF_DEFAULT_PAPER_SIZE' => 'a4',
      'DOMPDF_DEFAULT_FONT' => 'serif',
      'DOMPDF_DPI' => 96,
      'DOMPDF_ENABLE_PHP' => false,
      'DOMPDF_ENABLE_JAVASCRIPT' => true,
      'DOMPDF_ENABLE_REMOTE' => true,
      'DOMPDF_FONT_HEIGHT_RATIO' => 1.1,
      'DOMPDF_ENABLE_CSS_FLOAT' => false,
      'DOMPDF_ENABLE_HTML5PARSER' => false,
    ),
  ),
  'queue' => 
  array (
    'default' => 'sync',
    'connections' => 
    array (
      'sync' => 
      array (
        'driver' => 'sync',
      ),
      'database' => 
      array (
        'driver' => 'database',
        'table' => 'jobs',
        'queue' => 'default',
        'expire' => 60,
      ),
      'beanstalkd' => 
      array (
        'driver' => 'beanstalkd',
        'host' => 'localhost',
        'queue' => 'default',
        'ttr' => 60,
      ),
      'sqs' => 
      array (
        'driver' => 'sqs',
        'key' => 'your-public-key',
        'secret' => 'your-secret-key',
        'prefix' => 'https://sqs.us-east-1.amazonaws.com/your-account-id',
        'queue' => 'your-queue-name',
        'region' => 'us-east-1',
      ),
      'redis' => 
      array (
        'driver' => 'redis',
        'connection' => 'default',
        'queue' => 'default',
        'expire' => 60,
      ),
    ),
    'failed' => 
    array (
      'database' => 'mysql',
      'table' => 'failed_jobs',
    ),
  ),
  'sluggable' => 
  array (
    'source' => NULL,
    'maxLength' => NULL,
    'method' => NULL,
    'separator' => '-',
    'unique' => true,
    'uniqueSuffix' => NULL,
    'includeTrashed' => false,
    'reserved' => NULL,
    'onUpdate' => false,
    'build_from' => NULL,
    'save_to' => 'slug',
    'max_length' => NULL,
    'include_trashed' => false,
    'on_update' => false,
  ),
  'app' => 
  array (
    'env' => 'local',
    'debug' => false,
    'url' => 'http://localhost',
    'timezone' => 'UTC',
    'locale' => 'en',
    'fallback_locale' => 'en',
    'key' => 'base64:ot8l2/bV56xs4wWSvA45TShGO2FkVJhvXn3d4A6t+JI=',
    'cipher' => 'AES-256-CBC',
    'log' => 'single',
    'providers' => 
    array (
      0 => 'Illuminate\\Foundation\\Providers\\ArtisanServiceProvider',
      1 => 'Illuminate\\Auth\\AuthServiceProvider',
      2 => 'Illuminate\\Broadcasting\\BroadcastServiceProvider',
      3 => 'Illuminate\\Bus\\BusServiceProvider',
      4 => 'Illuminate\\Cache\\CacheServiceProvider',
      5 => 'Illuminate\\Foundation\\Providers\\ConsoleSupportServiceProvider',
      6 => 'Illuminate\\Cookie\\CookieServiceProvider',
      7 => 'Illuminate\\Database\\DatabaseServiceProvider',
      8 => 'Illuminate\\Encryption\\EncryptionServiceProvider',
      9 => 'Illuminate\\Filesystem\\FilesystemServiceProvider',
      10 => 'Illuminate\\Foundation\\Providers\\FoundationServiceProvider',
      11 => 'Illuminate\\Hashing\\HashServiceProvider',
      12 => 'Illuminate\\Mail\\MailServiceProvider',
      13 => 'Illuminate\\Pagination\\PaginationServiceProvider',
      14 => 'Illuminate\\Pipeline\\PipelineServiceProvider',
      15 => 'Illuminate\\Queue\\QueueServiceProvider',
      16 => 'Illuminate\\Redis\\RedisServiceProvider',
      17 => 'Illuminate\\Auth\\Passwords\\PasswordResetServiceProvider',
      18 => 'Illuminate\\Session\\SessionServiceProvider',
      19 => 'Illuminate\\Translation\\TranslationServiceProvider',
      20 => 'Illuminate\\Validation\\ValidationServiceProvider',
      21 => 'Illuminate\\View\\ViewServiceProvider',
      22 => 'App\\Providers\\AppServiceProvider',
      23 => 'App\\Providers\\AuthServiceProvider',
      24 => 'App\\Providers\\EventServiceProvider',
      25 => 'App\\Providers\\RouteServiceProvider',
      26 => 'Cartalyst\\Sentinel\\Laravel\\SentinelServiceProvider',
      27 => 'Collective\\Html\\HtmlServiceProvider',
      28 => 'Cviebrock\\EloquentSluggable\\ServiceProvider',
      29 => 'Cviebrock\\EloquentTaggable\\ServiceProvider',
      30 => 'yajra\\Datatables\\DatatablesServiceProvider',
      31 => 'App\\Providers\\JoshCrudGeneratorServiceProvider',
      32 => 'App\\Providers\\LocalServiceProvider',
      33 => 'Laravel\\Socialite\\SocialiteServiceProvider',
      34 => 'willvincent\\Rateable\\RateableServiceProvider',
      35 => 'Tshafer\\Reviewable\\ServiceProvider',
      36 => 'Cmgmyr\\Messenger\\MessengerServiceProvider',
      37 => 'Intervention\\Image\\ImageServiceProvider',
      38 => 'Kuber\\ViewCounter\\ViewCounterServiceProvider',
      39 => 'Chencha\\Share\\ShareServiceProvider',
      40 => 'AdamWathan\\EloquentOAuthL5\\EloquentOAuthServiceProvider',
      41 => 'Spatie\\Newsletter\\NewsletterServiceProvider',
      42 => 'Milon\\Barcode\\BarcodeServiceProvider',
      43 => 'Barryvdh\\DomPDF\\ServiceProvider',
      44 => 'Anhskohbo\\NoCaptcha\\NoCaptchaServiceProvider',
      45 => 'Mews\\Purifier\\PurifierServiceProvider',
    ),
    'aliases' => 
    array (
      'App' => 'Illuminate\\Support\\Facades\\App',
      'Artisan' => 'Illuminate\\Support\\Facades\\Artisan',
      'Auth' => 'Illuminate\\Support\\Facades\\Auth',
      'Blade' => 'Illuminate\\Support\\Facades\\Blade',
      'Cache' => 'Illuminate\\Support\\Facades\\Cache',
      'Config' => 'Illuminate\\Support\\Facades\\Config',
      'Cookie' => 'Illuminate\\Support\\Facades\\Cookie',
      'Crypt' => 'Illuminate\\Support\\Facades\\Crypt',
      'DB' => 'Illuminate\\Support\\Facades\\DB',
      'Eloquent' => 'Illuminate\\Database\\Eloquent\\Model',
      'Event' => 'Illuminate\\Support\\Facades\\Event',
      'File' => 'Illuminate\\Support\\Facades\\File',
      'Gate' => 'Illuminate\\Support\\Facades\\Gate',
      'Hash' => 'Illuminate\\Support\\Facades\\Hash',
      'Lang' => 'Illuminate\\Support\\Facades\\Lang',
      'Log' => 'Illuminate\\Support\\Facades\\Log',
      'Mail' => 'Illuminate\\Support\\Facades\\Mail',
      'Password' => 'Illuminate\\Support\\Facades\\Password',
      'Queue' => 'Illuminate\\Support\\Facades\\Queue',
      'Redirect' => 'Illuminate\\Support\\Facades\\Redirect',
      'Redis' => 'Illuminate\\Support\\Facades\\Redis',
      'Request' => 'Illuminate\\Support\\Facades\\Request',
      'Response' => 'Illuminate\\Support\\Facades\\Response',
      'Route' => 'Illuminate\\Support\\Facades\\Route',
      'Schema' => 'Illuminate\\Support\\Facades\\Schema',
      'Session' => 'Illuminate\\Support\\Facades\\Session',
      'Storage' => 'Illuminate\\Support\\Facades\\Storage',
      'URL' => 'Illuminate\\Support\\Facades\\URL',
      'Validator' => 'Illuminate\\Support\\Facades\\Validator',
      'View' => 'Illuminate\\Support\\Facades\\View',
      'Form' => 'Collective\\Html\\FormFacade',
      'Html' => 'Collective\\Html\\HtmlFacade',
      'Activation' => 'Cartalyst\\Sentinel\\Laravel\\Facades\\Activation',
      'Reminder' => 'Cartalyst\\Sentinel\\Laravel\\Facades\\Reminder',
      'Sentinel' => 'Cartalyst\\Sentinel\\Laravel\\Facades\\Sentinel',
      'Datatables' => 'yajra\\Datatables\\Datatables',
      'Socialite' => 'Laravel\\Socialite\\Facades\\Socialite',
      'Image' => 'Intervention\\Image\\Facades\\Image',
      'Share' => 'Chencha\\Share\\ShareFacade',
      'SocialAuth' => 'AdamWathan\\EloquentOAuth\\Facades\\OAuth',
      'Helper' => 'App\\Helpers\\Helper',
      'Newsletter' => 'Spatie\\Newsletter\\NewsletterFacade',
      'PDF' => 'Barryvdh\\DomPDF\\Facade',
      'DNS1D' => 'Milon\\Barcode\\Facades\\DNS1DFacade',
      'DNS2D' => 'Milon\\Barcode\\Facades\\DNS2DFacade',
      'NoCaptcha' => 'Anhskohbo\\NoCaptcha\\Facades\\NoCaptcha',
      'Purifier' => 'Mews\\Purifier\\Facades\\Purifier',
    ),
  ),
  'filesystems' => 
  array (
    'default' => 'local',
    'cloud' => 's3',
    'disks' => 
    array (
      'local' => 
      array (
        'driver' => 'local',
        'root' => '/var/www/html/laravel/storage/app',
      ),
      'public' => 
      array (
        'driver' => 'local',
        'root' => '/var/www/html/laravel/storage/app/public',
        'visibility' => 'public',
      ),
      's3' => 
      array (
        'driver' => 's3',
        'key' => 'your-key',
        'secret' => 'your-secret',
        'region' => 'your-region',
        'bucket' => 'your-bucket',
      ),
    ),
  ),
  'taggable' => 
  array (
    'delimiters' => ',',
    'glue' => ',',
    'normalizer' => 'mb_strtolower',
  ),
  'laravel-newsletter' => 
  array (
    'apiKey' => 'eeb2261a43e6c2c5cb032c7f39cc8475-us13',
    'defaultListName' => 'subscribers',
    'lists' => 
    array (
      'subscribers' => 
      array (
        'id' => '1ed8d75738',
      ),
    ),
    'ssl' => true,
  ),
  'datatables' => 
  array (
    'search' => 
    array (
      'case_insensitive' => true,
      'use_wildcards' => false,
    ),
    'fractal' => 
    array (
      'serializer' => 'League\\Fractal\\Serializer\\DataArraySerializer',
    ),
  ),
  'barcode' => 
  array (
    'store_path' => '/var/www/html/laravel/public//',
  ),
  'messenger' => 
  array (
    'message_model' => 'Cmgmyr\\Messenger\\Models\\Message',
    'participant_model' => 'Cmgmyr\\Messenger\\Models\\Participant',
    'thread_model' => 'Cmgmyr\\Messenger\\Models\\Thread',
    'messages_table' => NULL,
    'participants_table' => NULL,
    'threads_table' => NULL,
    'user_model' => 'App\\User',
  ),
  'ide-helper' => 
  array (
    'filename' => '_ide_helper',
    'format' => 'php',
    'meta_filename' => '.phpstorm.meta.php',
    'include_fluent' => false,
    'write_model_magic_where' => true,
    'include_helpers' => false,
    'helper_files' => 
    array (
      0 => '/var/www/html/laravel/vendor/laravel/framework/src/Illuminate/Support/helpers.php',
    ),
    'model_locations' => 
    array (
      0 => 'app',
    ),
    'extra' => 
    array (
      'Eloquent' => 
      array (
        0 => 'Illuminate\\Database\\Eloquent\\Builder',
        1 => 'Illuminate\\Database\\Query\\Builder',
      ),
      'Session' => 
      array (
        0 => 'Illuminate\\Session\\Store',
      ),
    ),
    'magic' => 
    array (
      'Log' => 
      array (
        'debug' => 'Monolog\\Logger::addDebug',
        'info' => 'Monolog\\Logger::addInfo',
        'notice' => 'Monolog\\Logger::addNotice',
        'warning' => 'Monolog\\Logger::addWarning',
        'error' => 'Monolog\\Logger::addError',
        'critical' => 'Monolog\\Logger::addCritical',
        'alert' => 'Monolog\\Logger::addAlert',
        'emergency' => 'Monolog\\Logger::addEmergency',
      ),
    ),
    'interfaces' => 
    array (
    ),
    'custom_db_types' => 
    array (
    ),
    'model_camel_case_properties' => false,
    'type_overrides' => 
    array (
      'integer' => 'int',
      'boolean' => 'bool',
    ),
  ),
  'session' => 
  array (
    'driver' => 'file',
    'lifetime' => 120,
    'expire_on_close' => false,
    'encrypt' => false,
    'files' => '/var/www/html/laravel/storage/framework/sessions',
    'connection' => NULL,
    'table' => 'sessions',
    'lottery' => 
    array (
      0 => 2,
      1 => 100,
    ),
    'cookie' => 'laravel_session',
    'path' => '/',
    'domain' => NULL,
    'secure' => false,
  ),
  'mail' => 
  array (
    'driver' => 'mailgun',
    'host' => 'smtp.mailgun.org',
    'port' => '587',
    'from' => 
    array (
      'address' => 'admin@admin.com',
      'name' => 'John Doe',
    ),
    'encryption' => NULL,
    'username' => 'postmaster@emails.msaeed.de',
    'password' => 'c968ceaa88fa411f8dafb984df97433e',
    'sendmail' => '/usr/sbin/sendmail -bs',
    'pretend' => false,
  ),
  'debugbar' => 
  array (
    'enabled' => NULL,
    'storage' => 
    array (
      'enabled' => true,
      'driver' => 'file',
      'path' => '/var/www/html/laravel/storage/debugbar',
      'connection' => NULL,
      'provider' => '',
    ),
    'include_vendors' => true,
    'capture_ajax' => true,
    'add_ajax_timing' => false,
    'error_handler' => false,
    'clockwork' => false,
    'collectors' => 
    array (
      'phpinfo' => true,
      'messages' => true,
      'time' => true,
      'memory' => true,
      'exceptions' => true,
      'log' => true,
      'db' => true,
      'views' => true,
      'route' => true,
      'laravel' => false,
      'events' => false,
      'default_request' => false,
      'symfony_request' => true,
      'mail' => true,
      'logs' => false,
      'files' => false,
      'config' => false,
      'auth' => false,
      'gate' => false,
      'session' => true,
    ),
    'options' => 
    array (
      'auth' => 
      array (
        'show_name' => false,
      ),
      'db' => 
      array (
        'with_params' => true,
        'timeline' => false,
        'backtrace' => false,
        'explain' => 
        array (
          'enabled' => false,
          'types' => 
          array (
            0 => 'SELECT',
          ),
        ),
        'hints' => true,
      ),
      'mail' => 
      array (
        'full_log' => false,
      ),
      'views' => 
      array (
        'data' => false,
      ),
      'route' => 
      array (
        'label' => true,
      ),
      'logs' => 
      array (
        'file' => NULL,
      ),
    ),
    'csp-compatible' => false,
    'inject' => true,
    'route_prefix' => '_debugbar',
    'route_domain' => NULL,
  ),
  'cache' => 
  array (
    'default' => 'file',
    'stores' => 
    array (
      'apc' => 
      array (
        'driver' => 'apc',
      ),
      'array' => 
      array (
        'driver' => 'array',
      ),
      'database' => 
      array (
        'driver' => 'database',
        'table' => 'cache',
        'connection' => NULL,
      ),
      'file' => 
      array (
        'driver' => 'file',
        'path' => '/var/www/html/laravel/storage/framework/cache',
      ),
      'memcached' => 
      array (
        'driver' => 'memcached',
        'servers' => 
        array (
          0 => 
          array (
            'host' => '127.0.0.1',
            'port' => 11211,
            'weight' => 100,
          ),
        ),
      ),
      'redis' => 
      array (
        'driver' => 'redis',
        'connection' => 'default',
      ),
    ),
    'prefix' => 'laravel',
  ),
  'purifier' => 
  array (
    'encoding' => 'UTF-8',
    'finalize' => true,
    'cachePath' => '/var/www/html/laravel/storage/app/purifier',
    'cacheFileMode' => 493,
    'settings' => 
    array (
      'default' => 
      array (
        'HTML.Doctype' => 'HTML 4.01 Transitional',
        'HTML.Allowed' => 'div,b,strong,i,em,u,a[href|title],ul,ol,li,p[style],br,span[style],img[width|height|alt|src]',
        'CSS.AllowedProperties' => 'font,font-size,font-weight,font-style,font-family,text-decoration,padding-left,color,background-color,text-align',
        'AutoFormat.AutoParagraph' => false,
        'AutoFormat.RemoveEmpty' => true,
      ),
      'test' => 
      array (
        'Attr.EnableID' => 'true',
      ),
      'youtube' => 
      array (
        'HTML.SafeIframe' => 'true',
        'URI.SafeIframeRegexp' => '%^(http://|https://|//)(www.youtube.com/embed/|player.vimeo.com/video/)%',
      ),
      'custom_definition' => 
      array (
        'id' => 'html5-definitions',
        'rev' => 1,
        'debug' => false,
        'elements' => 
        array (
          0 => 
          array (
            0 => 'section',
            1 => 'Block',
            2 => 'Flow',
            3 => 'Common',
          ),
          1 => 
          array (
            0 => 'nav',
            1 => 'Block',
            2 => 'Flow',
            3 => 'Common',
          ),
          2 => 
          array (
            0 => 'article',
            1 => 'Block',
            2 => 'Flow',
            3 => 'Common',
          ),
          3 => 
          array (
            0 => 'aside',
            1 => 'Block',
            2 => 'Flow',
            3 => 'Common',
          ),
          4 => 
          array (
            0 => 'header',
            1 => 'Block',
            2 => 'Flow',
            3 => 'Common',
          ),
          5 => 
          array (
            0 => 'footer',
            1 => 'Block',
            2 => 'Flow',
            3 => 'Common',
          ),
          6 => 
          array (
            0 => 'address',
            1 => 'Block',
            2 => 'Flow',
            3 => 'Common',
          ),
          7 => 
          array (
            0 => 'hgroup',
            1 => 'Block',
            2 => 'Required: h1 | h2 | h3 | h4 | h5 | h6',
            3 => 'Common',
          ),
          8 => 
          array (
            0 => 'figure',
            1 => 'Block',
            2 => 'Optional: (figcaption, Flow) | (Flow, figcaption) | Flow',
            3 => 'Common',
          ),
          9 => 
          array (
            0 => 'figcaption',
            1 => 'Inline',
            2 => 'Flow',
            3 => 'Common',
          ),
          10 => 
          array (
            0 => 'video',
            1 => 'Block',
            2 => 'Optional: (source, Flow) | (Flow, source) | Flow',
            3 => 'Common',
            4 => 
            array (
              'src' => 'URI',
              'type' => 'Text',
              'width' => 'Length',
              'height' => 'Length',
              'poster' => 'URI',
              'preload' => 'Enum#auto,metadata,none',
              'controls' => 'Bool',
            ),
          ),
          11 => 
          array (
            0 => 'source',
            1 => 'Block',
            2 => 'Flow',
            3 => 'Common',
            4 => 
            array (
              'src' => 'URI',
              'type' => 'Text',
            ),
          ),
          12 => 
          array (
            0 => 's',
            1 => 'Inline',
            2 => 'Inline',
            3 => 'Common',
          ),
          13 => 
          array (
            0 => 'var',
            1 => 'Inline',
            2 => 'Inline',
            3 => 'Common',
          ),
          14 => 
          array (
            0 => 'sub',
            1 => 'Inline',
            2 => 'Inline',
            3 => 'Common',
          ),
          15 => 
          array (
            0 => 'sup',
            1 => 'Inline',
            2 => 'Inline',
            3 => 'Common',
          ),
          16 => 
          array (
            0 => 'mark',
            1 => 'Inline',
            2 => 'Inline',
            3 => 'Common',
          ),
          17 => 
          array (
            0 => 'wbr',
            1 => 'Inline',
            2 => 'Empty',
            3 => 'Core',
          ),
          18 => 
          array (
            0 => 'ins',
            1 => 'Block',
            2 => 'Flow',
            3 => 'Common',
            4 => 
            array (
              'cite' => 'URI',
              'datetime' => 'CDATA',
            ),
          ),
          19 => 
          array (
            0 => 'del',
            1 => 'Block',
            2 => 'Flow',
            3 => 'Common',
            4 => 
            array (
              'cite' => 'URI',
              'datetime' => 'CDATA',
            ),
          ),
        ),
        'attributes' => 
        array (
          0 => 
          array (
            0 => 'iframe',
            1 => 'allowfullscreen',
            2 => 'Bool',
          ),
          1 => 
          array (
            0 => 'table',
            1 => 'height',
            2 => 'Text',
          ),
          2 => 
          array (
            0 => 'td',
            1 => 'border',
            2 => 'Text',
          ),
          3 => 
          array (
            0 => 'th',
            1 => 'border',
            2 => 'Text',
          ),
          4 => 
          array (
            0 => 'tr',
            1 => 'width',
            2 => 'Text',
          ),
          5 => 
          array (
            0 => 'tr',
            1 => 'height',
            2 => 'Text',
          ),
          6 => 
          array (
            0 => 'tr',
            1 => 'border',
            2 => 'Text',
          ),
        ),
      ),
      'custom_attributes' => 
      array (
        0 => 
        array (
          0 => 'a',
          1 => 'target',
          2 => 'Enum#_blank,_self,_target,_top',
        ),
      ),
      'custom_elements' => 
      array (
        0 => 
        array (
          0 => 'u',
          1 => 'Inline',
          2 => 'Inline',
          3 => 'Common',
        ),
      ),
    ),
  ),
  'cartalyst' => 
  array (
    'sentinel' => 
    array (
      'session' => 'cartalyst_sentinel',
      'cookie' => 'cartalyst_sentinel',
      'users' => 
      array (
        'model' => 'App\\User',
      ),
      'roles' => 
      array (
        'model' => 'Cartalyst\\Sentinel\\Roles\\EloquentRole',
      ),
      'permissions' => 
      array (
        'class' => 'Cartalyst\\Sentinel\\Permissions\\StandardPermissions',
      ),
      'persistences' => 
      array (
        'model' => 'Cartalyst\\Sentinel\\Persistences\\EloquentPersistence',
        'single' => false,
      ),
      'checkpoints' => 
      array (
        0 => 'throttle',
        1 => 'activation',
      ),
      'activations' => 
      array (
        'model' => 'Cartalyst\\Sentinel\\Activations\\EloquentActivation',
        'expires' => 259200,
        'lottery' => 
        array (
          0 => 2,
          1 => 100,
        ),
      ),
      'reminders' => 
      array (
        'model' => 'Cartalyst\\Sentinel\\Reminders\\EloquentReminder',
        'expires' => 14400,
        'lottery' => 
        array (
          0 => 2,
          1 => 100,
        ),
      ),
      'throttling' => 
      array (
        'model' => 'Cartalyst\\Sentinel\\Throttling\\EloquentThrottle',
        'global' => 
        array (
          'interval' => 900,
          'thresholds' => 
          array (
            10 => 1,
            20 => 2,
            30 => 4,
            40 => 8,
            50 => 16,
            60 => 12,
          ),
        ),
        'ip' => 
        array (
          'interval' => 900,
          'thresholds' => 5,
        ),
        'user' => 
        array (
          'interval' => 900,
          'thresholds' => 5,
        ),
      ),
    ),
  ),
  'compile' => 
  array (
    'files' => 
    array (
    ),
    'providers' => 
    array (
    ),
  ),
  'social-share' => 
  array (
    'separator' => '&',
    'services' => 
    array (
      'delicious' => 
      array (
        'uri' => 'https://delicious.com/post',
      ),
      'digg' => 
      array (
        'uri' => 'http://www.digg.com/submit',
      ),
      'email' => 
      array (
        'view' => 'social-share::email',
      ),
      'evernote' => 
      array (
        'uri' => 'http://www.evernote.com/clip.action',
      ),
      'facebook' => 
      array (
        'uri' => 'https://www.facebook.com/sharer/sharer.php',
        'urlName' => 'u',
      ),
      'gmail' => 
      array (
        'uri' => 'https://mail.google.com/mail/',
        'urlName' => 'su',
        'titleName' => 'body',
        'extra' => 
        array (
          'view' => 'cm',
          'fs' => 1,
          'to' => '',
          'ui' => 2,
          'tf' => 1,
        ),
      ),
      'gplus' => 
      array (
        'uri' => 'https://plus.google.com/share',
        'only' => 
        array (
          0 => 'url',
        ),
      ),
      'linkedin' => 
      array (
        'uri' => 'http://www.linkedin.com/shareArticle',
        'extra' => 
        array (
          'mini' => 'true',
        ),
      ),
      'pinterest' => 
      array (
        'uri' => 'http://pinterest.com/pin/create/button/',
        'titleName' => 'description',
        'mediaName' => 'media',
      ),
      'reddit' => 
      array (
        'uri' => 'http://www.reddit.com/submit',
      ),
      'scoopit' => 
      array (
        'uri' => 'http://www.scoop.it/oexchange/share',
      ),
      'tumblr' => 
      array (
        'uri' => 'http://www.tumblr.com/share',
        'urlName' => 'u',
        'titleName' => 't',
        'extra' => 
        array (
          'v' => 3,
        ),
      ),
      'twitter' => 
      array (
        'uri' => 'https://twitter.com/intent/tweet',
        'titleName' => 'text',
      ),
      'viadeo' => 
      array (
        'uri' => 'http://www.viadeo.com/',
      ),
      'vk' => 
      array (
        'uri' => 'http://vk.com/share.php',
        'mediaName' => 'image',
        'extra' => 
        array (
          'noparse' => 'false',
        ),
      ),
      'whatsapp' => 
      array (
        'view' => 'social-share::whatsapp',
      ),
    ),
  ),
  'captcha' => 
  array (
    'secret' => '6LdDNSkUAAAAANsno9gFrd_1Olp8W44PDUVR1f4m',
    'sitekey' => '6LdDNSkUAAAAABxw36Ka5NUGiFPXWFGXX2VketbZ',
    'options' => 
    array (
      'timeout' => 2.0,
    ),
  ),
);
