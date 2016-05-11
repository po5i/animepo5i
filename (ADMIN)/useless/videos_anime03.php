<head>
<title>Videos de Anime</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="estilos.css" rel="stylesheet" type="text/css">
</head>

<body background="bg1.jpg">
<h2><strong>OVAS</strong>
</h2>
<table width="90%" border="1" bordercolor="#8F7864">

<?php
//abrimos el archivo en lectura
$file = "db_ovas.txt";
$fp = fopen($file,"r");

//contador
$counter = 0;

//leemos el archivo
$text = fread($fp, filesize($file));
$token = explode ("\n", $text); 
//$i = 0;

for($i=0;$i<sizeof($token);$i=$i+10)
{
	$counter++;
	$titulo = $token[0+$i];
	$items = $token[1+$i];
	$idioma = $token[2+$i];
	$espacio = $token[3+$i];
	$formato = $token[4+$i];
	$genero = $token[5+$i];
	$fansub = $token[6+$i];
	$calificacion = $token[7+$i];
	$imgurl = $token[8+$i];
	$nullp = $token[9+$i];
	
	?>
	  <tr>
	  
		<td width="160" bgcolor="#000000"> <img src=" <?php echo $imgurl ?> " width="160" >		</td>
		
		<td width="425" class="style8"><p class="style8">
			<b> <?php echo $titulo ?> </b> 
			<br><br><?php echo $items ?>
			<br><br><span class="style19"><?php echo $idioma ?></span>
			<br><br><span class="style15"> <?php echo $espacio ?> </span>
		</p> </td>
		
		<td width="268" class="style8"><p class="style8"> 
			<span class="style16"><?php echo $formato ?></span>
			<hr color="#8F7864" size="1"><span class="style17"><?php echo $genero ?></span>
			<hr color="#8F7864" size="1"><span class="style18"><?php echo $fansub ?></span>
			<hr color="#8F7864" size="1">Calificación Personal: <?php echo $calificacion ?>
		</p> </td>
	  </tr>
	
	<?php
	//cerramos bloque FOR
}
//cerramos el archivo
fclose($fp);
?>
</table>
<p align="right"><span class="style2"><span class="MsoNormal">Registros mostrados = <?php echo $counter; ?> </span></span></p>
<h2 align="left"><strong>DVD</strong></h2>
<table width="90%" border="1" bordercolor="#8F7864">

<?php
//abrimos el archivo en lectura
$file = "db_dvd.txt";
$fp = fopen($file,"r");

//contador
$counter = 0;

//leemos el archivo
$text = fread($fp, filesize($file));
$token = explode ("\n", $text); 
//$i = 0;

for($i=0;$i<sizeof($token);$i=$i+9)
{
	$counter++;
	$titulo = $token[0+$i];
	$idioma = $token[1+$i];
	$espacio = $token[2+$i];
	$formato = $token[3+$i];
	$genero = $token[4+$i];
	$fansub = $token[5+$i];
	$calificacion = $token[6+$i];
	$imgurl = $token[7+$i];
	$nullp = $token[8+$i];

	?>
	  <tr>
	  
		<td width="88" bgcolor="#000000"> <img src=" <?php echo $imgurl ?> " width="88" >		</td>
		
		<td width="497" class="style8"><p class="style8">
			<b> <?php echo $titulo ?> </b> 
			<br><br><span class="style19"><?php echo $idioma ?></span>
			<br><br><span class="style15"> <?php echo $espacio ?> </span>
		</p> </td>
		
		<td width="268" class="style8"><p class="style8"> 
			<span class="style16"><?php echo $formato ?></span>
			<hr color="#8F7864" size="1"><span class="style17"><?php echo $genero ?></span>
			<hr color="#8F7864" size="1"><span class="style18"><?php echo $fansub ?></span>
			<hr color="#8F7864" size="1">Calificación Personal: <?php echo $calificacion ?>
		</p> </td>
	  </tr>
	
	<?php
	//cerramos bloque FOR
}
//cerramos el archivo
fclose($fp);
?>
</table>
<p align="right" class="style2"><span class="MsoNormal">Registros mostrados = <?php echo $counter; ?> <br>
  phpversion( ) = <?php echo phpversion(); ?> <br>
  <a href="printer03.php" target="_blank">Version para Impresora</a><br>
  </span></p>
</body>
