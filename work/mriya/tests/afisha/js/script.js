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

function getPoster(id) {
    $.ajax({
        url: './get.php',
        type: 'post',
        dataType : "json",
        data:{id:id,type:'postr'},
        statusCode: {
            200: function (response) {
                console.log(response.html);
                $('#eventDescription').empty();
                $('#eventDescription').append(response.html);
                $('#poster').show();
                $('#posterList').hide();
                $('#back').show();
            }
        }
    });
}

function getBack(event) {
    if(event == 'forward'){
        $('#nav').css({display:"none"});
        $('#content').css({display:"block"});
    }else if(event == 'back'){
        $('#nav').css({display:"block"});
        $('#content').css({display:"none"});
    }
}

window.onload = function () {
    swhowEvent('upcoming');
}