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

echo '
        <style>
            .text{
                color: #fff;
                font-weight: bold;
                position: relative;
                top: 47px;
                left: 5px;
                width: 225px;
            }
        </style>
    ';

if($_GET['lat'] && $_GET['long']){
    $newFormatArray = [];
    foreach ($data['contentType'] as $contentType){
        $m = getDistanceBetweenPointsNew(
            [
                'lat' => $_GET['lat'],
                'long' => $_GET['long']
            ],
            [
                'lat' => $contentType['lat'],
                'long' => $contentType['long']
            ]
        );
        $newFormatArray[round($m['meters'])] = $contentType;
    }
    ksort($newFormatArray);
    $data['contentType'] = $newFormatArray;
}

foreach ($data['contentType'] as $contentType){
    $m = getDistanceBetweenPointsNew(
        [
            'lat' => $_GET['lat'],
            'long' => $_GET['long']
        ],
        [
            'lat' => $contentType['lat'],
            'long' => $contentType['long']
        ]
    );
    $img = json_decode($contentType['img']);
    $objectLvl = isset($data['objectLvl']) ? ',2' : '';
    $view = '
        <div onclick="load(\'object\','.$contentType['id'].$objectLvl.')" style="background-image: url('.$img[0].');background-size: cover; width: 100%; height: 160px;">
            <div style="width: 100%;height:100%;background-color: rgba(0,0,0,.3);">
                <div class="text">
                    <div style="font-size: 22px;font-weight: bold;height:90px;display:table-cell;vertical-align:bottom;">'.$contentType['title'].'</div>
                    <div style="font-weight: 100;">'.$contentType['city'].'</div>
                </div>';
                if(is_numeric($_GET['lat'])){
                    $view .= '<div style="color: #fff; text-align: right; position: relative; top: 30px; right: 5px; font-weight: 500;">
                    '.round($m['kilometers'],1).' км';
                }
                $view .= '</div>;
            </div>
        </div>';
    echo $view;
}

echo '<div id="backName" text="'.$data['back'].'" style="display: none;" ></div>';