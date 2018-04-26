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
        $.get('./index.php?render=contentType&type='+id, function(data) {
            hideAll();
            $('#mainContentType').empty();
            $('#mainContentType').show();
            $('#mainContentType').append(data);
        });
        console.log('mainContentType');
    }
    else if(type == 'contentObject'){
        $.get('./index.php?render=contentObject&typeId='+id, function(data) {
            hideAll();
            $('#mainContentObjects').empty();
            $('#mainContentObjects').show();
            $('#mainContentObjects').append(data);
        });
        console.log('mainContentObjects');
    }else if(type == 'object'){
        $.get('./index.php?render=object&id='+id, function(data) {
            hideAll();
            $('#mainObject').empty();
            $('#mainObject').show();
            $('#mainObject').append(data);
        });
        console.log('mainObject');
    }
}

function hideAll() {
    $('#mainContent').hide();
    $('#mainContentType').hide();
    $('#mainContentObjects').hide();
    $('#mainObject').hide();
}
