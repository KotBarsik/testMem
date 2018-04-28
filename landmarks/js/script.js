window.onload = function () {
    $('div.back').on('click',function () {
        var viewId = $(this).attr('viewid');
        showView(viewId);
    });
};

function get(key) {
    var p = window.location.search;
    p = p.match(new RegExp(key + '=([^&=]+)'));
    return p ? p[1] : false;
}

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
        //if(id != 'categories') {
            document.windowsId = 1;
            $.get('./index.php?render=contentType&type=' + id + '&lat=' + get('lat') + '&long=' + get('long'), function (data) {
                hideAll();
                $('#mainContentType').empty();
                $('#mainContentType').show();
                $('#mainContentType').append(data);
            });
            console.log('mainContentType');
            $('div.back').attr('viewid', 2);
            $("body").scrollTop(0);
        //}
        //else{
            console.log(id);
        //}
    }
    else if(type == 'contentObject'){
        document.windowsId = 2;
        $.get('./index.php?render=contentObject&typeId='+id + '&lat=' + get('lat') + '&long=' + get('long'), function(data) {
            hideAll();
            $('#mainContentObjects').empty();
            $('#mainContentObjects').show();
            $('#mainContentObjects').append(data);
            $("body").scrollTop(0);
        });
        console.log('mainContentObjects');
        $('div.back').attr('viewid',3);
    }else if(type == 'object'){
        document.windowsId = 3;
        $.get('./index.php?render=object&id='+id + '&lat=' + get('lat') + '&long=' + get('long'), function(data) {
            hideAll();
            $('#mainObject').empty();
            $('#mainObject').show();
            $('#mainObject').append(data);
            $("body").scrollTop(0);
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
    console.log(id);
    if(id > 1) {
        if(id === 1){
            $('div.back').hide();
        }
        else if(id >= 2){
            $('div.back').show();
        }
        id = id - 1;
        hideAll();
        $('body > div:eq('+(id)+')').show();
        $('div.back').attr('viewid',id);
    }
}