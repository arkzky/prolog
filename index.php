<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Servidor</title>
</head>
<body>
	<h1>Prueba de Conexion con SWI Prolog con PHP</h1>
	<?php
	$cmd = "cuento_prueba(juan,maria,bosque)";
	$output = `swipl -s Cuento2.pl -g "$cmd" -t halt`;
  	var_dump($output);
	?>
</body>
</html>
