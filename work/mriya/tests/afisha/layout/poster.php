<div class="content">
    <div class="bd-example">
        <table style="width:100%;">
            <tr>
                <td>Заголовок</td>
                <td><input id="title" class="form-control" type="text" id="date" name="date" value="<?php echo $posters[0]['title'];?>"/></td>
            </tr>
            <tr>
                <td>Тип предложения</td>
                <td>
                    <select name="typeSentence">
                    <?php
                        $option = array(' ','Специальная цена','Специальное предложение');

                        foreach ($option as $op){
                            echo '<option value="'.$op.'">'.$op.'</option>';
                        }
                    ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Дата начала</td>
                <td><input id="startTime" class="form-control" type="datetime-local" id="date" name="date" value=""/></td>
            </tr>
            <tr>
                <td>Дата конца</td>
                <td><input id="stopTime" class="form-control" type="datetime-local" id="date" name="date" value=""/></td>
            </tr>
            <tr>
                <td>Формат отображаемого времени</td>
                <td>
                    <select name="typeDate">
                        <?php
                        $option = array(0=>'Акция',1=>'23 февраля, 8 марта',2=>'23.02.18 - 29.12.18');

                        foreach ($option as $index=>$op){
                            echo '<option value="'.$index.'">'.$op.'</option>';
                        }

                        ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Текст (HTML)</td>
                <td><textarea id="text" class="form-control"  id="date" name="date" rows="5" ><?php echo $posters[0]['html'];?></textarea></td>
            </tr>
            <?php
            if($_GET['id'] >= 1) {
                ?>
                <tr>
                    <td>Загрузить обложку</td>
                    <td>
                        <form name="img" enctype="multipart/form-data" method="post">
                            <input type="file" name="images">
                            <button type="submit" class="btn btn-primary">Загрузить</button>
                        </form>
                    </td>
                </tr>
                <?php
            }
            ?>
            <tr>
                <td><button id="poster" eventId="<?php echo $posters[0]['id'] ?>" type="submit" class="btn btn-primary">Сохранить</button></td>
            </tr>
        </table>
    </div>
</div>
<script>
    $('#startTime').val("<?php echo str_replace(' ','T',$posters[0]['start']);?>");
    $('#stopTime').val("<?php echo str_replace(' ','T',$posters[0]['stop']);?>");

    if($('#poster').attr('eventId')) {
        $('button').on('click', function () {
            $.ajax({
                url: '<?php echo bUrl?>/admin.php',
                type: 'post',
                dataType: "json",
                data: {
                    type: 'poster',
                    id: $('#poster').attr('eventId'),
                    title: $('#title').val(),
                    typeSentence:$('select[name="typeSentence"]').val(),
                    typeDate:$('select[name="typeDate"]').val(),
                    category : $('#category').val(),
                    startTime: $('#startTime').val(),
                    stopTime: $('#stopTime').val(),
                    text: $('#text').val(),
                    update: true
                },
                statusCode: {
                    200: function (response) { // выполнить функцию если код ответа HTTP 200
                        location.reload();
                    }
                }
            });
        });
    }
    else{
        $('#poster').on('click', function () {
            $.ajax({
                url: '<?php echo bUrl?>/admin.php',
                type: 'post',
                dataType: "json",
                processData:'application/x-www-form-urlencoded',
                data: {
                    type: 'poster',
                    title: $('#title').val(),
                    typeSentence:$('select[name="typeSentence"]').val(),
                    typeDate:$('select[name="typeDate"]').val(),
                    category : $('#category').val(),
                    startTime: $('#startTime').val(),
                    stopTime: $('#stopTime').val(),
                    text: $('#text').val(),
                    create: true
                },
                statusCode: {
                    200: function (response) { // выполнить функцию если код ответа HTTP 200
                        location.href = '<?php echo bUrl ?>/admin.php?load=poster';
                    }
                }
            });
        });
    }

</script>