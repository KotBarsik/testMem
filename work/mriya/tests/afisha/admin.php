<?php
//error_reporting(E_ALL);
//ini_set('display_errors', 1);
session_start();

define('bUrl',str_replace('/admin.php','',$_SERVER['REQUEST_URI']));
define('ROOT_DIR', dirname(__FILE__));
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
            //$eventById = $this->CRUD->getEventAllDataById($id);
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

    public function poster($id){
        require_once 'layout/header.php';
        require_once 'layout/menu.php';

        if($id === false) {
            $posters = $this->CRUD->getAllPosters();
            require_once 'layout/posterList.php';
        }
        elseif ($id >= 1){
            $posters = $this->CRUD->getPosterAllDataById($id);
            require_once 'layout/poster.php';
        }
        elseif ($id == 0){
            require_once 'layout/poster.php';
        }
    }

    public function update($data){
        if($data['type'] == 'event'){
            $this->CRUD->updateEventById($data);
        }
        elseif($data['type'] == 'categories'){
            $this->CRUD->updateCategoryById($data);
        }
        elseif($data['type'] == 'poster'){
            $this->CRUD->updatePosterById($data);

            if(strlen($_FILES['images']['name']) >= 2){
                $imgName = $this->saveImages($_FILES);
                $this->CRUD->updateImagesById($imgName,$data['itemId']);
            }

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
        elseif ($data['type'] == 'poster'){
            $posetrId =  $this->CRUD->createPoster($data);

            if(count($_FILES) >= 1){
                $imgName = $this->saveImages($_FILES);
                $this->CRUD->updateImagesById($imgName,$posetrId);
            }
            return $posetrId;
        }
    }

    public function delete($type,$id){
        if($type == 'categories') {
            $this->CRUD->deleteEventType($id);
            header("Location: ./admin.php?load=categories");
        }elseif ($type == 'event'){
            $this->CRUD->deleteEvent($id);
            header("Location: ./admin.php?load=event");
        }
        elseif ($type == 'poster'){
            $this->CRUD->deletePoster($id);
            header("Location: ./admin.php?load=poster");
        }
    }

    public function login(){
        require_once './layout/login.php';
    }

    public function checkUser($data){
        return $this->CRUD->checkUser($data['login'],md5($data['pwd']));
    }

    public function saveImages($img){
        $imageSize = getimagesize($img['images']['tmp_name']);
        if(
            $imageSize['mime'] == 'image/jpeg' ||
            $imageSize['mime'] == 'image/jpg' ||
            $imageSize['mime'] == 'image/png' ||
            $imageSize['mime'] == 'image/gif'
        ){
            $path = './upload/';
            $type = str_replace('image/','',$imageSize['mime']);
            $imgName = md5($img['images']['name']).'.'.$type;

            try {
                if (!move_uploaded_file($img['images']['tmp_name'], $path.$imgName)) {
                    return false;
                } else {
                    return $imgName;
                }
            }catch (Exception $exception){
                $m = $exception->getMessage();
            }
        }

        return false;
    }
};

$admin = new Admin();
$admin->load();

if($_SERVER['REQUEST_URI'] == bUrl.'/admin.php' || $_SERVER['REQUEST_URI'] == bUrl.'/admin.php?' AND empty($_POST['pwd'])){
    if($_SESSION['userData']) {
        $admin->event(false);
    }
    else{
        $admin->login();
    }
}

$id = !isset($_GET['id']) ? false : (int)$_GET['id'];

if($_POST['update']){
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
}

if(empty($_GET['load']) && empty($_POST['login'])){
    $_GET['load'] = 'event';
}

if($_GET['load'] == 'event') {
    if(checkUser()) {
        $admin->event($id);
    }
    else{
        $admin->login();
    }
}
elseif($_GET['load'] == 'poster') {
    if(checkUser()) {
        $admin->poster($id);
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
    header('Location: ./admin.php');
}
elseif($_POST['login']){
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