<head>
<title>Mangas</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="estilos.css" rel="stylesheet" type="text/css">
</head>

<body background="bg1.jpg">
<h2>e-MANGA
</h2>
<table width="90%" border="1" bordercolor="#8F7864">

<?php
//abrimos el archivo en lectura
$file = "db_manga.txt";
$fp = fopen($file,"r");

//contador
$counter = 0;

//leemos el archivo
$text = fread($fp, filesize($file));
$token = explode ("\n", $text); 
//$i = 0;

for($i=0;$i<sizeof($token);$i=$i+8)
{
	$counter++;
	$titulo = $token[0+$i];
	$items = $token[1+$i];
	$genero = $token[2+$i];
	$idioma = $token[3+$i];
	$mangaka = $token[4+$i];
	$tamano = $token[5+$i];
	$imgurl = $token[6+$i];
	$nullp = $token[7+$i];
	
	?>
	  <tr>
	  
		<td width="100" bgcolor="#000000"> <img src=" <?php echo $imgurl ?> " width="100" >		</td>
		
		<td width="387" class="style8"><p class="style8">
			<b> <?php echo $titulo ?> </b>
			<br><br><span class="style19"><?php echo $items ?></span>
		</p> </td>
		
		<td width="366" class="style8"><p class="style8"> 
			<span class="style17"><strong><u>G&eacute;nero</u></strong>:&nbsp;&nbsp;&nbsp; <?php echo $genero ?></span>
			<hr color="#8F7864" size="1"><span class="style16"><strong><u>Idioma</u></strong>:&nbsp;&nbsp;&nbsp;&nbsp; <?php echo $idioma ?> </span>
			<hr color="#8F7864" size="1"><span class="style18"><strong><u>Mangaka</u></strong>: <?php echo $mangaka ?></span>
			<hr color="#8F7864" size="1">
			<span class="style15"><strong><u>Tama&ntilde;o</u></strong>:&nbsp;&nbsp; <?php echo $tamano ?></span>
			
		</p> </td>
	  </tr>
	
	<?php
	//cerramos bloque FOR
}
//cerramos el archivo
fclose($fp);
?>
</table>
<p align="right" class="MsoNormal"><span class="style10">Registros mostrados = <?php echo $counter; ?> <br>
  phpversion( ) = <?php echo phpversion(); ?> </span></p>
</body>
