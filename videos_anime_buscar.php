<head>
<title>Videos de Anime</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="estilos.css" rel="stylesheet" type="text/css">
</head>

<body background="bg1.jpg">

<h2>BUSCAR ANIME </h2>

	
<blockquote>
  <form action="videos_anime_sql.php" method="post" name="formulario" id="formulario">	
    <table align="left" bordercolor="#8F7864" border="0" cellpadding="5" cellspacing="0">	
      <tr>
        <td valign="top">Texto a buscar: </td>
        <td><strong>
          <input name="query" type="text" id="query">
        &nbsp;</strong></td>
      </tr>
      <tr>
        <td valign="top">Buscar en: </td>
        <td><input name="radio_opcion" type="radio" value="nombre" checked>
          Nombre<br>
          <input name="radio_opcion" type="radio" value="lenguaje"> 
          Lenguaje
          <br>
          <input name="radio_opcion" type="radio" value="subtitulos"> 
          Subtitulos
          <br>
          <input name="radio_opcion" type="radio" value="formato"> 
          Formato
          <br>
          <input name="radio_opcion" type="radio" value="genero"> 
          G&eacute;nero
          <br>
          <input name="radio_opcion" type="radio" value="fansub"> 
          Fansub
          <br>
          <input name="radio_opcion" type="radio" value="autor"> 
          Autor
          <br>
          <input name="radio_opcion" type="radio" value="calificacion"> 
        Calificaci&oacute;n</td>
      </tr>
      <tr>
        <td valign="top">&nbsp;</td>
        <td><input name="BTbuscar" type="submit" class="boton" id="BTbuscar" value="Buscar"></td>
      </tr>
    </table>
  </form>
</blockquote>
</body>
