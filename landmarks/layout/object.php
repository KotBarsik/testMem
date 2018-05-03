<?php
function getDistanceBetweenPointsNew($one,$two) {
    $latitude1 = $one['lat'];
    $longitude1 = $one['long'];

    $latitude2 = $two['lat'];
    $longitude2 = $two['long'];

    $theta = $longitude1 - $longitude2;
    $miles = (sin(deg2rad($latitude1)) * sin(deg2rad($latitude2))) + (cos(deg2rad($latitude1)) * cos(deg2rad($latitude2)) * cos(deg2rad($theta)));
    $miles = acos($miles);
    $miles = rad2deg($miles);
    $miles = $miles * 60 * 1.1515;
    $feet = $miles * 5280;
    $yards = $feet / 3;
    $kilometers = $miles * 1.609344;
    $meters = $kilometers * 1000;
    return compact('miles','feet','yards','kilometers','meters');
}

function start($stars){
    $str = '';
    for ($i=$stars;$i>=1;$i--){
        $str .= '✬';
    }
    while (true){
        if(strlen($str) < 15){
            $str .= '✩';
        }
        else{
            break;
        }
    }
    return $str;
}

$m = getDistanceBetweenPointsNew(
    [
        'lat' => $_GET['lat'],
        'long' => $_GET['long']
    ],
    [
        'lat' => $data['object'][0]['lat'],
        'long' => $data['object'][0]['long']
    ]
);
?>
<style>
    .img{
        max-width: 380px;
    }
    .content{
        width: 100%;
        text-align: center;
    }

    h2{
        color: #515151;
    }

    .goldColor{
        font-size: 22px;
        color:#b4975b;
        font-weight: bold;
    }

    .point{
        background-image: url(./images/other/contacts1.png);
        background-repeat: no-repeat;
        background-size: 100%;
        width: 20px;
        height: 35px;
        float: left;
    }

    .city{
        float: left;
        margin-top: 8px;
        margin-left: 5px;
    }

    .clear{
        clear: both;
    }

    .navigation{
        width: 99%;
        background-color: #b4975b;
        color: white;
        margin: 0px auto;
        padding-top: 15px;
        padding-bottom: 15px;
    }
</style>
<script>
    function hideMaps() {
        $('div.content').show();
        $('#maps').hide();
        $('div[class="back"]').show();
    }
    function showMaps() {
        $('div.content').hide();
        $('#maps').show();
        $('div[class="back"]').hide();
    }
</script>
<div class="content">
    <?php
        $object = $data['object'][0];
        $img = json_decode($object['img']);
        echo '<img class="img" src="'.$img[0].'"></img>';
        echo '<br><br>';
        echo '<h2>'.$object['title'].'</h2>';
    ?>
    <br>
    <div class="goldColor">Доступность : <?php echo start((int)$object['availability']);?></div>
    <div class="goldColor">Зрелешность : <?php echo start((int)$object['entertainment']);?></div>
    <br><br>
    <div>
        <div style="margin:5px;font-weight: bold;float: left;">
            <div class="point"></div>
            <div class="city"><?php echo $data['object'][0]['city']?></div>
            <div class="clear"></div>
        </div>
        <div style="margin:5px;font-weight: bold;float: right;">
            <div class="point" style="background-image: url('./images/other/distance.png'); width: 40px"></div>
            <div class="city"><?php echo round($m['kilometers'],1) ?> км.</div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="navigation"><a style="color: #fff;text-decoration: none;" onclick="showMaps();">Навигация по обьекту</a></div>
    <div style="text-align:left;padding:7px;font-weight: bold">
        <?php
            echo str_replace('_x000D_','',str_replace(PHP_EOL,'<br>',$object['description']));
        ?>
        <br><br>
    </div>
</div>
    <div class="maps" id="maps" style="padding: 10px;">
        <script type="text/javascript">
            var myMap, route;

            // Как только будет загружен API и готов DOM, выполняем инициализацию
            ymaps.ready(init);

            function init () {
                myMap = new ymaps.Map("map", {
                    center: [<?php echo $_GET['lat'];?>,<?php echo $_GET['long'];?>],
                    zoom: 12
                });

                ymaps.route([
                    // Список точек, которые необходимо посетить
                    [<?php echo $_GET['lat'];?>,<?php echo $_GET['long'];?>], [<?php echo $data['object'][0]['lat'].','.$data['object'][0]['long'];?>]], {
                    // Опции маршрутизатора
                    mapStateAutoApply: true, // автоматически позиционировать карту
                    boundedBy: [[<?php echo $_GET['lat'];?>,<?php echo $_GET['long'];?>],[<?php echo $data['object'][0]['lat'].','.$data['object'][0]['long'];?>]],
                    strictBounds: true
                }).then(function (router) {
                    route && myMap.geoObjects.remove(route);
                    route = router;
                    myMap.geoObjects.add(route);
                }, function (error) {
                    alert("Возникла ошибка: " + error.message);
                });
                hideMaps();
            }
        </script>
        <div style="padding-top: 10px; padding-bottom: 8px; text-align: center; margin-top: -10px;" onclick="hideMaps()">Скрыть</div>
        <div id="map" style="width:100%;height:90%;padding-top: 5px"></div>
    </div>
<?php echo '<div id="backName" text="'.$data['back'].'" style="display: none;" ></div>'; ?>