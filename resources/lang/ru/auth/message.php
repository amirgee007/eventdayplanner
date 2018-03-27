<?php
/**
* Language file for auth error messages
*
*/

return array(

    'account_already_exists' => 'Учетная запись уже существует.',
    'account_not_found'      => 'Имя пользователя или пароль неверны.',
    'email_not_found'      => 'Неправильное письмо.',
    'account_not_activated'  => 'Эта учетная запизь неактивна.',
    'account_suspended'      => 'Учетная запись пользователя заблокирована в результате многих неудачных попыток входа. Блокировка будет снята через [:delay] секунд',
    'account_banned'         => 'Действие учетной записи пользователя приостановлено.',

    'signin' => array(
        'error'   => 'Возникла ошибка во время входа в систему, пожалуйста попробуйте еще раз.',
        'success' => 'Вы успешно вошли в систему.',
    ),

    'signup' => array(
        'error'   => 'Возникла ошибка при создании вашей учетной записи, попробуйте еще раз позже.',
        'success' => 'Учетная запись успешно создана.',
    ),

        'forgot-password' => array(
            'error'   => 'Возникла ошибка при попытке сбросить пароль, попробуйте еще раз позже.',
            'success' => 'Инструкции по сбросу пароля отправления на email.',
        ),

        'forgot-password-confirm' => array(
            'error'   => 'Возникла ошибка при попытке сбросить пароль, попробуйте еще раз позже.',
            'success' => 'Ваш пароль успешно сброшен.',
        ),

    'activate' => array(
        'error'   => 'Возникла проблема во время активации вашей учетной записи, попробуйте еще раз позже.',
        'success' => 'Ваша учетная запись успешно активирована.',
    ),

);
