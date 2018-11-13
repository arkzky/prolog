<!DOCTYPE html>
<html lang="es_MX">
<head>
	<meta charset="UTF-8">
	<title>Cuenta un cuento</title>
	<link rel="shortcut icon" type="image/x-icon" href="img/logo/swipl.ico">
	<link rel="stylesheet" type="text/css" href="interfazProlog.css">
</head>
<body>
	<?php
		// header('Content-Type: text/html; charset=ISO-8859-1');
		$rol1="";
		$rol2="";
		$rol3="";
		$rol4="";
		$output="Habia una vez...";

		if(isset($_POST["rol1"]))
		{
			$rol1="juan,";
		}
		if(isset($_POST["rol2"]))
		{
			$rol2="maria,";
		}
		if(isset($_POST["rol3"]))
		{
			$rol3="hombre_lobo,";
		}
		if(isset($_POST["rol4"]))
		{
			$rol4="niños,";
		}

		
		$escenario = (!empty($_POST['lugar']) ? $_POST['lugar'] : null);

		$final     = (!empty($_POST['final']) ? $_POST['final'] : null);

		// echo "cuento(($rol1$rol2$rol3$escenario,$final) <br>";
		if(!$final == null){
			$funcion = "cuento($rol1$rol2$rol3$escenario,$final)";
			$output = `swipl -s CuentoversionAlex.pl -g "$funcion" -t halt`;

			if($output == "")
			{
				$output = "Esta historia no la conozco (ಥ_ಥ )";
			}
		}
	?>
	<header>
		<img id="logo" src="img/logo/swipl.png" alt="SWI Prolog logo">
		<h1>CUENTA UN CUENTO</h1>
	</header>
	
	<main class="flex-container">
		<div class="flex-sides">
		<h2>Entrada</h2>
			<form class="form" method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">

				<div class="seleccion">
					<b>Roles</b> <br>
					<p>Seleccione al menos 2, pero no más de 3</p>
					<ul>
						<li>
							<input class="chk_individual" type="checkbox" name="rol1" id="rol1" value="hombre" checked>
							<label for="rol1"><img src="img/roles/heroe.png" alt="heroe"></label>
						</li>
						<li>
							<input class="chk_individual" type="checkbox" name="rol2" id="rol2" value="mujer" checked>
							<label for="rol2"><img src="img/roles/mujer.jpg" alt="mujer"></label>
						</li>
						<li>
							<input class="chk_individual" type="checkbox" name="rol3" id="rol3" value="villano">
							<label for="rol3"><img src="img/roles/villano.jpg" alt="villano"></label>
						</li>
						<li>
							<input class="chk_individual" type="checkbox" name="rol4" id="rol4" value="niña">
							<label for="rol4"><img src="img/roles/ninia.png" alt="niña" id ="niña"></label>						
						</li>
						<li>
							<input class="chk_individual" type="checkbox" name="rol5" id="rol5" value="niño">
							<label for="rol5"><img src="img/roles/ninio.png" alt="niño" id ="niño"></label>						
						</li>
					</ul>
				</div>

				<!-- Container for the image gallery -->
				<b>Lugar</b> <br><br>
				<div class="container">

				  <!-- Full-width images with number text -->
				  <div class="mySlides">
				    <div class="numbertext">1 / 5</div>
				      <img src="img/lugar/bosque_wide.jpg" style="width:100%">
				  </div>

				  <div class="mySlides">
				    <div class="numbertext">2 / 5</div>
				      <img src="img/lugar/pueblo_wide.jpg" style="width:100%">
				  </div>

				  <div class="mySlides">
				    <div class="numbertext">3 / 5</div>
				      <img src="img/lugar/castillo_wide.jpg" style="width:100%">
				  </div>

				  <div class="mySlides">
				    <div class="numbertext">4 / 5</div>
				      <img src="img/lugar/isla_wide.jpg" style="width:100%">
				  </div>

				  <div class="mySlides">
				    <div class="numbertext">5 / 5</div>
				      <img src="img/lugar/desierto_wide.jpg" style="width:100%">
				  </div>

				  <!-- Next and previous buttons -->
				  <!-- <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
				  <a class="next" onclick="plusSlides(1)">&#10095;</a> -->

				  <!-- Image text -->
				  <div class="caption-container">
				    <p id="caption"></p>
				  </div>

				  <!-- Thumbnail images -->
				  <div class="row">
				    <div class="column">
					    <label>
						 	<input type="radio" name="lugar" value="bosque" checked>
					      	<img class="demo cursor" src="img/lugar/bosque.jpg" style="width:100%" onclick="currentSlide(1)" alt="Bosque">
					    </label>
				    </div>
				    <div class="column"> 
				      	<label>
					    	<input type="radio" name="lugar" value="pueblo">
					    	<img class="demo cursor" src="img/lugar/pueblo.jpg" style="width:100%" onclick="currentSlide(2)" alt="Pueblo">
				      	</label>
				    </div>
				    <div class="column">
				    	<label>
				    		<input type="radio" name="lugar" value="castillo">
					      	<img class="demo cursor" src="img/lugar/castillo.jpg" style="width:100%" onclick="currentSlide(3)" alt="Castillo">
				    	</label>
				    </div>
				    <div class="column">
				    	<label>
				    		<input type="radio" name="lugar" value="isla">
						    <img class="demo cursor" src="img/lugar/isla.jpg" style="width:100%" onclick="currentSlide(4)" alt="Isla">
				    	</label>
				    </div>
				    <div class="column">
				    	<label>
				    		<input type="radio" name="lugar" value="desierto">
				    		<img class="demo cursor" src="img/lugar/desierto.jpg" style="width:100%" onclick="currentSlide(5)" alt="Desierto">
				    	</label>
				    </div>
				  </div>
				</div>
				
				<br>

				<b>Finales</b> <br>
				<div class="seleccion">
					<ul>
						<li>
							<label class="radioBtn">					
								<input type="radio" name="final" value="alegre" checked>
								<img src="img/finales/alegre.png" alt="alegre">
							</label>
						</li>
						<li>
							<label class="radioBtn">					
								<input type="radio" name="final" value="comico">
								<img src="img/finales/comico.png" alt="comico">
							</label>
						</li>
						<li>
							<label class="radioBtn">					
								<input type="radio" name="final" value="sorpresa">
								<img src="img/finales/inesperado.png" alt="sorpresa">
							</label>
						</li>
						<li>
							<label class="radioBtn">					
								<input type="radio" name="final" value="tragico">
								<img src="img/finales/tragico.png" alt="tragico">
							</label>
						</li>
						<li>
							<label class="radioBtn">					
								<input type="radio" name="final" value="triste">
								<img src="img/finales/triste.png" alt="triste">
							</label>
						</li>
					</ul>
				</div>

				<div id="enviar">
					<input type="submit" value="Enviar">
				</div>
			</form>
		</div>

		<div class="flex-sides">	
			<h2>Salida</h2>
			<textarea name="cuento" id="salida" cols="30" rows="10" readonly><?php echo $output;?></textarea>
		</div>
	</main>

	<footer>
		<p>
			Creado el 01 de noviembre del 2018
		</p>
		<b>Autores</b>	<br>
		<div class="fila">
			<div class="nombre">Hector Raul Gomez Aranda</div>
			<div class="nombre">José Misael Guzman Toloza</div>
			<div class="nombre">Jeni Karina Molina Puc</div>
			<div class="nombre">Alejandro Gibran Pérez Pérez</div>	
		</div>
	</footer>	
	<script src="jquery-3.3.1.js"></script>
	<script src="funciones.js"></script>
</body>
</html>