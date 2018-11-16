var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}


//Limitadores de selecciones minimas y maximas de los Checkboxes
$('input[type=checkbox]').change(function(e){
   if ($('input[type=checkbox]:checked').length > 4) {
        $(this).prop('checked', false);
   }
})

$('input[type=checkbox]').change(function(e){
   if ($('input[type=checkbox]:checked').length < 2) {
        $(this).prop('checked', true);
   }
})

// $function miAjax(){
//   $.ajax({
//     type: "POST",
//     url: 'ajax.php',
//     data:{action: 'llamalo'},
//     success:function(html){
//       alert(html);
//     }
//   });
// }