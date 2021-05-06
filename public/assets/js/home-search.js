$(document).ready(function() {

    $('#srch_checkOut, #srch_checkIn').datepicker({ format: 'dd/mm/yyyy', locale: 'fr' });

   

    $("#price-filter").slider({});

    $("#fast-Search").on("click", function() {
   
        let ragePrice = $("#price-filter").val().split(',');
        $('#srch_min').val(parseFloat(ragePrice[0]));
        $('#srch_max').val(parseFloat(ragePrice[1]));
        $('#formSearcht').submit();
 
    })




});