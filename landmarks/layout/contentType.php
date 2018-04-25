<?php
foreach ($data['contentType'] as $types){
    echo '<div style="width:50%;float:left" type="'.$cat['eng_name'].'"><img style="width:100%" src="./images/'.$data['type'].'/'.$types['eng_name'].'.jpg"></div>';
}