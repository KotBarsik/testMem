<div viewId="1" class="back" style="display: none">Вернуться к списку</div>
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
<div id="maps" style="display: none;"></div>
<div id="showMaps" style="width: 30px; position: fixed; height: 30px; z-index: 9999; bottom: 10px; left: 10px; background-color: #fff;display: none; background-image: url(./images/other/_UaEqO1mHLg.jpg); background-size: 100%;border: 4px solid #000; border-radius: 30px;"></div>
<div id="hideMaps" style="display:none; width: 30px; position: fixed; height: 30px; z-index: 9999; bottom: 10px; left: 10px; background-color: rgb(255, 255, 255); background-image: url(./images/other/884101_list_512x512.png); background-size: 20px; background-repeat: no-repeat; background-position-x: 50%; background-position-y: 49%; border: 4px solid rgb(0, 0, 0); border-radius: 30px;"></div>
<script>
    function showAllBlock() {
        $('div[class="back"]').show();
        $('#mainContent').show();
        $('#mainContentType').show();
        $('#mainContentObjects').show();
        $('#mainObject').show();
    }

    function hideAllblock() {
        $('div[class="back"]').hide();
        $('#mainContent').hide();
        $('#mainContentType').hide();
        $('#mainContentObjects').hide();
        $('#mainObject').hide();
    }

    $('#showMaps').on('click',function () {
        $.get('./maps.php'+localStorage.getItem('mapsUrl'), function (data) {
            $('#maps').append(data);
            $('#maps').show();
            $('#showMaps').hide();
            $('#hideMaps').show();
            hideAllblock();
        });
    });

    $('#hideMaps').on('click',function () {
        $('#maps').hide();
        $('#maps').empty();
        $('#hideMaps').hide();
        $('#showMaps').show();
        showAllBlock();
    });
</script>
