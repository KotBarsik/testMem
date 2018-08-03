$(document).ready(function() {
    $('#startTime').on('blur',function () {
        var dateStart = new Date($(this).val());
        var dateStopTimeStamp = new Date(dateStart);
        dateStopTimeStamp.setHours(((dateStopTimeStamp.getHours()) + 5));
        $('#stopTime').val(dateStopTimeStamp.toISOString().replace(':00.000Z',''));
    });
});
