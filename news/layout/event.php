<div class="content">
    <div class="bd-example">
        <table style="width:100%;">
            <tr>
                <td>Заголовок</td>
                <td><input class="form-control" type="text" id="date" name="date" value="<?php echo $eventById[0]['title'];?>"/></td>
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
                <td>Текст (HTML)</td>
                <td><textarea class="form-control"  id="date" name="date" rows="5" ><?php echo $eventById[0]['text'];?></textarea></td>
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

    $('button').on('click',function () {
        console.log('click');
        $.ajax({
            url: '/news/get.php',
            type: 'post',
            dataType : "json",
            data:{id:id},
            statusCode: {
                200: function (response) { // выполнить функцию если код ответа HTTP 200
                    location.reload();
                }
            }
        });
    });

</script>