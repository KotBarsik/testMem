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
        <div id="error" style="color:red;height:30px">
            <?php
            if(isset($_SESSION['userLoginError'])){
                echo $_SESSION['userLoginError'];
            }
            ?>
        </div>
        <div>
            <div class="form-group">
                <label for="exampleInputEmail1">Login</label>
                <input id="login" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Login">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input id="pwd" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <input id="formCode" type="hidden" value="<?php echo isset($_SESSION['formCode']) ? $_SESSION['formCode'] : '';?>">
            <button class="btn btn-primary">Вход</button>
        </div>
    </div>
</div>
</body>
<script>

        $('button').on('click', function () {
            if($('#pwd').val().length >= 3 && $('#login').val().length >= 3) {
                $.ajax({
                    url: './admin.php',
                    type: 'post',
                    dataType: "json",
                    data: {
                        formCode: $('#formCode').val(),
                        email: $('#login').val(),
                        pwd: $('#pwd').val(),
                        login: true
                    },
                    statusCode: {
                        200: function (response) {
                            location.reload();
                        }
                    }
                });
            }
            else{
                $('#error').html('Заполните все поля');
            }
        });
</script>
</html>