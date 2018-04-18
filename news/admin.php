<?php
session_start();

class Admin{

    public function __construct(){

    }

    public function load(){

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
<nav class="navbar navbar-fixed-top navbar-dark bg-inverse">
    <a class="navbar-brand" href="#">Project name</a>
    <ul class="nav navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">About</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
        </li>
    </ul>
</nav>
<?php
require_once 'layout/login.php';
?>
</body>
</html>