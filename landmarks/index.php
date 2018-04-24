<?php
require_once './CRUD.php';
require_once './render.php';
$crud = new CRUD();
$render = new render($crud);
$render->render('');
/*
$input = [
    'lat' => 53.5303000,
    'long' => 49.3461000
];

$output = [
    'lat' => 53.2000700,
    'long' => 50.1500000
];


$m = $crud->calculateTheDistance($input,$output);
$category = $crud->getCategory();
$categoryType = $crud->getCategoryType();

foreach ($category as $cat){
    echo '<a><img src="./images/'.$cat['eng_name'].'.jpg" /></a>';
}
*/
exit();
