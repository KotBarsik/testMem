<?php
$json = file_get_contents('to.json');
$json = json_decode($json,true);

foreach ($json as $i){
    if(isset($i['img'])) {
        $content = file_get_contents($i['img']);
        if (strlen($content) >= 30) {
            $path = str_replace('http://suntime.com.ua/', '', $i['img']);

            $dir = str_replace(basename($path), '', $path);

            if (!file_exists($dir)) {
                mkdir($dir, 0777, true);
            }

            file_put_contents($path, $content);

            system("jpegoptim --size=100k {$path} --strip-all");
        }
    }
}