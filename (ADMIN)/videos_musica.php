<head>
<title>Videos Musicales</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="estilos.css" rel="stylesheet" type="text/css">
</head>

<body background="bg5.jpg">


  <h2><b>VIDEOS MUSICALES</b>  </h2>
<blockquote>
  A continuaci&oacute;n presento mi lista de videos musicales, ahi copio y pego tal y como tal los tengo organizados, la verdad ya no me d&aacute; por coleccionarlos mucho.

  <p>
    
    <?php
	//abrimos el archivo en lectura
	$archivo = "dbl_music.txt";
	$fp = fopen($archivo,"r");
	
	//leemos el archivo
	$texto = fread($fp, filesize($archivo));
	
	//transformamos los saltos de línea en etiquetas <br>
	$texto = nl2br($texto);
	
	echo $texto;
	?>
  	</p>
  <p>phpversion( ) = <?php echo phpversion(); ?>
  </p>
</blockquote>
</body>
