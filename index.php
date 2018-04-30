<?php
$server = 'prod';

if($_GET['get'] == 'get'){
    echo file_get_contents('log.txt');
    exit();
}elseif(strlen(file_get_contents('php://input')) >= 10 || $_GET['get'] == 'test') {

    if($server == 'prod') {
        $content = file_get_contents('php://input');

        file_put_contents('log.txt', $content);

        $data = $content;
        $data = (json_decode($data, true))['message'];
    }
    elseif ($server == 'dev') {
        if($_GET['type'] == 'local') {
            $data = file_get_contents('http://149.154.71.22:88/?get=get');
            $data = (json_decode($data, true))['message'];
        }
        elseif($_GET['type'] == 'tel'){
            $data = file_get_contents('https://api.telegram.org/bot489423883:AAE2Uzv4WJshSvLEVOOcNZ3kUCrmaHrCszs/getUpdates');
            $data = (json_decode($data, true))['result'];
            $data = $data[count($data) - 1];
        }
    }

    require_once 'Telegram.php';
    require_once 'YandexTranslate.php';
    require_once 'App.php';


    $app = (new App)->run($data);

    unset($app);
    exit();
}