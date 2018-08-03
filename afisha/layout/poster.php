<div class="content">
    <div class="bd-example">
        <form id="form" name="form" enctype="multipart/form-data" method="post">
            <table style="width:100%;">
                <tr>
                    <td>Заголовок</td>
                    <td><input id="title" class="form-control" type="text" id="date" name="title" value="<?php echo $posters[0]['title'];?>"/></td>
                </tr>
                <tr>
                    <td>Тип предложения</td>
                    <td>
                        <select name="typeSentence">
                        <?php
                            $option = array(' ','Специальная цена','Специальное предложение');

                            foreach ($option as $op){
                                if($op == $posters[0]['typeSentence']){
                                    $selected = 'selected';
                                }
                                else{
                                    $selected = ' ';
                                }
                                echo '<option value="'.$op.'" '.$selected.'>'.$op.'</option>';
                            }
                        ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Дата начала</td>
                    <td><input id="startTime" class="form-control" type="datetime-local" id="startTime" name="startTime" value=""/></td>
                </tr>
                <tr>
                    <td>Дата конца</td>
                    <td><input id="stopTime" class="form-control" type="datetime-local" id="stopTime" name="stopTime" value=""/></td>
                </tr>
                <tr>
                    <td>Формат отображаемого времени</td>
                    <td>
                        <select name="typeDate">
                            <?php
                            $option = array(0=>'Акция',1=>'23 февраля, 8 марта',2=>'23.02.18 - 29.12.18');

                            foreach ($option as $index=>$op){
                                if($index == (int)$posters[0]['typeDate']){
                                    $selected = 'selected';
                                }
                                else{
                                    $selected = '';
                                }
                                echo '<option value="'.$index.'" '.$selected.'>'.$op.'</option>';
                            }

                            ?>
                        </select>
                    </td>
                </tr>

                    <tr>
                        <td>Текст (HTML)</td>
                        <td><textarea id="text" class="form-control"  id="date" name="text" rows="5" ><?php echo $posters[0]['html'];?></textarea></td>
                    </tr>

                    <tr>
                        <td>Загрузить обложку</td>
                        <td>
                            <input type="file" name="images">
                        </td>
                    </tr>
                <tr>
                    <td><button id="poster" eventId="<?php echo $posters[0]['id'] ?>" class="btn btn-primary">Сохранить</button></td>
                </tr>
                <tr>
                    <td> </td>
                    <td><?php
                        $img = strlen($posters[0]['images']) >= 5 ? $posters[0]['images'] : false;
                        if($img){
                            echo '<img src="./upload/'.$img.'" style="width:100px;">';
                        }
                        ?></td>
                </tr>
            </table>

            <?php
                if($_GET['id'] >= 1){
                    echo '<input name="update" value="true" hidden>';
                    echo '<input name="itemId" value="'.$posters[0]['id'].'" hidden>';
                }
                else{
                    echo '<input name="create" value="true" hidden>';
                }
            ?>
            <input name="type" value="poster" hidden>
            <?php
                if(isset($_SESSION['formCode'])){
                    echo '<input name="formCode" type="hidden" value="'.$_SESSION['formCode'].'">';
                }
                else{
                    echo '<input name="formCode" type="hidden" value="">';
                }
            ?>
            </form>
    </div>
</div>
<script>
    $('#startTime').val("<?php echo str_replace(' ','T',$posters[0]['start']);?>");
    $('#stopTime').val("<?php echo str_replace(' ','T',$posters[0]['stop']);?>");

    $('button').on('click',function () {
        if(!valid()){
            alert('Некорректные дата или время');
        }
        else{
            $('#form').submit();
        }
        return false;
    });

    function valid() {
        var startTime = ($('#startTime').val().split('T')[0]).split('-');
        var stopTime = ($('#stopTime').val().split('T')[0]).split('-');

        if(valudDate(startTime) && valudDate(stopTime)){
            return true;
        }
        else{
            return false;
        }
    }
    
    function valudDate(date) {
        console.log(date);
        var flag = true;

        if(date[0] >= 1900 && date[0] <= 2900){

        }
        else{
            flag = false;
        }

        if(date[1] >= 1 && date[1] <= 12){

        }
        else{
            flag = false;
        }

        if(date[2] >= 1 && date[2] <= 31){

        }
        else{
            flag = false;
        }

        return flag;
    }
</script>