    function toggleErrorFile(message) {
        $('.error-file .form-error-message p').remove();
        $('.error-file .invalid-feedback, .error-file span').addClass('d-block');
        $('.error-file .form-error-message').append('<p>' + message + '</p>');

    }


    function readURL(input, idElement) {
        const arrayExtension = ["image/png", "image/jpeg"]
            // 
        const htmlAdImage = '';
        let valid = true;

        if (input.files[0].size > 2000000) {

            toggleErrorFile("Error, file too large. The file must weigh less than 2M");
            input.files[0] = "";
            valid = false
        }

        if ($.inArray(input.files[0].type, arrayExtension) === -1) {

            toggleErrorFile("invalid type file");
            input.files[0] = "";
            valid = false;

        }

        if (input.files && input.files[0] && valid) {
            var reader = new FileReader();
            reader.onload = function(e) {

                $('.dropzone').append('<div class="col-2 frame-image"> <div class="file-content"> <img  src="' + e.target.result + '"/> </div> <div class="d-flex justify-content-end"><a class="remove-image" id="' + idElement + '"><i class="fas fa-trash-alt"></i></a></div> </div>');
            }

            reader.readAsDataURL(input.files[0]);
        }
    }


    $("#ad_image_button").on('click', function() {

        const numberOfImages = +$("#counter-widget").val();
        const tmpl = $("#ad_images").attr('data-prototype').replace(/__name__/g, numberOfImages);
        $("#ad_images").append(tmpl);
        $('#ad_images_' + numberOfImages + '_imagefile').trigger('click');
        $('#ad_images_' + numberOfImages + '_imagefile').on('change', function() {
            $('.error-file, .error-file span').removeClass('d-block');
            readURL(this, numberOfImages);
        });

        $("#counter-widget").val(numberOfImages + 1);

        deleteImage();

    });

    function deleteImage() {

        $('.dropzone').on('click', '.remove-image', function() {
            $(this).closest('.frame-image').remove();
            const idInputToDelete = $(this).attr('id').slice(-1);;
            console.log('ad_images_' + idInputToDelete + '_imagefile');
            $('.dropzone #block_ad_images_' + idInputToDelete).remove();
        });

    }

    function updateCounter() {

        const counterImages = +$('#ad_images .form-group').length;
        $('#counter-widget').val(counterImages)

    }

    updateCounter();
    deleteImage();