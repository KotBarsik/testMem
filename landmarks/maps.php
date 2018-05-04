<html>
<head>
    <script src="./js/jquery-1.7.min.js"></script>
    <script src="http://api-maps.yandex.ru/2.0/?load=package.full&lang=ru-RU" type="text/javascript"></script>
</head>
<body>
    <script>
        // Параметры метки
        var placemarkConfig = {
            'coordinates': [44.95719, 34.11079], // Координаты метки

            // Данные, которые будут использоваться при выводе балуна
            'name': 'Жукова,5\\3',
            'desc': 'В этой статье предлагаю на примере простого массива рассмотреть как именно работают внутренние интерфейсы Traversable и ArrayAccess.',
            'photo': 'ex4_1.png'
        };

        ymaps.ready(init);

        function init(){
            // Создаем карту
            var map = new ymaps.Map("map", {
                center: [44.95719, 34.11079], // координаты центра карты, при загрузке
                zoom: 8,  // коэффициент масштабирования
                // элементы управления картой
                // список элементов можно посмотреть на этой странице
                // https://tech.yandex.ru/maps/doc/jsapi/2.1/dg/concepts/controls-docpage/
                controls: [
                    'zoomControl' // ползунок масштаба
                ]
            });

            var zoomControl = new ymaps.control.ZoomControl({
                options: {
                    size: "small"
                }
            });

            map.controls.add(zoomControl);

            $.get('./index.php?render=json&id=<?php echo $_GET['id'];?>', function (data) {
                JSON.parse(data).forEach(function (item,id) {
                    var placemark = new ymaps.Placemark([item.lat,item.long], {
                        // всплывающая подсказка (выводим адрес объекта)
                        hintContent: item.title,
                        // Содержимое балуна
                        balloonContent: '<h3 style="text-align: center">'+item.title+'</h3><img style="max-width: 480px;height: 320px;" src="' + item.img + '">'
                    });
                    map.geoObjects.add(placemark);
                });
            });
        }
    </script>
    <div id="map" style="width: 100%; height: 100%"></div>
    </body>
</html>