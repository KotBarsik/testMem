window.onload = function () {
    $('#mainContent > div').on('click', function (el) {
        $.get('./index.php?render=contentType&type='+$(this).attr('type'), function(data) {
            clearContent();
            $('#mainContentType').html(data);
        });
    });
}

function clearContent() {
    $('#mainContent').empty();
    $('#mainContentType').empty();
    $('#mainContentObject').empty();
}