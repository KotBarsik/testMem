window.onload = function () {
    /*
    $('#mainContent1 > div').on('click', function (el) {
        $.get('./index.php?render=contentType&type='+$(this).attr('type'), function(data) {
            clearContent();
            $('#mainContentType').append(data);
        });

        $('#mainContentType1 > div').click(function() { return false; });
        $('#mainContentType1 > div').on('click',function (el) {
            $.get('./index.php?render=contentObject&typeId='+$(this).attr('typeid'), function(data) {
                clearContent();
                $('#mainContentObject1').append(data);
            });
        });
    });
    */
}

function load(type,id) {
    console.log(type,id);
    if(type == 'contnt'){
        /*
        $.get('./index.php?render=contentType&type='+id, function(data) {
            clearContent();
            $('#mainContentType').append(data);
        });
        console.log('contnt');
        */
    }else if(type == 'contentType'){
        $.get('./index.php?render=contentObject&typeId='+id, function(data) {
            clearContent();
            $('#mainContentType').append(data);
        });
        console.log('contentType');
    }else if(type == 'object'){
        $.get('./index.php?render=object&id='+id, function(data) {
            clearContent();
            $('#mainContentObject').append(data);
        });
        console.log('object');
    }
}

function clearContent() {
    $('#mainContent').empty();
    $('#mainContentType').empty();
    $('#mainContentObject').empty();
}