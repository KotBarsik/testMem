<style>
    .clear{
        clear: both;
    }
    ul{
        background-color: #ffffff;
    }
</style>
<ul>
<?php
foreach ($data['categories'] as $cat){
    echo '
    <li>
        <div style="float:left"><img width="30px" src="./images/other/cat.png"/></div>
        <div onclick="load(\'contentObject\','.$cat['id'].')" style="width:50%;float:left;margin-top: 5px;">'.$cat['name'].'</div>
        <div class="clear"></div>
    </li>';
}
exit();
?>
</ul>
