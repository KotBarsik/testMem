<?php
if(is_numeric($_POST['id'])) {
    header("Content-type: application/json; charset=utf-8");
    require_once 'CRUD.php';
    $CRUD = new CRUD();
    if(!empty($_POST['postr'])) {
        $result = $CRUD->getEventById((int)$_POST['id']);
        $result[0]['text'] = htmlspecialchars_decode($result[0]['text']);
        echo json_encode($result[0]);
    }
    else{
        $result = $CRUD->getPostrById((int)$_POST['id']);
        $result[0]['html'] = htmlspecialchars_decode($result[0]['html']);
        echo json_encode($result[0]);
    }
}
