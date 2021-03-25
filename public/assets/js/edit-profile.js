$(document).ready(function () {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
        $(".avatar-col img").attr("src", e.target.result);
      };

      reader.readAsDataURL(input.files[0]);
    }
  }

  $(".camera-icon").on("click", function () {
    $("#profile_avatarFile").trigger("click");
    $("#profile_avatarFile").on("change", function () {
      readURL(this);
    });
  });
});
