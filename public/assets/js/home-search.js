$(document).ready(function() {

    $('#srch_checkOut, #srch_checkIn').datepicker({ format: 'dd/mm/yyyy', locale: 'fr' });
    $("#formSearch #price-filter").slider({});
    $("#fast-Search").on("click", function() {
   
        let ragePrice = $("#price-filter").val().split(',');
        $('#srch_min').val(parseFloat(ragePrice[0]));
        $('#srch_max').val(parseFloat(ragePrice[1]));
        $('#formSearch').submit();
        $('#formResultSearch').submit();
 
    })

    //form result search
    let minFilter = parseFloat($('#formResultSearch #srch_min').val());
    let maxFilter = parseFloat($('#formResultSearch #srch_max').val());

    $('#formResultSearch  #price-filter').slider({
       range: true,
       value: [minFilter,maxFilter]
    });

    

});