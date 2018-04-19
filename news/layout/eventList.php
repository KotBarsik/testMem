<div class="content">
    <a href="/news/admin.php?load=event&id=0"><button type="button" class="btn btn-info">Создать</button></a>
    <div class="bd-example">
        <table id="upcoming" style="width: 100%;margin-top: 10px;border-spacing: 0px 0px;border-spacing: 7px 11px !important;">
            <tr>
                <td>ID</td>
                <td>Заголовок</td>
                <td>Категория</td>
                <td></td>
                <td></td>
            </tr>
            <?php
                foreach ($events as $item) {
                    $eventsTypeLang = json_decode($eventsType['format'][$item['event_type']]['name'],true);
                    echo
                        '<tr>
                            <td>' . $item['id'] . '</td>
                            <td>' . $item['title'] . '</td>
                            <td>' . $eventsTypeLang['ru'] . '</td>
                            <td><a href="/news/admin.php?load=event&id='.$item['id'].'"><button type="button" class="btn btn-success" style="line-height: 1.2;">Изменить</button></a></td>
                            <td><a href="/news/admin.php?load=delete&type=event&id='.$item['id'].'"><button type="button" class="btn btn-danger" style="line-height: 1.2;">Удалить</button></a></td>
                        </tr>';
                }
            ?>
        </table>
    </div>
</div>