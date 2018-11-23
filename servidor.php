<?php
	// header('Content-Type: text/html; charset=ISO-8859-1');
	$rol1="a,";
	$rol2="b,";
	$rol3="c,";
	$rol4="d,";
	$rol5="e,";
	$comodin="f";
	$output="Habia una vez...";

	if(isset($_POST["rol1"]))
	{
		$rol1="hombre,";
	}
	if(isset($_POST["rol2"]))
	{
		$rol2="mujer,";
	}
	if(isset($_POST["rol3"]))
	{
		$rol3="villano,";
	}
	if(isset($_POST["rol4"]))
	{
		$rol4="niño,";
	}
	if(isset($_POST["rol5"]))
	{
		$rol5="niña,";
	}
		
	$escenario = (!empty($_POST['lugar']) ? $_POST['lugar'] : null);
	$final     = (!empty($_POST['final']) ? $_POST['final'] : null);
	// echo "cuento($rol1$rol2$rol3$rol4$rol5$escenario,$final) <br>";
	
	// $funcion = "cuento($rol1$rol2$rol3$rol4$escenario,$final),nl,false";
	$fInicio = "inicio($rol1$rol2$rol3$rol4$escenario),write('INICIO')";
	$inicio = `swipl -s Cuentos.pl -g "$fInicio" -t halt`;

	$funcion_etapas = "etapas($rol1$rol2$rol3$rol4$comodin),write('ETAPAS'),false";
	$etapas = `swipl -s Cuentos.pl -g "$funcion_etapas" -t halt`;

	$funcion_final = "final($rol1$rol2$rol3$rol4$final),write('FINAL'),false";
	$final = `swipl -s Cuentos.pl -g "$funcion_final" -t halt`;
	$output = $inicio.$etapas.$final;
	
	if($output == "")
	{
		$output = "Ya no hay más historias (ಥ_ಥ )";
	}
	echo $output;
?>
