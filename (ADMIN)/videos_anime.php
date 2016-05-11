<head>
<title>Videos de Anime</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="estilos.css" rel="stylesheet" type="text/css">
</head>

<body background="bg4.jpg">

<h2><b>VIDEOS 
  DE ANIME</b>
</h2>
<blockquote>  He aqui algo de mi lista de videos cortos de anime, anteriormente con esta secci&oacute;n inici&eacute; mi p&aacute;gina web, y aunque no lo crean, a mucha gente le llam&oacute; la atenci&oacute;n de esta secci&oacute;n, pero se desilucionaban cuando no pod&iacute;an bajar nada de aqui, pero hice intercambios con muchas personas, de esta forma fue creciendo esta lista hasta llegar el punto de tener demasiados que no puedo listarlos todos. Para simplificarme m&aacute;s, lo que se muestra a continuaci&oacute;n es una llamada a la lista de todo mi directorio de videos de anime de mi disco duro. Agradecimientos a <a href="http://spaces.msn.com/kuroizero" target="_blank">Kuroi Zero</a> por motivarme a coleccionar openings y endings. La siguiente lista contiene openings, endings, anime music videos (amv), trailers, promos, videos de juegos de playstation, jpop, y otras cosas m&aacute;s.
  <blockquote>    
    <?php
	//abrimos el archivo en lectura
	$archivo = "dbl_anime.txt";
	$fp = fopen($archivo,"r");
	
	//leemos el archivo
	$texto = fread($fp, filesize($archivo));
	
	//transformamos los saltos de l&iacute;nea en etiquetas <br>
	$texto = nl2br($texto);
	
	echo $texto;
	?>
  </blockquote>
</blockquote>
phpversion( ) = <?php echo phpversion(); ?> 
</body>