<div viewId="1" class="back"></div>
<div id="mainContent" style="width:100%;">
    <?php
    foreach ($this->category as $cat){
        echo '<div onclick="load(\'contentType\',\''.$cat['eng_name'].'\')" style="width:100%;" type="'.$cat['eng_name'].'"><img style="width:100%;" src="./images/'.$cat['eng_name'].'.jpg" /></div>';
    }
    ?>
</div>
<div id="mainContentType" style="width:100%;"></div>
<div id="mainContentObjects" style="width:100%;"></div>
<div id="mainObject" style="width:100%;"></div>