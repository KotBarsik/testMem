<?php
require_once 'CRUD.php';
$lang = 'ru';

$language = array(
    'ru' => array(
        'post' => 'Прошедшие',
        'upcoming' => 'Предстоящие'
    )
);

$CRUD = new CRUD();
$data['poster'] = $CRUD->getAllPosters();
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
<style>
    body > div.back {
        background-color: #4e4e4e;
        width: 100%;
        text-align: center;
        padding-top: 15px;
        padding-bottom: 16px;
        color: #fff;
        font-weight: 800;
        font-family: Arial, Helvetica, sans-serif !important;
        display: none;
        position: fixed;
        z-index: 999;
    }
</style>
<div id="back" class="back" onclick="$('#posterList').show();$('#poster').hide();$('#back').hide();">Вернуться к списку</div>
<div id="posterList">
<?php
    function formatDate ($start,$stop,$format){
        $m = array(
                '01' => 'Янв',
                '02' => 'Фев',
                '03' => 'Мар',
                '04' => 'Апр',
                '05' => 'Май',
                '06' => 'Июнь',
                '07' => 'Июль',
                '08' => 'Авг',
                '09' => 'Сен',
                '10' => 'Окт',
                '11' => 'Нояб',
                '12' => 'Дек'
        );
        switch ($format){
            case 0:
                return 'Акция';
            break;
            case 1:
                $start = explode('-',(explode(' ',$start,2)[0]));
                $stop = explode('-',(explode(' ',$stop,2)[0]));
                $format = $start[2].'.'.$start[1].'.'.$start[0].' - '.$stop[2].'.'.$stop[1].'.'.$stop[0];
                return $format;
            break;
            case 2:
                $start = explode('-',(explode(' ',$start,2)[0]));
                $stop = explode('-',(explode(' ',$stop,2)[0]));
                $format = $start[2].' '.$m[$start[1]].' - '.$stop[2].' '.$m[$stop[1]];
                return $format;
            break;
        }
    };
    foreach ($data['poster'] as $item) {
        $date = formatDate($item['start'],$item['stop'],$item['typeDate']);
        $imgPath = './upload/'.$item['images'];
        echo
            '<div onclick="getPoster(\''.$item['id'].'\');" style="background-image: url('.$imgPath.'); background-size: cover; width: 100%; height: 190px;color: #fff;display: table;font-family: Arial, Helvetica, sans-serif !important;">
                <div style="vertical-align: bottom; display: table-cell;">
                    <table style="width: 100%">
                        <tr>
                            <td><img src="./img/clock.png"></td>
                            <td style="text-align: right;"><div style="font-weight: bold;font-size: 16px">'.$item['title'].'</div></td>
                        </tr>
                        <tr>
                            <td style="font-size: 12px; color: #d6d6d6;">'.$date.'</td>
                            <td style="text-align: right"><div style="font-size: 12px; color: #d6d6d6;">'.$item['typeSentence'].'</div></td>
                        </tr>
                    </table>
                </div>
            </div><div></div>';
    }
?>
</div>
<div id="poster" style="display: none;">
    <div id="eventDescription" class="eventDescription"></div>
</div>
</body>
</html>

