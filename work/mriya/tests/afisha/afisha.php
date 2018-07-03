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
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="./js/jquery.min.js" type="text/javascript" async="" crossorigin=""></script>
    <script src="./js/script.js" type="text/javascript" async="" crossorigin=""></script>
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <style>
        body > div.back {
            background-color: #4e4e4e;
            width: 100%;
            text-align: center;
            padding-top: 25px;
            padding-bottom: 26px;
            color: #fff;
            font-weight: 800;
            font-family: Arial, Helvetica, sans-serif !important;
            display: none;
            position: fixed;
            z-index: 999;
            bottom: 0px;
        }

        #posterList{
            padding-bottom: 37px;
        }

        #poster{
            padding-bottom: 68px;
        }

        .gif{
            text-align: center;
        }

        .gif > img{
            margin-top: 100px;
            width: 100px;
            height: 100px;
        }

        #messages{
            text-align: center;
            margin-top: 10px;
        }

    </style>
</head>
<body>
<div id="gif" class="gif"><img src="./img/spinner.gif" alt="spin"/></div>
<div id="back" class="back" style="display: none;" lvl="low" onselectstart="return false" onmousedown="return false" onclick="backFunction($(this));">Вернуться к списку</div>
<div id="list" style="display: none;">
<div group="list" onclick="showElements('0');" style="background-image: url(./img/mriyaSpaces.jpg); background-size: cover; width: 100%; height: 190px;color: #fff;display: table;font-family: Arial, Helvetica, sans-serif !important;">
    <div style="vertical-align: bottom; display: table-cell;background: linear-gradient(to top, #333, #fff0 50%);">
        <table style="width: 100%">
            <tbody><tr>
                <td></td>
                <td style="text-align: right;"><div style="font-weight: bold;font-size: 16px">Специальные предложения</div></td>
            </tr>
            <tr>
                <td style="font-size: 12px; color: #d6d6d6;"></td>
                <td style="text-align: right"><div style="font-size: 12px; color: #d6d6d6;"></div></td>
            </tr>
            </tbody></table>
    </div>
</div>
<!--<div group="list" onclick="showElements('1');" style="background-image: url(./upload/); background-size: cover; width: 100%; height: 190px;color: #fff;display: table;font-family: Arial, Helvetica, sans-serif !important;">
    <div style="vertical-align: bottom; display: table-cell;background: linear-gradient(to top, #333, #fff0 50%);">
        <table style="width: 100%">
            <tbody><tr>
                <td></td>
                <td style="text-align: right;"><div style="font-weight: bold;font-size: 16px">Специальная цена</div></td>
            </tr>
            <tr>
                <td style="font-size: 12px; color: #d6d6d6;"></td>
                <td style="text-align: right"><div style="font-size: 12px; color: #d6d6d6;"></div></td>
            </tr>
            </tbody></table>
    </div>
</div>
<div group="list" onclick="showElements('2');" style="background-image: url(./upload/); background-size: cover; width: 100%; height: 190px;color: #fff;display: table;font-family: Arial, Helvetica, sans-serif !important;">
    <div style="vertical-align: bottom; display: table-cell;background: linear-gradient(to top, #333, #fff0 50%);">
        <table style="width: 100%">
            <tbody><tr>
                <td></td>
                <td style="text-align: right;"><div style="font-weight: bold;font-size: 16px">Акции</div></td>
            </tr>
            <tr>
                <td style="font-size: 12px; color: #d6d6d6;"></td>
                <td style="text-align: right"><div style="font-size: 12px; color: #d6d6d6;"></div></td>
            </tr>
            </tbody></table>
    </div>
</div>-->
</div>
<div id="posterList" style="display: none">
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

        $typeSentence = ['Специальное предложение' => 0,'Специальная цена' => 1,'Акции' => 2];
        $typeSentenceValue = 'typeSentence="'.$typeSentence[$item['typeSentence']].'"';

        $typeSentenceIngore = ['КАЖДАЯ 7 НОЧЬ - В ПОДАРОК!','РАННЕЕ БРОНИРОВАНИЕ','Я - КРЫМЧАНИН!','ОТЕЛЬ ДЛЯ ДЕТЕЙ БЕСПЛАТНО!','ДНЕВНОЕ ПОСЕЩЕНИЕ','АКЦИИ В РЕСТОРАНАХ','ПОДАРОЧНЫЕ СЕРТИФИКАТЫ','DENTAL CHECK UP'];

        $typeSentenceValue = is_numeric(array_search($item['title'],$typeSentenceIngore)) ? 'typeSentence="99"' : $typeSentenceValue;

        $html = '
            <div '.$typeSentenceValue.' onclick="getPoster(\'' . $item['id'] . '\',$(this));" style="background-image: url(' . $imgPath . '); background-size: cover; width: 100%; height: 190px;color: #fff;display: table;font-family: Arial, Helvetica, sans-serif !important;">
                <div style="vertical-align: bottom; display: table-cell;background: linear-gradient(to top, #333, #fff0 50%);">
                    <table style="width: 100%">
                        <tr>
                            <td><img src="./img/clock.png"></td>
                            <td style="text-align: right;"><div style="font-weight: bold;font-size: 16px">' . $item['title'] . '</div></td>
                        </tr>
                        <tr>
                            <td style="font-size: 12px; color: #d6d6d6;">' . $date . '</td>
                            <td style="text-align: right"><div style="font-size: 12px; color: #d6d6d6;">' . $item['typeSentence'] . '</div></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div></div>';

        echo $html;

    }
?>
<div id="messages"></div>
</div>
<div id="poster" style="display: none;">
    <div id="eventDescription" class="eventDescription"></div>
</div>
</body>
</html>

