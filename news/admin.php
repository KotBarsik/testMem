<?php
session_start();

class Admin{

    /**
     * @var CRUD
     */
    public $CRUD;

    public function __construct(){
        require_once './CRUD.php';
        $this->CRUD = new CRUD();
    }

    public function load(){

    }

    public function render(){
        require_once 'layout/menu.php';
        require_once 'layout/event.php';
    }

    public function event($id){
        require_once 'layout/menu.php';
        if($id === false) {
            $events = $this->CRUD->getAllEvents();
            $eventsType = $this->CRUD->getAllEventsType();

            foreach ($eventsType as $eventType){
                $eventsType['format'][$eventType['id']] = $eventType;
            }

            require_once 'layout/eventList.php';
        }
        elseif ($id >= 1){
            $eventById = $this->CRUD->getEventAllDataById($id);
            require_once 'layout/event.php';
        }
        elseif ($id == 0){
            $eventById = $this->CRUD->getEventAllDataById($id);
            require_once 'layout/event.php';
        }
    }

    public function categories($id){
        require_once 'layout/menu.php';
        if($id === false) {
            $eventsType = $this->CRUD->getAllEventsType();
            require_once 'layout/eventTypeList.php';
        }
        elseif ($id >= 1){
            $eventsType = $this->CRUD->getEventTypeAllDataById($id);
            require_once 'layout/eventType.php';
        }
        elseif ($id == 0){
            require_once 'layout/eventType.php';
        }
    }

    public function update($data){
        if($data['type'] == 'event'){
            $this->CRUD->updateEventById($data);
        }
        $data = '';
    }

    public function create($data){

    }

};

$admin = new Admin();
$admin->load();

?>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="./js/jquery.min.js" type="text/javascript" async="" crossorigin=""></script>
    <script src="./js/admin.js" type="text/javascript" async="" crossorigin=""></script>
    <link rel="stylesheet" type="text/css" href="./css/admin.css">
    <link href="http://bootstrap-v4.ru/examples/starter-template/starter-template.css" tppabs="http://bootstrap-v4.ru/examples/starter-template/starter-template.css" rel="stylesheet">
    <link href="http://bootstrap-v4.ru/dist/css/bootstrap.min.css" tppabs="http://bootstrap-v4.ru/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<?php

$id = !isset($_GET['id']) ? false : (int)$_GET['id'];

if($_GET['load'] == 'event') {
    $admin->event($id);
}
elseif ($_GET['load'] == 'categories'){
    $admin->categories($id);
}
elseif($_POST['update']){
    $admin->update($_POST);
}

?>
</body>
</html>