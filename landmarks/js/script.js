window.onload = function () {
    $('div.back').on('click',function () {
        var viewId = $(this).attr('viewid');
        showView(viewId);
        showBack($(this).attr('viewid'));
    });
};

function get(key) {
    var p = window.location.search;
    p = p.match(new RegExp(key + '=([^&=]+)'));
    return p ? p[1] : false;
}

function load(type,id,wId) {
    localStorage.setItem("bc1",'Вернуться к списку');
    if (wId === undefined) {
        wId = false;
    }
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
        $.get('./index.php?render=contentType&type=' + id + '&lat=' + get('lat') + '&long=' + get('long'), function (data) {
            localStorage.setItem("mapsUrl",'?id=' + id);
            hideAll();
            $('#mainContentType').empty();
            $('#mainContentType').show();
            $('#mainContentType').append(data);
            if($('#mainContentType').find('#backName').length == 1) {
                localStorage.setItem("bc2", $('#mainContentType').find('#backName').attr('text'));
            }
            else{
                localStorage.setItem("bc2", $('#mainContentType').find('#backName:eq(1)').attr('text'));
            }
            console.log($('#mainContentType').find('#backName').attr('text'));
        });
        $('div.back').attr('viewid', 2);
        $("body").scrollTop(0);
    }
    else if(type == 'contentObject'){
        document.windowsId = 2;
        $.get('./index.php?render=contentObject&typeId='+id + '&lat=' + get('lat') + '&long=' + get('long'), function(data) {
            localStorage.setItem("mapsUrl",'?id=' + id);
            hideAll();
            $('#mainContentObjects').empty();
            $('#mainContentObjects').show();
            $('#mainContentObjects').append(data);
            localStorage.setItem("bc3",$('#mainContentObjects').find('#backName').attr('text'));
            $("body").scrollTop(0);
        });
        $('div.back').attr('viewid',3);
    }else if(type == 'object'){
        if(wId){
            document.windowsId = wId;
            $('div.back').attr('viewid',3);
        }
        else {
            document.windowsId = 3;
            $('div.back').attr('viewid',4);
        }
        $.get('./index.php?render=object&id='+id + '&lat=' + get('lat') + '&long=' + get('long'), function(data) {
            hideAll();
            $('#mainObject').empty();
            $('#mainObject').show();
            $('#mainObject').append(data);
            localStorage.setItem("bc4",$('#mainObject').find('#backName').attr('text'));
            $("body").scrollTop(0);
        });
    }
    showBack($('div.back').attr('viewid'));
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

function showBack(id) {
    var backText = '';
    if(id == 1){
        $('div.back').hide();
        $('#showMaps').hide();
    }
    else if(id >= 2){
        $('div.back').show();
        $('#showMaps').show();
    }
    if(localStorage.getItem('bc'+(id - 1)) != 'undefined') {
        backText = localStorage.getItem('bc' + (id - 1));
        $('div.back').text(backText);
    }
    else {
        backText = localStorage.getItem('bc1')
        $('div.back').text(backText);
    }
    console.log(backText,id);
}