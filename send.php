<head>
<script language="javascript">
function redireccionar() {
//setTimeout("location.href='in_init.php'", 5000);
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="estilos.css" rel="stylesheet" type="text/css">
</head>
<BODY onLoad="redireccionar()">
<div align="center">
  <p>
    <?php
	
	$nombre = htmlentities($_POST["nombre"]);
	$email = htmlentities($_POST["nombre"]);
	$pais = htmlentities($_POST["nombre"]);
	$asunto = htmlentities($_POST["nombre"]);
	
	$to = "carlos.po5i@gmail.com";
	$subject = "[animepo5i] Envio automatico de correo";
	$header = "From: $nombre <$email>";
	$mensaje = "Me escribieron desde mi pagina web la siguiente informacion:<br><br><br>\n\n\n Nombre: $nombre\neMail: $email\nCiudad: $pais\nAsunto: $asunto\n Su mensaje: $area\n\n\n\nMensaje enviado desde: ".$REMOTE_ADDR." y con el browser: ".$HTTP_USER_AGENT;
	
	
	if(mail($to,$subject,$mensaje,$header))
		echo "El mensaje ha sido enviado con exito";
	else
		echo "No fue posible enviar el mensaje<br>Problemas con el servidor, mejor escribame a carlos . po5i @ gmail . com (sin espacios)";
	
	?>
</p>
</div>
</body>
