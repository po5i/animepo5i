<head>
<title>Videos de Anime</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<h2>PELICULAS
</h2>
<table width="90%" border="1" cellpadding="1" cellspacing="0" bordercolor="#000000">
 <tr>
	    <td width="39%" class="style2"><strong>NOMBRE</strong></td>
	    <td width="41%" class="style2"><strong>LENG.</strong></td>
	    <td width="20%" class="style2"><strong>DISCOS</strong></td>
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
	  
		<td><p class="style2">
	    <?php echo $titulo ?>		  </p></td>
		
		<td><p class="style2"><?php echo $idioma ?> 
	    </td>
		
	    <td class="style2"><?php echo $espacio ?></td>
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
  <br>
www.animepo5i.cjb.net<br>
<?php print (date("d/n/Y-H:i")); ?></p>
</body>

