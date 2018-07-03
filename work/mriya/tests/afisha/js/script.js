window.showElementsValue = false;
window.showElementsPosterValue = false;
window.posterLvl = false;

function findGetParameter(parameterName) {
    var result = null,
        tmp = [];
    location.search
        .substr(1)
        .split("&")
        .forEach(function (item) {
            tmp = item.split("=");
            if (tmp[0] === parameterName) result = decodeURIComponent(tmp[1]);
        });
    return result;
}

function resetStyle(element) {
    if(element == 'post'){
        $('#bPost').css({"background-color":"#b49859"});
        $('#bUpcoming').css({"background-color":"#4e4e4e"});
    }
    else{
        $('#bUpcoming').css({"background-color":"#b49859"});
        $('#bPost').css({"background-color":"#4e4e4e"});
    }

}

function swhowEvent(type) {
    if (type == 'post') {
        resetStyle(type);
        $('#upcoming').css({
            "display": "none"
        });

        $('#post').css({
            "display": "table"
        });
    } else if (type == 'upcoming') {
        resetStyle(type);
        $('#post').css({
            "display": "none"
        });

        $('#upcoming').css({
            "display": "table"
        });
    }
}

function getEvents(id) {
    $.ajax({
        url: './get.php',
        type: 'post',
        dataType : "json",
        data:{id:id},
        statusCode: {
            200: function (response) { // выполнить функцию если код ответа HTTP 200
                $('div.eventTitle').html(response.title);
                $('div.eventDate').html(response.events_start_preview);
                $('div.eventDescription').html(response.text);
                getBack('forward');
                console.log(1);
            }
        }
    });
}

function getPoster(id,el) {
    $.ajax({
        url: './get.php',
        type: 'post',
        dataType : "json",
        data:{id:id,type:'postr'},
        statusCode: {
            200: function (response) {
                console.log(response.html.length);
                if(response.html.length >= 70) {
                    window.showElementsPosterValue = true;
                    window.posterLvl = $(el).attr('typesentence');
                    $('#gif').hide();
                    $('#eventDescription').empty();
                    $('#eventDescription').append(response.html);
                    $('#poster').show();
                    $('#posterList').hide();
                    $('#back').show();
                    $('#back').attr({"lvl":"low"});
                    $('div[group="list"]').hide();
                }
                else{
                    $('#back').click();
                    $('#gif').hide();
                    $('#posterList').show();
                }
            }
        }
    });
}

function getBack(event) {
    $('#messages').empty();
    if(event == 'forward'){
        $('#nav').css({display:"none"});
        $('#content').css({display:"block"});
    }else if(event == 'back'){
        $('#nav').css({display:"block"});
        $('#content').css({display:"none"});
    }
}

function showElements(el) {
    window.showElementsValue = true;
    $('#back').show();
    $('div[group="list"]').hide();
    //$('div[typesentence="'+el+'"]').show();
    $('div[typesentence="0"]').show();
    $('div[typesentence="1"]').show();
    $('div[typesentence="2"]').show();
    $('div[typesentence="99"]').hide();
    $('#back').attr({"lvl":"middle"});
    /*
    if($('div[typesentence="'+el+'"]').length == 0){
        $('#messages').html('<b>Ничего не найдено</b>');
    }
    else {
        $('#messages').empty();
    }
    */
}

function backFunction(el) {
    $('#messages').empty();
    if(el.attr('lvl') == 'low') {
        $('#posterList').show();
        $('#poster').hide();
        $('#back').attr({"lvl":"middle"});
    }else if(el.attr('lvl') == 'middle'){
        $('div[typesentence="0"]').hide();
        $('div[typesentence="1"]').hide();
        $('div[typesentence="2"]').hide();
        $('div[typesentence="99"]').show();
        $('div[group="list"]').show();
        $('#back').hide();
    }

    if(window.posterLvl){
        if(window.posterLvl == '99'){
            $('div[group="list"]').show();
            $('#back').hide();
        }
        else{
            $('div[group="list"]').hide();
            $('#back').show();
        }
    }
    else{
        $('div[group="list"]').show();
        $('#back').hide();
    }
    window.posterLvl = false;


    /**
    if(window.showElementsValue && window.showElementsPosterValue){
        window.showElementsValue = false;
        window.showElementsPosterValue = false;
        $('div[group="list"]').hide();
    }
    else if(window.showElementsValue === false && window.showElementsPosterValue === true){
        $('div[group="list"]').show();
        $('#back').hide();
    }
    else{
        $('div[group="list"]').show();
        $('#back').hide();
    }
     */

}

window.onload = function () {

    $('div[typesentence="0"]').hide();
    $('div[typesentence="1"]').hide();
    $('div[typesentence="2"]').hide();
    swhowEvent('upcoming');
    if(findGetParameter('id')){
        getPoster(findGetParameter('id'));
    }
    else {
        $('#gif').hide();
        $('#list').show();
        $('#posterList').show();
    }
}