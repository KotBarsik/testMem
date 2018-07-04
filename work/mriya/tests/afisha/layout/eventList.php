<div class="content">
    <a href="./admin.php?load=event&id=0"><button type="button" class="btn btn-info">Создать</button></a>
    <div class="bd-example">
        <table id="upcoming" style="width: 100%;margin-top: 10px;border-spacing: 0px 0px;border-spacing: 7px 11px !important;">
            <tr>
                <td style="min-width: 30px">ID</td>
                <td>Время проведения </td>
                <td>Заголовок</td>
                <td>Категория</td>
                <td></td>
                <td></td>
            </tr>
            <?php
                foreach ($events as $item) {
                    $start = explode(' ',$item['start_time']);
                    $stop = explode(' ',$item['stop_time']);
                    $eventsTypeLang = json_decode($eventsType['format'][$item['event_type']]['name'],true);
                    echo
                        '<tr>
                            <td>' . $item['id'] . '</td>
                            <td style="font-weight: bold;">' . $start[0].' '.$start[1] . ' - '.$stop[0].' '.$stop[1].'</td>
                            <td>' . $item['title'] . '</td>
                            <td>' . $eventsTypeLang['ru'] . '</td>
                            <td><a href="./admin.php?load=event&id='.$item['id'].'"><button type="button" class="btn btn-success" style="line-height: 1.2;">Изменить</button></a></td>
                            <td><a href="./admin.php?load=delete&type=event&id='.$item['id'].'&formCode='.$_SESSION['formCode'].'"><button type="button" class="btn btn-danger" style="line-height: 1.2;">Удалить</button></a></td>
                        </tr>';
                }
            ?>
        </table>
    </div>
</div>