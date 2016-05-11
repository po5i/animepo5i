<head>
<title>Videos de Anime</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<h2>EPISODIOS y ESPECIALES
</h2>
<table width="90%" border="1" cellpadding="1" cellspacing="0" bordercolor="#000000">
<tr align="left" valign="top">
	    <td height="22" class="style2"><strong>NOMBRE</strong></td>
	    <td class="style2"><strong>EPS.</strong></td>
	    <td class="style2"><strong>LENG.</strong></td>
	    <td class="style2"><strong>DISCOS</strong></td>
  </tr>
<?php
//abrimos el archivo en lectura
$file = "db_series.txt";
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
	  
	  <tr align="left" valign="top">
	  
		<td width="287" height="22"><p class="style2">
	    <?php echo $titulo ?>		  </p></td>
		
		<td width="121"><p class="style2"><?php echo $items ?> 
	    </td>
		
	    <td width="170" class="style2"><?php echo $idioma ?></td>
	    <td width="93" class="style2"><?php echo $espacio ?></td>
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
