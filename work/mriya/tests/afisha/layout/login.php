<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="./js/jquery.min.js" type="text/javascript"></script>
    <script src="./js/admin.js?id=<?php echo rand(9999,999999) ?>" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="./css/admin.css">
    <link href="./css/starter-template.css"
          tppabs="./css/starter-template.css" rel="stylesheet">
    <link href="./css/bootstrap.min.css"
          tppabs="./css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="content">
    <div class="bd-example">
        <?php
        if(isset($_SESSION['userLoginError'])){
            echo '<div style="color:red;">'.$_SESSION['userLoginError'].'</div>';
        }
        ?>
        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">Login</label>
                <input id="login" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Login">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input id="pwd" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <button class="btn btn-primary">Вход</button>
        </form>
    </div>
</div>
</body>
<script>
    $('button').on('click', function () {
        $.ajax({
            url: './admin.php',
            type: 'post',
            dataType: "json",
            data: {
                email:$('#login').val(),
                pwd:$('#pwd').val(),
                login:true
            },
            statusCode: {
                200: function (response) {
                    //location.reload();
                }
            }
        });
    });
</script>
</html>