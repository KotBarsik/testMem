<?php
if(is_numeric($_GET['id'])) {
    require_once 'CRUD.php';
    $CRUD = new CRUD();
    $result = $CRUD->getEventById((int)$_GET['id']);
    echo json_encode($result);
}
