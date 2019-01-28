<?php
require_once './Connector.php';
require_once './Memcache.php';

$api = new \API\Memcache('127.0.0.1');
$api->set('key','data1');
$r = $api->key;
$get = $api->get('key');
exit();
$api->delete('key');
exit();