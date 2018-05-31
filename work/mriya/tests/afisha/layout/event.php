<?php
function selected($selectId,$itemId){
    if($selectId == $itemId){
        return 'selected';
    }
}
?>
<div class="content">
    <div class="bd-example">
        <table style="width:100%;">
            <tr>
                <td>Заголовок</td>
                <td><input id="title" class="form-control" type="text" id="date" name="date" value="<?php echo $eventById[0]['title'];?>"/></td>
            </tr>
            <tr>
                <td>Дата начала</td>
                <td><input id="startTime" class="form-control" type="datetime-local" id="date" name="date" value=""/></td>
            </tr>
            <tr>
                <td>Категория</td>
                <td>
                    <select id="category" class="form-control">
                        <?php
                            foreach ($eventsType as $item){
                                $name = json_decode($item['name'],true);
                                echo '<option 
                                        value="'.$item['id'].'" '.selected($eventById[0]['event_type'],$item['id']).' >
                                    '.$name['ru'].'
                                    </option>';
                            }
                        ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Дата конца</td>
                <td><input id="stopTime" class="form-control" type="datetime-local" id="date" name="date" value=""/></td>
            </tr>
            <tr>
                <td>Текст (HTML)</td>
                <td><textarea id="text" class="form-control"  id="date" name="date" rows="5" ><?php echo $eventById[0]['text'];?></textarea></td>
            </tr>
            <tr>
                <td><button eventId="<?php echo $eventById[0]['id'] ?>" type="submit" class="btn btn-primary">Сохранить</button></td>
            </tr>
        </table>
    </div>
</div>
<script>
    $('#startTime').val("<?php echo str_replace(' ','T',$eventById[0]['start_time']);?>");
    $('#stopTime').val("<?php echo str_replace(' ','T',$eventById[0]['stop_time']);?>");

    if($('button').attr('eventId')) {
        $('button').on('click', function () {
            $.ajax({
                url: './admin.php',
                type: 'post',
                dataType: "json",
                data: {
                    type: 'event',
                    id: $('button').attr('eventId'),
                    title: $('#title').val(),
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
        $('button').on('click', function () {
            $.ajax({
                url: './admin.php',
                type: 'post',
                dataType: "json",
                data: {
                    type: 'event',
                    title: $('#title').val(),
                    category : $('#category').val(),
                    startTime: $('#startTime').val(),
                    stopTime: $('#stopTime').val(),
                    text: $('#text').val(),
                    create: true
                },
                statusCode: {
                    200: function (response) { // выполнить функцию если код ответа HTTP 200
                        location.href = './admin.php?load=event';
                    }
                }
            });
        });
    }

</script>