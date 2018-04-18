function swhowEvent(type) {
    if (type == 'post') {
        $('#upcoming').css({
            "display": "none"
        });

        $('#post').css({
            "display": "table"
        });
    } else if (type == 'upcoming') {
        $('#post').css({
            "display": "none"
        });

        $('#upcoming').css({
            "display": "table"
        });
    }
}

function getEvents(id) {
    console.log(id);
}

window.onload = function () {
    swhowEvent('upcoming');
}