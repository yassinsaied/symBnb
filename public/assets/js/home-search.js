$(document).ready(function() {

    $('#srch_checkOut, #srch_checkIn').datepicker({ format: 'dd/mm/yyyy', locale: 'fr' });
    $("#ex2").slider({});



    $("#fast-Search").on("click", function() {

        let ragePrice = $("#ex2").val().split(',');



        let min = parseFloat(ragePrice[0]);
        let max = parseFloat(ragePrice[1]);
        console.log(min, max);
    })




});