<?php
$eventTypeData = json_decode($eventsType[0]['name'],true);
?>
<div class="content">
    <div class="bd-example">
        <table style="width:100%;">
            <tr>
                <td>Название по Русский</td>
                <td><input class="form-control" type="text" id="date" name="date" value="<?php echo $eventTypeData['ru']?>"/></td>
            </tr>
            <tr>
                <td>Название по English</td>
                <td><input class="form-control" type="text" id="date" name="date" value="<?php echo $eventTypeData['en']?>"/></td>
            </tr>
            <tr>
                <td><button type="submit" class="btn btn-primary">Сохранить</button></td>
            </tr>
        </table>
    </div>
</div>