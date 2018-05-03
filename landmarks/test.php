<html>
<head>
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
                zoom: 15,  // коэффициент масштабирования
                // элементы управления картой
                // список элементов можно посмотреть на этой странице
                // https://tech.yandex.ru/maps/doc/jsapi/2.1/dg/concepts/controls-docpage/
                controls: [
                    'zoomControl' // ползунок масштаба
                ]
            });

            // Создаем метку
            var placemark = new ymaps.Placemark(placemarkConfig.coordinates, {
                // всплывающая подсказка (выводим адрес объекта)
                hintContent: placemarkConfig.name,
                // Содержимое балуна
                balloonContent: '<img src="' + placemarkConfig.photo + '"> <br/> <strong>' + placemarkConfig.name + '</strong> <br/> ' + placemarkConfig.desc
            });

            // Добавляем метку на карту
            map.geoObjects.add(placemark);

            var zoomControl = new ymaps.control.ZoomControl({
                options: {
                    size: "small"
                }
            });

            map.controls.add(zoomControl);
        }
    </script>
    <div id="map" style="width: 600px; height: 400px"></div>
    </body>
</html>