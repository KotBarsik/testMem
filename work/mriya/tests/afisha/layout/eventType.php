<?php
$eventTypeData = json_decode($eventsType[0]['name'],true);
?>
<div class="content">
    <div class="bd-example">
        <table style="width:100%;">
            <tr>
                <td>Название по Русский</td>
                <td><input id="nameRus" class="form-control" type="text" id="date" name="date" value="<?php echo $eventTypeData['ru']?>"/></td>
            </tr>
            <tr>
                <td>Название по English</td>
                <td><input id="nameEng" class="form-control" type="text" id="date" name="date" value="<?php echo $eventTypeData['en']?>"/></td>
            </tr>
            <tr>
                <td><button catId="<?php echo $eventsType[0]['id'];?>" type="submit" class="btn btn-primary">Сохранить</button></td>
            </tr>
        </table>
    </div>
</div>
<script>
    if($('button').attr('catId')) {
        $('button').on('click', function () {
            $.ajax({
                url: '<?php echo bUrl?>/admin.php',
                type: 'post',
                dataType: "json",
                data: {
                    type: 'categories',
                    ru: $('#nameRus').val(),
                    en: $('#nameEng').val(),
                    id: $('button').attr('catId'),
                    update: true
                },
                statusCode: {
                    200: function (response) { // выполнить функцию если код ответа HTTP 200
                        location.reload();
                    }
                }
            });
        });
    }else {
        $('button').on('click', function () {
            $.ajax({
                url: '<?php echo bUrl?>/admin.php',
                type: 'post',
                dataType: "json",
                data: {
                    type: 'categories',
                    ru: $('#nameRus').val(),
                    en: $('#nameEng').val(),
                    create: true
                },
                statusCode: {
                    200: function (response) { // выполнить функцию если код ответа HTTP 200
                        location.href = <?php echo bUrl ?>'/admin.php?load=categories';
                    }
                }
            });
        });
    }
</script>