<?php
	header('Content-Type: text/html; charset=ISO-8859-1');
	$instruccion="";
	$rol1 = "";
	$rol2 = "";
	$rol3 = "";
	$rol4 = "";
	$rol5 = "";
	$i = 0;

	if(isset($_POST["rol1"]))
	{
		$rol1=",hombre"; $i++;
	}
	if(isset($_POST["rol2"]))
	{
		$rol2=",mujer"; $i++;
	}
	if(isset($_POST["rol3"]))
	{
		$rol3=",villano"; $i++;
	}
	if(isset($_POST["rol4"]))
	{
		$rol4=",nino"; $i++;
	}
	if(isset($_POST["rol5"]))
	{
		$rol5=",nina"; $i++;
	}
	$instruccion = $rol1.$rol2.$rol3.$rol4.$rol5;

	if($i == 2)
	{
		$instruccion .= ",c,d";
	}
	if($i == 3)
	{
		$instruccion .= ",d";
	}
	$instruccion = substr($instruccion, 1);
		
	$escenario = (!empty($_POST['lugar']) ? $_POST['lugar'] : null);
	$final     = (!empty($_POST['final']) ? $_POST['final'] : null);
	
	$funcion_inicio = "inicio($instruccion,$escenario),write('INICIO')";
	$inicio = `swipl -s Cuentos.pl -g "$funcion_inicio" -t halt`;

	$funcion_etapa1 = "etapa1($instruccion),write('ETAPA1'),false";
	$etapa1 = `swipl -s Cuentos.pl -g "$funcion_etapa1" -t halt`;

	$funcion_etapa2 = "etapa2($instruccion),write('ETAPA2'),false";
	$etapa2 = `swipl -s Cuentos.pl -g "$funcion_etapa2" -t halt`;

	$funcion_etapa3 = "etapa3($instruccion),write('ETAPA3'),false";
	$etapa3 = `swipl -s Cuentos.pl -g "$funcion_etapa3" -t halt`;

	$funcion_final = "final($instruccion,$final),write('FINAL'),false";
	$final = `swipl -s Cuentos.pl -g "$funcion_final" -t halt`;

	$output = $inicio.$etapa1.$etapa2.$etapa3.$final;
	
	if($output == "")
	{
		$output = "Ya no hay más historias (ಥ_ಥ )";
	}
	echo $output;
?>
