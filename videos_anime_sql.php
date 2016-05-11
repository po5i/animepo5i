<head>
<title>Videos de Anime</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="estilos.css" rel="stylesheet" type="text/css">
</head>

<body background="bg1.jpg">

<h2>LISTA  DE ANIME </h2>

<?php 
	include "conexion.php";
	
	//viene una busqueda
	if(isset($_POST["query"]) and isset($_POST["radio_opcion"]))
	{
		$query = $_POST["query"];
		$campo = $_POST["radio_opcion"];
		$where = " where $campo like '%$query%' ";
		$ordenar = $campo;
	}
	else
	{
		//get filtro
		if(!isset($_GET["ver"]))
		{
			?>
			<p><strong>Ver tipo de anime de:</strong><br>
			<a href="videos_anime_sql.php?ver=ova">Ovas</a>
			<a href="videos_anime_sql.php?ver=serie">Series</a>
			<a href="videos_anime_sql.php?ver=pelicula">Peliculas</a>
			<a href="videos_anime_sql.php?ver=manga">Mangas</a>
			<a href="videos_anime_sql.php?ver=noanime">No-Animes</a>
			<?
			//preguntar si es busqueda o no
			exit();
		}
		else
		{
			$ver = $_GET["ver"];
			$where = " where tipo = '$ver' ";
			?>
			<p><strong>Ver tipo de anime de:</strong><br>
			<a href="videos_anime_sql.php?ver=ova" <?php if($ver=="ova") echo "class='seleccionado' style='color:#FFFFFF'";?>>Ovas</a>
			<a href="videos_anime_sql.php?ver=serie" <?php if($ver=="serie") echo "class='seleccionado' style='color:#FFFFFF'";?>>Series</a>
			<a href="videos_anime_sql.php?ver=pelicula" <?php if($ver=="pelicula") echo "class='seleccionado' style='color:#FFFFFF'";?>>Peliculas</a>
			<a href="videos_anime_sql.php?ver=manga" <?php if($ver=="manga") echo "class='seleccionado' style='color:#FFFFFF'";?>>Mangas</a>
			<a href="videos_anime_sql.php?ver=noanime" <?php if($ver=="noanime") echo "class='seleccionado' style='color:#FFFFFF'";?>>No-Animes</a>
			<?
		}
	
		
		//get ordenamiento
		if(isset($_GET["sort"]))
			$ordenar = $_GET["sort"];
		else
			$ordenar = "nombre";
		
		?>	
		<p><strong>Ordenar por:</strong><br>
		<a href="videos_anime_sql.php?sort=nombre&ver=<?=$ver?>" <?php if($ordenar=="nombre") echo "class=\"seleccionado\" style='color:#FFFFFF'";?>>Nombre</a>
		<a href="videos_anime_sql.php?sort=tipo&ver=<?=$ver?>" <?php if($ordenar=="tipo") echo "class=\"seleccionado\" style='color:#FFFFFF'";?>>Fecha de ingreso</a>
		<a href="videos_anime_sql.php?sort=duracion&ver=<?=$ver?>" <?php if($ordenar=="duracion") echo "class=\"seleccionado\" style='color:#FFFFFF'";?>>Numero de Capitulos</a> 
		<a href="videos_anime_sql.php?sort=genero&ver=<?=$ver?>" <?php if($ordenar=="genero") echo "class=\"seleccionado\" style='color:#FFFFFF'";?>>G&eacute;nero</a> 
		<a href="videos_anime_sql.php?sort=autor&ver=<?=$ver?>" <?php if($ordenar=="autor") echo "class=\"seleccionado\" style='color:#FFFFFF'";?>>Autor</a> 
		<a href="videos_anime_sql.php?sort=calificacion&ver=<?=$ver?>" <?php if($ordenar=="calificacion") echo "class=\"seleccionado\" style='color:#FFFFFF'";?>>Calificaci&oacute;n</a> 
		<a href="videos_anime_sql.php?sort=almacenamiento&ver=<?=$ver?>" <?php if($ordenar=="almacenamiento") echo "class=\"seleccionado\" style='color:#FFFFFF'";?>>Almacenamiento</a> 
		<a href="videos_anime_sql.php?sort=lenguaje&ver=<?=$ver?>" <?php if($ordenar=="lenguaje") echo "class=\"seleccionado\" style='color:#FFFFFF'";?>>Lenguaje</a> 
		<a href="videos_anime_sql.php?sort=subtitulos&ver=<?=$ver?>" <?php if($ordenar=="subtitulos") echo "class=\"seleccionado\" style='color:#FFFFFF'";?>>Subtitulos</a> 
		<a href="videos_anime_sql.php?sort=calidad&ver=<?=$ver?>" <?php if($ordenar=="calidad") echo "class=\"seleccionado\" style='color:#FFFFFF'";?>>Calidad</a> 
		<a href="videos_anime_sql.php?sort=formato&ver=<?=$ver?>" <?php if($ordenar=="formato") echo "class=\"seleccionado\" style='color:#FFFFFF'";?>>Formato</a> 
		<a href="videos_anime_sql.php?sort=fansub&ver=<?=$ver?>" <?php if($ordenar=="fansub") echo "class=\"seleccionado\" style='color:#FFFFFF'";?>>Fansub</a> 
		<a href="videos_anime_sql.php?sort=incompleto&ver=<?=$ver?>" <?php if($ordenar=="incompleto") echo "class=\"seleccionado\" style='color:#FFFFFF'";?>>Incompletos</a> </p>
		
 <? } ?>
		
		<table align="center" bordercolor="#8F7864" border="2" cellpadding="1" cellspacing="0">
		
<?
	
	//query
	$count = 0;
	$result = mysql_query("select * from material $where order by $ordenar");
	$num_rows = mysql_num_rows($result);
	
	if($num_rows==0)
	{
		echo "<p>Lo siento, no hay items que mostrar</p>";
		echo "<p><a href='javascript:history.back()'>Regresar?</a></p>";
	}
	
	while ($row = mysql_fetch_array($result)) 
	{
		$count++;
		$nombre = $row["nombre"];
		$tipo = $row["tipo"];
		$duracion = $row["duracion"];
		$almacenamiento = $row["almacenamiento"];
		$lenguaje = $row["lenguaje"];
		$subtitulos = $row["subtitulos"];
		$calidad = $row["calidad"];
		$formato = $row["formato"];
		$genero = $row["genero"];
		$fansub = $row["fansub"];
		$autor = $row["autor"];
		$calificacion = $row["calificacion"];
		$screenshot = $row["screenshot"];
		$incompleto = $row["incompleto"];
		
		//referencia del path de imagenes
		$path = "";
		if($tipo == "manga")
			$path = "manga/";
		elseif($tipo == "noanime")
			$path = "others/";
		else
			$path = "movies/";
			
		$url_imagen = $path.$screenshot;
		
		//mostramos los datos
		?>
		<tr>
		  <td rowspan="13" valign="middle" bgcolor="#000000">
		  <img name="screenshot" width="160" id="screenshot" src="<?=$url_imagen?>">		  </td>
		  <td>Nombre:</td>
		  <td><strong><?=$nombre?>&nbsp;</strong></td>
		</tr>
		<tr>
		  <td>Tipo:</td>
		  <td><?=$tipo?>&nbsp;</td>
		</tr>
		<tr>
		  <td>N&uacute;mero de cap&iacute;tulos:</td>
		  <td><?=$duracion?>&nbsp;</td>
		</tr>
		<tr>
		  <td>G&eacute;nero:</td>
		  <td><?=$genero?>&nbsp;</td>
		</tr>
		<tr>
		  <td>Autor:</td>
		  <td><?=$autor?>&nbsp;</td>
		</tr>
		<tr>
		  <td>Calificaci&oacute;n: </td>
		  <td><?=$calificacion?>&nbsp;</td>
		</tr>

		
		<tr>
		  <td>Almacenamiento:</td>
		  <td><?=$almacenamiento?>&nbsp;</td>
		  </tr>
		<tr>
		  <td>Lenguaje:</td>
		  <td><?=$lenguaje?>&nbsp;</td>
		  </tr>
		<tr>
		  <td>Subt&iacute;tulos:</td>
		  <td><?=$subtitulos?>&nbsp;</td>
		  </tr>
		<tr>
		  <td>Calidad:</td>
		  <td><?=$calidad?>&nbsp;</td>
		  </tr>
		<tr>
		  <td>Formato:</td>
		  <td><?=$formato?>&nbsp;</td>
		  </tr>
		<tr>
		  <td>Grupo de Traducci&oacute;n:</td>
		  <td><?=$fansub?>&nbsp;</td>
		  </tr>		
		<tr>
		<? if($incompleto == "si") { ?>
		  <td>&iquest;Esta incompleto? </td>
		  <td><?=$incompleto?>&nbsp;</td>
 		<? }	?>
		  </tr>

		<tr>
		  <td colspan="3" valign="top" bgcolor="#8F7864">&nbsp;</td>
  		</tr>
		 
		
<?php
	}
	mysql_free_result($result);
?>
</table>

<p align="right">
 	Registros mostrados = <?=$count ?><br>
   phpversion( ) = <? echo phpversion(); ?> <br>
</p>
</body>
