<?php
require_once './CRUD.php';
$crud = new CRUD();
$category = $crud->getCategory();
$categoryNewFormat = [];

$types = $crud->getCategoryType();

foreach ($category as $new){
    $categoryNewFormat[$new['name']] = $new['id'];
}

$typesNews = [];
$typesNewsAlt = [];
foreach ($types as $new){
    $typesNews[$new['name']] = $new['id'];
    if($new['name_alt']){
        $typesNewsAlt[$new['name_alt']] = $new['id'];
    }
}

$data = file_get_contents('./to.json');
$data = json_decode($data,true);

$newFormatItems = [];

$not = [];

foreach ($data as $items){
    $items['place'] = $categoryNewFormat[$items['place']];
    if(!$typesNews[$items['cat']]){
        $items['cat'] = $typesNewsAlt[$items['cat']];
    }
    else{
        $items['cat'] = $typesNews[$items['cat']];
    }
    $newFormatItems[] = $items;
}
$crud->insertItems($newFormatItems);
exit();