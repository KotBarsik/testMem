<div id="mainContent" style="width:100%;">
    <?php
    foreach ($this->category as $cat){
        echo '<div style="width:100%;" type="'.$cat['eng_name'].'"><img style="width:100%;" src="./images/'.$cat['eng_name'].'.jpg" /></div>';
    }
    ?>
</div>
<div id="mainContentType" style="width:100%;">Type</div>
<div id="mainContentObject" style="width:100%;">Object</div>