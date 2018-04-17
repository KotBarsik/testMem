<?php
require_once 'get.php';

$data = array(
    [
        'day' => '17',
        'month' => 'APR',
        'title' => 'О, Счастливчик!',
        'eventType' => 'Игра',
        'date' => '4/17/2018 9:15 PM - 11:00 PM'
    ]
);

$get = new Get();
$data = $get->getAllEvents();
$data = $get->mapping($data);
$language = array(
    'ru' => array(
        'post' => 'Прошедшие',
        'upcoming' => 'Предстоящие'
    )
);

$lang = 'ru';

?>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="./js/jquery.min.js" type="text/javascript" async="" crossorigin=""></script>
    <script src="./js/script.js" type="text/javascript" async="" crossorigin=""></script>
    <link rel="stylesheet" type="text/css" href="./css/style.css">
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
    </div>
</body>
</html>
