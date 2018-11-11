<?php
	if(isset($_POST["rol1"]))
	{
		$rol="heroe";
		echo "Rol = $rol <br> \n";
	}
	if(isset($_POST["rol2"]))
	{
		$rol="mujer";
		echo "Rol = $rol <br> \n";
	}
	if(isset($_POST["rol3"]))
	{
		$rol="villano";
		echo "Rol = $rol <br> \n";
	}
	if(isset($_POST["rol4"]))
	{
		$rol="niños";
		echo "Rol = $rol <br> \n";
	}

	$escenario = $_POST["lugar"];
	echo "Escenario = $escenario <br> \n";

	$final     = $_POST["final"];
	echo "Final = $final <br> \n";

	// $cmd = "cuento_prueba("$rol",maria,bosque)";
	// $output = `swipl -s Cuento2.pl -g "$cmd" -t halt`;
 //  	var_dump($output);
?>