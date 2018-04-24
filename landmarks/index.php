<?php
$file = file_get_contents('./mriya.csv');
$data = explode('"cat_id","route"',$file);
$data = explode(',""',$data[1]);

$newData = [];

function starsCount($str){
    $str = explode(':',$str);
    $stars = trim($str[1]);
    $scale = preg_match_all('/✬/',$stars);
    return $scale;
}

foreach ($data as $items){
    $item = explode('","',$items);
    $newData[] = array(
        'title' => trim(trim($item[0]),'"'),
        'img' => $item[1],
        'availability' => starsCount($item[2]),
        'entertainment' => starsCount($item[3]),
        'long' => $item[4],
        'lat' => $item[5],
        'description' => trim($item[6]),
        'city' => $item[7],
        'place' => $item[8],
        'cat' => trim($item[9],'"')
    );
}

file_put_contents('to.json',json_encode($newData,JSON_UNESCAPED_UNICODE));
exit();