<?php
//$data = file_get_contents('http://api.pogoda.com/index.php?api_lang=ru&localidad=255783&affiliate_id=fv27z2phnfu2&v=3.0');
$data = file_get_contents('http://api.pogoda.com/index.php?api_lang=ru&localidad=255788&affiliate_id=fv27z2phnfu2&v=3.0');
$data = json_decode($data,true);

$weather = array();

$prepareWeather = function ($day){
    $data = array(
        'dayName' => $day['name'],
        'dayDate' => $day['date'],
        'symbolAvgSkyDesc' => $day['symbol_description'],
        'symbolAvgSkyVal' => $day['symbol_value'],
        'tempMin' => $day['tempmin'],
        'tempMax' => $day['tempmax'],
        'hours' => array()
    );

    if($day['hour']){
        foreach ($day['hour'] as $hour){
            $data['hours'][] = array(
                'interval' => $hour['interval'],
                'temp' => $hour['temp'],
                'symbolSkyDesc' => $hour['symbol_description'],
                'symbolSkyVal' => $hour['symbol_value']
            );
        }
    }
    return $data;
};

foreach ($data['day'] as $day){
    $weather[] = $prepareWeather($day);
}

function ucfirst_utf8($str)
{
    return mb_substr(mb_strtoupper($str, 'utf-8'), 0, 1, 'utf-8') . mb_substr($str, 1, mb_strlen($str)-1, 'utf-8');
}

?>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @font-face {
            font-family: Pompadur; /* Гарнитура шрифта */
            src: url(./font/OpenSans.ttf); /* Путь к файлу со шрифтом */
        }

        body {
            margin: 0px;
            padding: 15px;
            max-width: 420px;
            background-image: url(img/background.png);
            background-repeat: no-repeat;
            color: #ffffff;
            font-family: 'Open Sans', Pompadur;
            font-size: 14px;
        }

        .cloudImg{
            width: 160px;
        }

        .parentLine{
            overflow-y: hidden;
        }

        .line{
            border-top: 1px solid #e8e89d;
            border-bottom: 1px solid #e8e89d;
            width: 1000px;
        }

        .clear{
            clear: both;
        }

        .cloudHours:first-child{
            margin-left: 25px;
        }

        .cloudHours{
            float:left;
            margin-right: 20px;
            margin-left: 20px;
        }

        .location{
            font-size: 26px;
        }

        .weather{
            font-size: 16px;
        }

        .cesium{
            font-size: 34px;
        }

        .imgWeather > img{
            margin-left: -15px;
        }

        .hoursImg{
            width: 40px;
        }

        .numberpadding{
            padding: 10px;
        }
    </style>
</head>
<body>
<center>
    <div>
        <div class="location">Ялта, Крым</div
        <div class="weather">
            <?php
                echo $day['symbol_description'];
            ?>
        </div>
        <div class="cesium">
            <?php
                echo $day['tempmax'].' °C';
            ?>
        </div>
        <div class="imgWeather">
            <img src="./img/colored/day/<?php echo $day['symbol_value'] ?>.png">
        </div>
    </div>
</center>
<div>
    Понедельник
</div>
<div class="parentLine">
    <div class="line">
        <?php
            foreach ($weather[0]['hours'] as $hour){
                list($date) = explode(':',$hour['interval'],2);
                echo '<div class="cloudHours">';
                    echo "<div class='numberpadding'>$date</div>";
                    echo "<div><img class='hoursImg' src='./img/white/day/{$hour['symbolSkyVal']}.png' /></div>";
                    echo "<div class='numberpadding'>{$hour['temp']}</div>";
                echo '</div>';
            }
        ?>
        <div class="clear"></div>
    </div>
</div>
<div>
    <table width="100%" style="margin-top: 15px;">
        <?php
            foreach ($weather as $day){
                $name = ucfirst_utf8($day['dayName']);
                echo "
                    <tr>
                        <td width='60%'>{$name}</td>
                        <td width='20%'><img class='hoursImg' src='./img/white/day/{$day['symbolAvgSkyVal']}.png'/></td>
                        <td width='10%'>{$day['tempMax']}</td>
                        <td width='10%'>{$day['tempMin']}</td>
                    </tr>
                ";
            }
        ?>
    </table>
</div>
</body>
</html>
