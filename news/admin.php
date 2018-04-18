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
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
</head>
<body>
<?php
    require_once 'layout/eventType.php';
?>
</body>
</html>