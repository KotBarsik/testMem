<?php
foreach ($data['contentType'] as $types){
    $imgPath = './images/'.$data['type'].'/'.$types['eng_name'].'.jpg';
    if(file_exists($imgPath)) {
        echo '<div style="width:50%;float:left" type="' . $cat['eng_name'] . '"><img style="width:100%" src="' . $imgPath . '"></div>';
    }
}