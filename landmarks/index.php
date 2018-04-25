<?php
require_once './CRUD.php';
require_once './render.php';
$crud = new CRUD();
$render = new render($crud);
if(empty($_GET)) {
    $render->renderMainContent('');
}
elseif($_GET['render'] == 'contentType'){
    $render->renderContentType($_GET['type']);
}
elseif($_GET['render'] == 'contentObject'){
    $render->renderContentObject('');
}
else{
    exit();
}