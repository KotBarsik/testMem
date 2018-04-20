<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="<?php echo bUrl?>/js/jquery.min.js" type="text/javascript" async="" crossorigin=""></script>
    <script src="<?php echo bUrl?>/js/admin.js" type="text/javascript" async="" crossorigin=""></script>
    <link rel="stylesheet" type="text/css" href="./css/admin.css">
    <link href="http://bootstrap-v4.ru/examples/starter-template/starter-template.css"
          tppabs="http://bootstrap-v4.ru/examples/starter-template/starter-template.css" rel="stylesheet">
    <link href="http://bootstrap-v4.ru/dist/css/bootstrap.min.css"
          tppabs="http://bootstrap-v4.ru/dist/css/bootstrap.min.css" rel="stylesheet">
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
            url: '<?php echo bUrl?>/admin.php',
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