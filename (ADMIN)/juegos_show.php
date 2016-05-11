<link href="estilos.css" rel="stylesheet" type="text/css">
<body>
    <p>
    <?php
	//abrimos el archivo en lectura
	$archivo = "dbl_rom.txt";
	$fp = fopen($archivo,"r");
	
	//leemos el archivo
	$texto = fread($fp, filesize($archivo));
	
	//transformamos los saltos de l&iacute;nea en etiquetas <br>
	$texto = nl2br($texto);
	
	echo $texto;
	?>    
    </p>
</body>