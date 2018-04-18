function swhowEvent(type) {
    if (type == 'post') {
        $('#upcoming').css({
            "display": "none"
        });

        $('#post').css({
            "display": "tables"
        });
    } else if (type == 'upcoming') {
        $('#post').css({
            "display": "none"
        });

        $('#upcoming').css({
            "display": "tables"
        });
    }
}

window.onload = function () {
    swhowEvent('post');
}