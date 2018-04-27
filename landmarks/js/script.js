window.onload = function () {
    $('div.back').on('click',function () {
        var viewId = $(this).attr('viewid');
        showView(viewId);
    });
};

function load(type,id) {
    console.log(type,id);
    if(type == 'content'){
        /*
        $.get('./index.php?render=contentType&type='+id, function(data) {
            clearContent();
            $('#mainContentType').append(data);
        });
        console.log('contnt');
        */
    }else if(type == 'contentType'){
        document.windowsId = 1;
        $.get('./index.php?render=contentType&type='+id, function(data) {
            hideAll();
            $('#mainContentType').empty();
            $('#mainContentType').show();
            $('#mainContentType').append(data);
        });
        console.log('mainContentType');
        $('div.back').attr('viewid',2);
    }
    else if(type == 'contentObject'){
        document.windowsId = 2;
        $.get('./index.php?render=contentObject&typeId='+id, function(data) {
            hideAll();
            $('#mainContentObjects').empty();
            $('#mainContentObjects').show();
            $('#mainContentObjects').append(data);
        });
        console.log('mainContentObjects');
        $('div.back').attr('viewid',3);
    }else if(type == 'object'){
        document.windowsId = 3;
        $.get('./index.php?render=object&id='+id, function(data) {
            hideAll();
            $('#mainObject').empty();
            $('#mainObject').show();
            $('#mainObject').append(data);
        });
        console.log('mainObject');
        $('div.back').attr('viewid',4);
    }
}

function hideAll() {
    $('#mainContent').hide();
    $('#mainContentType').hide();
    $('#mainContentObjects').hide();
    $('#mainObject').hide();
}

function showView(id) {
    if(id > 1) {
        id = id - 1;
        hideAll();
        $('body > div:eq('+(id)+')').show();
        $('div.back').attr('viewid',id);
    }
}