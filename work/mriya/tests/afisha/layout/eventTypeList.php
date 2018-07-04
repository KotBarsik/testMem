<div class="content">
    <a href="./admin.php?load=categories&id=0"><button type="button" class="btn btn-info">Создать</button></a>
    <div class="bd-example">
        <table id="upcoming" style="width: 100%;margin-top: 10px;border-spacing: 0px 0px;border-spacing: 7px 11px !important;">
            <tr>
                <td>ID</td>
                <td>Категория eng</td>
                <td>Категория ru</td>
                <td></td>
                <td></td>
            </tr>
            <?php
                foreach ($eventsType as $item) {
                    $eventsTypeLang = json_decode($item['name'],true);
                    echo
                        '<tr>
                                <td>' . $item['id'] . '</td>
                                <td>' . $eventsTypeLang['en'] . '</td>
                                <td>' . $eventsTypeLang['ru'] . '</td>
                                <td><a href="./admin.php?load=categories&id='.$item['id'].'"><button type="button" class="btn btn-success" style="line-height: 1.2;">Изменить</button></a></td>
                                <td><a href="./admin.php?load=delete&type=categories&id='.$item['id'].'&formCode='.$_SESSION['formCode'].'"><button type="button" class="btn btn-danger" style="line-height: 1.2;">Удалить</button></a></td>
                            </tr>';
                }
            ?>
        </table>
    </div>
</div>