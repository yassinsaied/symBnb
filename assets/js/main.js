

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


    $('.page-link').on('focus',function() {

        let href = $(this).attr('href');
        let params = new URLSearchParams(href.search); 
        params.set('view', styleView);
        let newUrl = "?" + params.toString();
        $(this).attr('href', newUrl);


    })

    $('.list-view').on('click', function() {
        mofifateView('list');
    });


    $('.grid-view').on('click', function() {
        mofifateView('grid');
    });

    function updateListeView() {

        let params = (new URL(document.location)).searchParams;
        let view  = params.get('view');
        console.log(view)
        if (view === 'list') {
           
            mofifateView('list');

        } else {
            mofifateView('grid');
        }
    }

    function mofifateView(listOrGrid) {
        let style;

        if (listOrGrid === 'list') {
            style = 'col-lg-12 col-md-12 mb-2-6 mb-3 card-a horz-card';
            $(".card-a .card").addClass("flex-row");
            $("article").children('.ads-info').addClass("col-7");
            $("article").children('.card-img').addClass("col-5");
            styleView = 'list';

        } else {

            style = 'col-lg-4 col-md-6 mb-2-6 mb-3 card-a';
            $(".card-a .card").removeClass("flex-row");
            $("article").children('.ads-info').removeClass("col-7");
            $("article").children('.card-img').removeClass("col-5");
            styleView = 'grid';




        }

        $('.list-card-ads .card-a').removeClass().addClass(style);


    }

    // filtre result 

    $('.filter-ads').on('change', ".sortby", function(e) {
        $(".loader").show();
        console.log($('.sortby').val() + '&view=' + styleView)
        $.ajax({
                type: "GET",
                url: $(this).val(),
                beforeSend: function() {

                    $(".list-card-ads").fadeOut('fast');
                },
            })
            .done(function(msg) {
                $(".loader").hide();
                $('.list_ads').hide().html(msg).fadeIn('slow');
            });
        e.preventDefault();
    });




