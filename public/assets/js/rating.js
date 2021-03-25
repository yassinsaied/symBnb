$(document).ready(function () {
  $("input[type='radio']").click(function () {
    var sim = $("input[type='radio']:checked").val();
    var intRating =  parseInt(sim);
     $('#rating_note').val(intRating);

    if (intRating < 3) {
      $(".notctr").removeClass("label-success").addClass("label-danger");
      $(".not").text(sim);
    } else {
      $(".notctr").removeClass("label-danger").addClass("label-success");
      $(".not").text(sim);
    }
  });
});
