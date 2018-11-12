<?php
	$rol1="";
	$rol2="";
	$rol3="";
	$rol4="";

	if(isset($_POST["rol1"]))
	{
		$rol1="juan,";
		echo "Rol1 = $rol1 <br> \n";
	}
	if(isset($_POST["rol2"]))
	{
		$rol2="maria,";
		echo "Rol2 = $rol2 <br> \n";
	}
	if(isset($_POST["rol3"]))
	{
		$rol3="hombre_lobo,";
		echo "Rol3 = $rol3 <br> \n";
	}
	if(isset($_POST["rol4"]))
	{
		$rol4="niños,";
		echo "Rol4 = $rol4 <br> \n";
	}

	$escenario = $_POST["lugar"];
	echo "Escenario = $escenario <br> \n";

	$final     = $_POST["final"];
	echo "Final = $final <br><br> \n";

	echo "cuento($rol1$rol2$rol3$escenario) <br>	";
	$funcion = "cuento($rol1$rol2$rol3$escenario)";
	$output = `swipl -s Cuento2jeni.pl -g "$funcion" -t halt`;
	var_dump($output);
?>