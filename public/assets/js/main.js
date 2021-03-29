$(document).ready(function() {




    //css of error form  
    jQuery.validator.setDefaults({
        errorElement: 'span',
        errorPlacement: function(error, element) {
            error.addClass('invalid-feedback');
            element.closest('.form-group').append(error);
        },
        highlight: function(element, errorClass, validClass) {
            $(element).addClass('is-invalid');
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).removeClass('is-invalid');
        }
    });


    // grid list ads 
    let styleView;
    updateListeView()


    $('.page-link').focus(function() {
        let url = $(this).attr('href');
        let queryParams = $.url(url).param();
        queryParams.view = styleView;

        let newUrl = "?" + $.param(queryParams);
        $(this).attr('href', newUrl);


    })

    $('.list-view').on('click', function() {
        mofifateView(false);

    });


    $('.grid-view').on('click', function() {
        mofifateView(true);
    });



    function updateListeView() {

        let currentUrl = window.location.href;
        let view = $.url(currentUrl).param('view');

        if (view === 'list') {

            mofifateView(false);

        } else {
            mofifateView(true);
        }

    }

    function mofifateView(listOrGrid) {
        let style;

        if (listOrGrid) {
            style = 'col-lg-4 col-md-6 mb-2-6 mb-3 card-a';
            styleView = 'grid';

        } else {

            style = 'col-lg-12 col-md-12 mb-2-6 mb-3 card-a';
            styleView = 'list';
        }

        $('.list-card-ads .card-a').removeClass().addClass(style);


    }







    $('.filter-ads').on('click', "a.sortable", function(e) {
        console.log($(this).attr('href'));
        $.ajax({
                type: "GET",
                url: $(this).attr('href'),
            })
            .done(function(msg) {
                console.log(msg)
                $('.list_ads').html(msg);
            });
        e.preventDefault();
    });




});