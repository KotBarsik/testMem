<?php
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
            <div class="city">Бахчисарай</div>
            <div class="clear"></div>
        </div>
        <div style="margin:5px;font-weight: bold;float: right;">
            <div class="point" style="background-image: url('./images/other/distance.png'); width: 40px"></div>
            <div class="city">22.5 km</div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="navigation">Навигация по обьекту</div>
    <div style="text-align:left;padding:7px;font-weight: bold">
        <?php
            echo str_replace('_x000D_','',str_replace(PHP_EOL,'<br>',$object['description']));
        ?>
        <br><br>
    </div>
</div>