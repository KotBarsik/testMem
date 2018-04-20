<?php
if(is_numeric($_POST['id'])) {
    header("Content-type: application/json; charset=utf-8");
    require_once 'CRUD.php';
    $CRUD = new CRUD();
    $result = $CRUD->getEventById((int)$_POST['id']);
    echo json_encode($result[0]);
}
