<?php
foreach ($data['contentType'] as $types){
    $imgPath = './images/'.$data['type'].'/'.$types['eng_name'].'.jpg';
    if(file_exists($imgPath)) {
        echo '<div onclick="load(\'contentObject\','.$types['id'].')" style="width:50%;float:left" type="' . $cat['eng_name'] . '"><img style="width:100%" src="' . $imgPath . '"></div>';
    }
}

if(count($data['contentObjectByContentType']) >= 1){
    echo '<div style="clear:both"></div>';
    $this->content('./layout/contentObject.php',[
        'objectLvl' => 'lvl',
        'contentType' => $data['contentObjectByContentType']
    ]);
}

echo '<div id="backName" text="'.$data['back'].'" style="display: none;" ></div>';