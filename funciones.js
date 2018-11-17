// Galeria de imágenes
  var slideIndex = 1;
  showSlides(slideIndex);

  // Controles de adelante y atras
  function plusSlides(n) {
    showSlides(slideIndex += n);
  }

  // Controles para las imagenes de previsualización
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

// JQuery

// Limitadores de selecciones minimas y maximas de los Checkboxes
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

// JQuery AJAX 
var respuesta = "";
var separador;
var i = 0;
$(".form").submit(function(event) {
  event.preventDefault();
  $.ajax({
    type: "POST",
    url: 'servidor.php',
    data:{rol1: $("input[name='rol1']:checked").val(), 
          rol2: $("input[name='rol2']:checked").val(), 
          rol3: $("input[name='rol3']:checked").val(), 
          rol4: $("input[name='rol4']:checked").val(), 
          rol5: $("input[name='rol5']:checked").val(), 
          lugar: $("input[name='lugar']:checked").val(), 
          final: $("input[name='final']:checked").val()},
    success: function(data){
      respuesta = data;
      separador = data.split('\n');
      $('#salida').html(separador[0]);
    }
  });
  // $('#puntocoma').toggle("slide");
  $('#puntocoma').css('display','inline-block');
  $(window).scrollTop($('#salida').offset().top-200);
  i = 0;
});

$("#puntocoma").click(function(event) {
  i++;
  if(i < separador.length-1) // esto es porque en prolog la ultima linea imprime salto de linea
  {
    $('#salida').html(separador[i]);
  }else{
    $('#salida').html("Ya no hay más historias (ಥ_ಥ )");
  }
});