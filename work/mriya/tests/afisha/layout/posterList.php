<div class="content">
    <a href="<?php echo bUrl?>/admin.php?load=poster&id=0"><button type="button" class="btn btn-info">Создать</button></a>
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
                foreach ($posters as $item) {
                    echo
                        '<tr>
                            <td>' . $item['id'] . '</td>
                            <td>' . $item['title'] . '</td>
                            <td><a href="'.bUrl.'/admin.php?load=poster&id='.$item['id'].'"><button type="button" class="btn btn-success" style="line-height: 1.2;">Изменить</button></a></td>
                            <td><a href="'.bUrl.'/admin.php?load=delete&type=poster&id='.$item['id'].'"><button type="button" class="btn btn-danger" style="line-height: 1.2;">Удалить</button></a></td>
                        </tr>';
                }
            ?>
        </table>
    </div>
</div>