<head>
<title>Videos de Anime</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="estilos.css" rel="stylesheet" type="text/css">
</head>

<body background="bg1.jpg">
<h2>PELICULAS
</h2>
<table width="90%" border="1" bordercolor="#8F7864">
	  <tr>
	    <td bgcolor="#000000"><img src="dbz/logodbz2.jpg" width="160" height="120"></td>
	    <td width="282"><p class="style8"><strong>Dragon Ball<br>
        Dragon Ball Z<br>
        Dragon Ball GT </strong></p>	      <p class="style8">Pel&iacute;culas y Ovas </p></td>
	    <td width="210"><div align="center" class="style8">Hacer click <a href="dbz.htm"><strong>AQUI</strong></a> para ver la lista completa y correcta. </div></td>
  </tr>
<?php
//abrimos el archivo en lectura
$file = "db_movies.txt";
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
	  
		<td width="160" bgcolor="#000000"> <img src=" <?php echo $imgurl ?> " width="160" >		</td>
		
		<td><p class="style8">
		  <b> <?php echo $titulo ?> </b>
		  <br>
		  <br>
	    <?php echo $idioma ?>
		  <br>
		  <br> 
	    <?php echo $espacio ?>	    </p></td>
		
		<td><p><span class="style8">	    <?php echo $formato ?>
		  </span>
		    <hr color="#8F7864" size="1">
		  <span class="style8"><?php echo $genero ?>		  </span>
		  <hr color="#8F7864" size="1">
		  <span class="style8"><?php echo $fansub ?>		  </span>
		  <hr color="#8F7864" size="1">
		  <span class="style8"> Calificación Personal: <?php echo $calificacion ?>
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

 <p align="right">Registros mostrados = <?php echo $counter; ?> <br>
    phpversion( ) = <?php echo phpversion(); ?><br>
    <a href="printer0.php" target="_blank">Version para Impresora</a><br>
 </p>
</body>

