<head>
<title>Videos de Anime</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="estilos.css" rel="stylesheet" type="text/css">
</head>

<body background="bg1.jpg">
<h2>NO ANIME
</h2>
<table width="90%" border="1" bordercolor="#8F7864">

<?php
//abrimos el archivo en lectura
$file = "db_nonanime.txt";
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
		
		<td width="426"><p class="style8">
		  <b> <?php echo $titulo ?> </b> 
		  <br>
		  <br>
		  <?php echo $items ?>
		  <br>
		  <br>
	    <?php echo $idioma ?>
		  <br>
		  <br> 
	    <?php echo $espacio ?>	    </p></td>
		
		<td width="267"><p><span class="style8">	    <?php echo $formato ?>
		  </span>
		    <hr color="#8F7864" size="1">
		  <span class="style8"><?php echo $genero ?>		  </span>
		  <hr color="#8F7864" size="1">
		  <span class="style8"><?php echo $fansub ?>		  </span>
		  <hr color="#8F7864" size="1">
		  <span class="style8">Calificación Personal: <?php echo $calificacion ?>
		  </p> 
	    </span></td>
	  </tr>
	
	<?php
	//cerramos bloque FOR
}
//cerramos el archivo
fclose($fp);
?>
</table>
<div align="right">Registros mostrados = <?php echo $counter; ?> <br>
  phpversion( ) = <?php echo phpversion(); ?> <br>
  <a href="printer05.php" target="_blank">Version para Impresora</a><br>
</div>
</body>
