<?php
require_once './CRUD.php';
require_once './render.php';
$crud = new CRUD();
$render = new render($crud);
if(!$_GET['render']) {
    $render->renderMainContent('');
}
elseif($_GET['render'] == 'contentType'){
    $render->renderContentType($_GET['type']);
}
elseif($_GET['render'] == 'contentObject'){
    $render->renderContentObject($_GET['typeId']);
}
elseif($_GET['render'] == 'object'){
    $render->renderObject($_GET['id']);
}elseif ($_GET['render'] == 'json'){
    $str = json_encode($render->renderJson(''),JSON_UNESCAPED_UNICODE);
    echo $str;
}