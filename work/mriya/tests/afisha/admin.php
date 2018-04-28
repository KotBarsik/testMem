<?php
session_start();
CONST bUrl = '/work/mriya/tests/afisha';
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
        require_once 'layout/header.php';
        require_once 'layout/menu.php';
        $eventsType = $eventsType = $this->CRUD->getAllEventsType();
        if($id === false) {
            $events = $this->CRUD->getAllEvents();
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
        require_once 'layout/header.php';
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
        elseif($data['type'] == 'categories'){
            $this->CRUD->updateCategoryById($data);
        }
        $data = '';
    }

    public function create($data){
        if($data['type'] == 'event') {
            return $this->CRUD->createEvent($data);
        }
        elseif($data['type'] == 'categories'){
            return $this->CRUD->createEventType($data);
        }
    }

    public function delete($type,$id){
        if($type == 'categories') {
            $this->CRUD->deleteEventType($id);
            header("Location: ".bUrl."/admin.php?load=categories");
        }elseif ($type == 'event'){
            $this->CRUD->deleteEvent($id);
            header("Location: ".bUrl."/admin.php?load=event");
        }
    }

    public function login(){
        require_once './layout/login.php';
    }

    public function checkUser($data){
        return $this->CRUD->checkUser($data['login'],md5($data['pwd']));
    }

};

$admin = new Admin();
$admin->load();

if($_SERVER['REQUEST_URI'] == bUrl.'/admin.php' || $_SERVER['REQUEST_URI'] == bUrl.'/admin.php?'){
    if($_SESSION['userData']) {
        $admin->event(false);
    }
    else{
        $admin->login();
    }
}

$id = !isset($_GET['id']) ? false : (int)$_GET['id'];

if($_GET['load'] == 'event') {
    if(checkUser()) {
        $admin->event($id);
    }
    else{
        $admin->login();
    }
}
elseif($_GET['load'] == 'categories'){
    if(checkUser()) {
        $admin->categories($id);
    }
    else{
        $admin->login();
    }
}
elseif($_GET['load'] == 'delete'){
    if(checkUser()) {
        $admin->delete($_GET['type'], $_GET['id']);
    }
    else{
        $admin->login();
    }
}
elseif ($_GET['load'] == 'exit'){
    unset($_SESSION['userData']);
    header('Location: '.bUrl.'/admin.php');
}
elseif($_POST['update']){
    if(checkUser()) {
        $admin->update($_POST);
    }
    else{
        $admin->login();
    }
}
elseif($_POST['create']){
    if(checkUser()) {
        echo $admin->create($_POST);
    }
    else{
        $admin->login();
    }
}elseif($_POST['login']){
    $result = $admin->checkUser(array(
        'login' => $_POST['email'],
        'pwd' => $_POST['pwd']
    ));
    if(isset($result[0]['id'])){
        unset($result[0]['pwd']);
        $_SESSION['userData'] = $result[0];
        unset($_SESSION['userLoginError']);
        echo 'ok';
        exit();
    }
    else{
        $_SESSION['userLoginError'] = 'Неверный логин или пароль';
    }
}

function checkUser(){
    if($_SESSION['userData']['id']){
        return true;
    }

    return false;
}