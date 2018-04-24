<?php
require_once './CRUD.php';
require_once './render.php';
$crud = new CRUD();
$render = new render($crud);
$render->render('');
