<?php
$language = array(
    'ru' => array(
        'post' => 'Прошедшие',
        'upcoming' => 'Предстоящие'
    )
);

$lang = 'ru';

$data = array(
    [
        'day' => '17',
        'month' => 'APR',
        'title' => 'О, Счастливчик!',
        'eventType' => 'Игра',
        'date' => '4/17/2018 9:15 PM - 11:00 PM'
    ],
    [
        'day' => '17',
        'month' => 'APR',
        'title' => 'О, Счастливчик!',
        'eventType' => 'Игра',
        'date' => '4/17/2018 9:15 PM - 11:00 PM'
    ],
    [
        'day' => '17',
        'month' => 'APR',
        'title' => 'О, Счастливчик!',
        'eventType' => 'Игра',
        'date' => '4/17/2018 9:15 PM - 11:00 PM'
    ],
    [
        'day' => '17',
        'month' => 'APR',
        'title' => 'О, Счастливчик!',
        'eventType' => 'Игра',
        'date' => '4/17/2018 9:15 PM - 11:00 PM'
    ]
);

?>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="./js/jquery.min.js" type="text/javascript" async="" crossorigin=""></script>
    <script src="./js/script.js" type="text/javascript" async="" crossorigin=""></script>
    <style>
        @font-face {
            font-family: Pompadur; /* Гарнитура шрифта */
            src: url(./font/OpenSans.ttf); /* Путь к файлу со шрифтом */
        }

        li {
            list-style-type: none; /* Убираем маркеры */
            float: left;
        }

        ul {
            padding: 0px;
            margin: 0px;
        }

        table{
            margin: 0px;
            padding: 0px;
        }

        body {
            margin: 0px;
            max-width: 100%;
            font-family: Arial, Helvetica, sans-serif;;
            background-image: url(img/background.png);
            font-size: 14px;
            background-repeat: no-repeat;
            /*background-image: url(https://s8.hostingkartinok.com/uploads/images/2018/04/f73656a69a6f35c6ec28c9f53bc70346.jpg);*/
            background-position-x: 50%;

    }

    .main_content{
        margin: 0px auto;
        max-width: 450px;
    }

    .content{
        width: 315px;
        margin: 0px auto;
    }

    .button > ul{
        margin: 0px auto;
        width: fit-content;
        margin-top: 8px;
    }

    .buttons{
        width: 101px;
        padding: 7px;
        text-align: center;
        color: #fcfbfc;
    }

    .clear{
        clear: both;
    }

    .active{
        background-color: #4e4e4e;
    }

    .unActive{
        background-color: #b49859;
    }

    .item{
        margin-bottom: 10px;
    }

    .item > td{
        padding-bottom: 20px;
    }

    .item > td:first-child{
        width: 20%;
        text-align: center;
    }

    .item > td:last-child{
        width: 10%;
    }

    .tdContent{
        margin-left: 5px;
        padding-left: 10px;
    }

    .tdContent > div{
        margin-top: 4px;
    }
</style>
</head>
<body>
    <div class="main_content">
        <div class="button">
            <ul>
                <li class="buttons active"><?php echo $language[$lang]['post']?></li>
                <li class="buttons unActive"><?php echo $language[$lang]['upcoming']?></li>
                <div class="clear"></div>
            </ul>
            <div class="clear"></div>
        </div>
        <div class="content">
            <table style="width: 100%;margin-top: 10px;border-spacing: 0px 0px;">
                <?php
                foreach ($data as $item){
                echo
                    '<tr class="item">
                        <td>
                            <div style="font-size:28px">'.$item['day'].'</div>
                            <div>'.$item['month'].'</div>
                        </td>
                        <td class="tdContent">
                            <div style="margin-top: 5px"></div>
                            <div>'.$item['title'].'</div>
                            <div>'.$item['eventType'].'</div>
                            <div>'.$item['date'].'</div>
                        </td>
                        <td>
                            <img style="width: 17px;margin-top: 10px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAGfSURBVGhD7dnLKoVhGMXx7VCYyAwzhymSmYgMRTIxkihXIHIHiFyBHO5A3IBcgMhQmImRUznkEP6r7a0nKeO1vat+tfc3W+3v8HzPLuTk5OT8y4yhs/jRNyN4wS36dcAxdVCBz29PUDHLDOIBqcw7pmCZblwjlfnAHCzThgukMrKCMtilCSeIZTZRAbvU4wCxzA6qYZda7CGW2YeO26UK24hljqBfzC66NtYRy5yiGXbRXWsJscwlOmCZWej5ksrcoBeWmcQbUplHDMMymsU0k6UyKjYBy/QhDps65WZgGb2/XCGVkQVYjjStOEcss4Zy2KUBx4hlxmGXRtgXKYlT67eLfRFWF7uWFPa335J4IGopoeVEKqFCdiPKz6FRp5bV0KiLdxmpgNiN8Xqx2kAscYYW2ETLBi0dYgm96upJbhMtGbRsiCX0XStWm2i5cIhYYhc1sIkWdFouxBJbqIRN2qG7USyxCquRowdaJqQCel7MwypD0BIhldCTexpW0V3oDqnEM0ZhGQ2Br7jHgA44R3+GdhU/5uTk5OT8lULhC2e3oQrIGVz7AAAAAElFTkSuQmCC">
                        </td>
                    </tr>';
                }
                ?>
            </table>
        </div>
        <div class="clear"></div>
        <br><br><br><br><br><br>
        <div class="content">
            upcoming
        </div>
    </div>
</body>
</html>
