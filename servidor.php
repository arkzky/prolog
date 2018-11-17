<?php
	// header('Content-Type: text/html; charset=ISO-8859-1');
	$rol1="";
	$rol2="";
	$rol3="";
	$rol4="";
	$rol5="";
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
		$rol4="niña,";
	}
	if(isset($_POST["rol5"]))
	{
		$rol5="niño,";
	}
		
	$escenario = (!empty($_POST['lugar']) ? $_POST['lugar'] : null);
	$final     = (!empty($_POST['final']) ? $_POST['final'] : null);
	// echo "cuento($rol1$rol2$rol3$rol4$rol5$escenario,$final) <br>";
	
	$funcion = "cuento($rol1$rol2$rol3$rol4$rol5$escenario,$final),nl,false";
	$output = `swipl -s CuentoversionAlex.pl -g "$funcion" -t halt`;
	// $separador = preg_split("/\n/", $output);
	// $textarea = $separador[0];
	
	if($output == "")
	{
		$output = "Ya no hay más historias (ಥ_ಥ )";
	}
	echo $output;
?>
