<?php
function dateDiff($start,$stop,$preview){
    $dateArray = array();
    foreach (array($start,$stop) as $date){
        $dateArray[] = explode(' ',$date);
    }
    if($dateArray[0][0] == $dateArray[1][0]){
        return $preview;
    }
    else{
        $str = '';
        foreach (array($dateArray[0],$dateArray[1]) as $date){
            $d = explode('-',$date[0]);
            $t = explode(':',$date[1]);
            $str .= $d[1].'.'.$d[2].'.'.str_replace('20','',$d[0]).' '.$t[0].':'.$t[1].' - ';
        }
        return trim($str,' - ');
    }
}

if(is_numeric($_POST['id'])) {
    header("Content-type: application/json; charset=utf-8");
    require_once 'CRUD.php';
    $CRUD = new CRUD();
    if($_POST['type'] != 'postr') {
        $result = $CRUD->getEventById((int)$_POST['id']);
        $preview = dateDiff($result[0]['start_time'],$result[0]['stop_time'],$result[0]['events_start_preview']);
        $result[0]['events_start_preview'] = $preview;
        $result[0]['text'] = htmlspecialchars_decode($result[0]['text']);
        echo json_encode($result[0]);
    }
    else{
        $result = $CRUD->getPostrById((int)$_POST['id']);
        $result[0]['html'] = htmlspecialchars_decode($result[0]['html']);
        echo json_encode($result[0]);
    }
}
