<?
	include "seguridad_admin.php"; 
	include "conexion.php";	
?>
<head>
<title>Videos de Anime</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="estilos.css" rel="stylesheet" type="text/css">
</head>

<body background="bg1.jpg">

<h2>ADMINISTRACION</h2>

<?
	if(isset($_POST["BTpassword"]))	//actualizar el password
	{
		$user = $_SESSION["user"];
		$password = htmlentities($_POST["password"]);
		$result = mysql_query("update users set password='$password' where user='$user'");
		
		if($result)
			echo "Todo bien <a href='videos_anime_adminform.php'>VOLVER</a>";			
		else
			echo "Error de la base de datos <a href='videos_anime_adminform.php'>VOLVER</a><br>".mysql_error();
	}
	



	
	elseif(isset($_POST["BTagregar"]))	//agregar item
	{
		$nombre = htmlentities($_POST["nombre"]);
		$tipo = htmlentities($_POST["tipo"]);
		$duracion = htmlentities($_POST["duracion"]);
		$almacenamiento = htmlentities($_POST["almacenamiento"]);
		$lenguaje = htmlentities($_POST["lenguaje"]);
		$subtitulos = htmlentities($_POST["subtitulos"]);
		$calidad = htmlentities($_POST["calidad"]);
		$formato = htmlentities($_POST["formato"]);
		$genero = htmlentities($_POST["genero"]);
		$fansub = htmlentities($_POST["fansub"]);
		$autor = htmlentities($_POST["autor"]);
		$calificacion = htmlentities($_POST["calificacion"]);
		//$screenshot = htmlentities($_POST["screenshot"]);
		$incompleto = htmlentities($_POST["incompleto"]);
		
		//subir archivo fisicamente y extraer el nombre del archivo para ponerlo en la db
		if (is_uploaded_file($HTTP_POST_FILES['screenshot']['tmp_name']))
		{
			$screenshot = $HTTP_POST_FILES['screenshot']['name'];
			//referencia del path de imagenes
			$path = "";
			if($tipo == "manga")
				$path = "manga/";
			elseif($tipo == "noanime")
				$path = "others/";
			else
				$path = "movies/";
				
			$url_imagen = $path.$screenshot;
			
			copy($HTTP_POST_FILES['screenshot']['tmp_name'], $url_imagen);
			
			//unlink($url_imagen);		//borrar archivo que esta subido:
		}
		else
		{
			echo "Error al subir el archivo: " . $HTTP_POST_FILES['screenshot']['name'] . "<br>";
			//return;
			$screenshot = "";
		}

		
		$result = mysql_query("insert into material (nombre,tipo,duracion,almacenamiento,lenguaje,subtitulos,calidad,formato,genero,fansub,autor,calificacion,screenshot,incompleto) values ('$nombre','$tipo','$duracion','$almacenamiento','$lenguaje','$subtitulos','$calidad','$formato','$genero','$fansub','$autor','$calificacion','$screenshot','$incompleto')");
		
		if($result)
			echo "Todo bien <a href='videos_anime_adminform.php'>VOLVER</a>";			
		else
			echo "Error de la base de datos <a href='videos_anime_adminform.php'>VOLVER</a><br>".mysql_error();
		
	}






	elseif(isset($_POST["BTlogout"]))	//logout
	{
		session_destroy();
		header ("Location: videos_anime_admin.php");
	}






	elseif(isset($_POST["BTeliminar"]))	//eliminar item
	{
		$id = htmlentities($_POST["lista_remove"]);
		$result = mysql_query("delete from material where id = '$id'");
		
		if($result)
			echo "Todo bien <a href='videos_anime_adminform.php'>VOLVER</a>";			
		else
			echo "Error de la base de datos <a href='videos_anime_adminform.php'>VOLVER</a><br>".mysql_error();
	}




	

	elseif(isset($_POST["BTeditar1"]))	//editar item formulario
	{
		$id = htmlentities($_POST["lista_edit"]);

		$result = mysql_query("select * from material where id = '$id'");
				
		while ($row = mysql_fetch_array($result)) 
		{
			$id = $row["id"];
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
		}
		mysql_free_result($result);
		
		?>
		<form action="" method="post" name="form2" enctype="multipart/form-data">
		<table width="100%" border="0" cellspacing="0" cellpadding="1">
                <tr>
                  <td >Nombre</td>
                  <td >
				  <input name="nombre" type="text" id="nombre" size="50" value="<?=$nombre?>">
				  <input name="id" type="hidden" value="<?=$id?>"> 
				  <input name="screenshot_old" type="hidden" value="<?=$screenshot?>">
				  </td>
                  <td rowspan="14" align="center" valign="middle">
				  <?
				  	//referencia del path de imagenes
					$path = "";
					if($tipo == "manga")
						$path = "manga/";
					elseif($tipo == "noanime")
						$path = "others/";
					else
						$path = "movies/";
						
					$url_imagen = $path.$screenshot;
				  ?>
				  <img name="screen" width="160" alt="" src="<?=$url_imagen?>">
				  </td>
                </tr>
                <tr>
                  <td>Tipo</td>
                  <td><input name="tipo" type="text" id="tipo" size="50" value="<?=$tipo?>"></td>
                </tr>
                <tr>
                  <td>Duracion</td>
                  <td><input name="duracion" type="text" id="duracion" size="50" value="<?=$duracion?>"></td>
                </tr>
                <tr>
                  <td>Almacenamiento</td>
                  <td><input name="almacenamiento" type="text" id="almacenamiento" size="50" value="<?=$almacenamiento?>"></td>
                </tr>
                <tr>
                  <td>Lenguaje</td>
                  <td><input name="lenguaje" type="text" id="lenguaje" size="50" value="<?=$lenguaje?>"></td>
                </tr>
                <tr>
                  <td>Subtitulos</td>
                  <td><input name="subtitulos" type="text" id="subtitulos" size="50" value="<?=$subtitulos?>"></td>
                </tr>
                <tr>
                  <td>Calidad</td>
                  <td><input name="calidad" type="text" id="calidad" size="50" value="<?=$calidad?>"></td>
                </tr>
                <tr>
                  <td>Formato</td>
                  <td><input name="formato" type="text" id="formato" size="50" value="<?=$formato?>"></td>
                </tr>
                <tr>
                  <td>Genero</td>
                  <td><input name="genero" type="text" id="genero" size="50" value="<?=$genero?>"></td>
                </tr>
                <tr>
                  <td>Fansub</td>
                  <td><input name="fansub" type="text" id="fansub" size="50" value="<?=$fansub?>"></td>
                </tr>
                <tr>
                  <td>Autor</td>
                  <td><input name="autor" type="text" id="autor" size="50" value="<?=$autor?>"></td>
                </tr>
                <tr>
                  <td>Calificacion</td>
                  <td><input name="calificacion" type="text" id="calificacion" size="5" value="<?=$calificacion?>"></td>
                </tr>
                <tr>
                  <td>Screenshot</td>
                  <td><input name="screenshot" type="file" id="screenshot" value="<?=$screenshot?>"></td>
                </tr>
                <tr>
                  <td>Incompleto</td>
                  <td><input name="incompleto" type="text" id="screenshot" size="5" value="<?=$incompleto?>"></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="2"><input name="BTeditar2" type="submit" class="boton" id="BTeditar2" value="Editar">
                  </td>
                </tr>
              </table>
			  </form>
			  <?
	}



	elseif(isset($_POST["BTeditar2"]))	//editar item 
	{
		$id = htmlentities($_POST["id"]);
		$nombre = htmlentities($_POST["nombre"]);
		$tipo = htmlentities($_POST["tipo"]);
		$duracion = htmlentities($_POST["duracion"]);
		$almacenamiento = htmlentities($_POST["almacenamiento"]);
		$lenguaje = htmlentities($_POST["lenguaje"]);
		$subtitulos = htmlentities($_POST["subtitulos"]);
		$calidad = htmlentities($_POST["calidad"]);
		$formato = htmlentities($_POST["formato"]);
		$genero = htmlentities($_POST["genero"]);
		$fansub = htmlentities($_POST["fansub"]);
		$autor = htmlentities($_POST["autor"]);
		$calificacion = htmlentities($_POST["calificacion"]);
		$screenshot_old = htmlentities($_POST["screenshot_old"]);
		$incompleto = htmlentities($_POST["incompleto"]);		
		
		
		
		//subir archivo fisicamente y extraer el nombre del archivo para ponerlo en la db
		if (is_uploaded_file($HTTP_POST_FILES['screenshot']['tmp_name']))
		{
			$screenshot = $HTTP_POST_FILES['screenshot']['name'];
			//referencia del path de imagenes
			$path = "";
			if($tipo == "manga")
				$path = "manga/";
			elseif($tipo == "noanime")
				$path = "others/";
			else
				$path = "movies/";
				
			$url_imagen = $path.$screenshot;
			
			copy($HTTP_POST_FILES['screenshot']['tmp_name'], $url_imagen);
			
			//unlink($url_imagen);		//borrar archivo que esta subido:
		}
		else
		{
			if($HTTP_POST_FILES['screenshot']['name'] != "")
			{
				echo "Error al subir el archivo: " . $HTTP_POST_FILES['screenshot']['name'] . "<br> <a href='videos_anime_adminform.php'>VOLVER</a>";
			}
			$screenshot = $screenshot_old;
		}

		
		$result = mysql_query("update material set nombre='$nombre', tipo='$tipo', duracion='$duracion', almacenamiento='$almacenamiento', lenguaje='$lenguaje', subtitulos='$subtitulos', calidad='$calidad', formato='$formato', genero='$genero', fansub='$fansub', autor='$autor', calificacion='$calificacion', screenshot='$screenshot', incompleto='$incompleto' where id='$id' ");
		
		if($result)
			echo "Todo bien <a href='videos_anime_adminform.php'>VOLVER</a>";			
		else
			echo "Error de la base de datos <a href='videos_anime_adminform.php'>VOLVER</a><br>".mysql_error();
	}



	
	else	//formulario
	{			
		
		$result = mysql_query("select password from users where user = '".$_SESSION["user"]."'");
		$row = mysql_fetch_row($result);
		mysql_free_result($result);
		
		
		?>
		<form action="" method="post" name="form2" enctype="multipart/form-data">
		  <table width="100%" border="0" cellpadding="5" cellspacing="0" bordercolor="#8F7864">
            <tr>
              <td width="16%" valign="top">Cambiar Clave :</td>
              <td width="84%"><label>
                <input name="password" type="password" id="password" value="<?=$row[0] ?>" maxlength="20"> 
                <input name="BTpassword" type="submit" class="boton" id="BTpassword" value="Cambiar">
              </label></td>
            </tr>
            <tr>
              <td valign="top">Agregar Item:</td>
              <td><hr>
              <table width="100%" border="0" cellspacing="0" cellpadding="1">
                <tr>
                  <td width="16%">Nombre</td>
                  <td width="84%"><input name="nombre" type="text" id="nombre" size="50"></td>
                </tr>
                <tr>
                  <td>Tipo</td>
                  <td><select name="tipo" id="tipo">
                    <option>--seleccionar--</option>
                    <option>serie</option>
                    <option>ova</option>
                    <option>pelicula</option>
                    <option>noanime</option>
                    <option>manga</option>
                 </select></td>
                </tr>
                <tr>
                  <td>Duracion</td>
                  <td><input name="duracion" type="text" id="duracion" size="50"></td>
                </tr>
                <tr>
                  <td>Almacenamiento</td>
                  <td><input name="almacenamiento" type="text" id="almacenamiento" size="50"></td>
                </tr>
                <tr>
                  <td>Lenguaje</td>
                  <td><input name="lenguaje" type="text" id="lenguaje" size="50"></td>
                </tr>
                <tr>
                  <td>Subtitulos</td>
                  <td><input name="subtitulos" type="text" id="subtitulos" size="50"></td>
                </tr>
                <tr>
                  <td>Calidad</td>
                  <td><input name="calidad" type="text" id="calidad" size="50"></td>
                </tr>
                <tr>
                  <td>Formato</td>
                  <td><input name="formato" type="text" id="formato" size="50"></td>
                </tr>
                <tr>
                  <td>Genero</td>
                  <td><input name="genero" type="text" id="genero" size="50"></td>
                </tr>
                <tr>
                  <td>Fansub</td>
                  <td><input name="fansub" type="text" id="fansub" size="50"></td>
                </tr>
                <tr>
                  <td>Autor</td>
                  <td><input name="autor" type="text" id="autor" size="50"></td>
                </tr>
                <tr>
                  <td>Calificacion</td>
                  <td><select name="calificacion" id="select">
                    <option>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                 </select></td>
                </tr>
                <tr>
                  <td>Screenshot</td>
                  <td><input name="screenshot" type="file" id="screenshot">
				  <input type="hidden" name="MAX_FILE_SIZE" value="10000000"></td>
                </tr>
                <tr>
                  <td>Incompleto</td>
                  <td><select name="incompleto" id="incompleto">
                    <option>si</option>
                    <option selected>no</option>
                  </select>                  </td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><br>
                  <input name="BTagregar" type="submit" class="boton" id="BTagregar" value="Agregar"></td></tr>
              </table></td>
            </tr>
            <tr>
              <td valign="top">Editar Item: </td>
              <td><hr><select name="lista_edit" id="lista_edit">
                <option selected="selected" value="0"> -- Seleccione -- </option>
                <?
				$result = mysql_query("select * from material order by nombre");
				
				while ($row = mysql_fetch_array($result)) 
				{
					$id = $row["id"];
					$nombre = $row["nombre"];
					$tipo = $row["tipo"];
					echo "<option value='$id'>$nombre ($tipo) </option>";
				}
				mysql_free_result($result);
				?>
              </select>
                <br>
                <br>
                <input name="BTeditar1" type="submit" class="boton" id="BTeditar1" value="Editar">              </td>
            </tr>
            <tr>
              <td valign="top">Eliminar Item: </td>
              <td><hr>
                <select name="lista_remove" id="lista_remove">
                  <option selected="selected" value="0"> -- Seleccione -- </option>
				<?
				$result = mysql_query("select * from material order by nombre");
				
				while ($row = mysql_fetch_array($result)) 
				{
					$id = $row["id"];
					$nombre = $row["nombre"];
					$tipo = $row["tipo"];
					echo "<option value='$id'>$nombre ($tipo) </option>";
				}
				mysql_free_result($result);
				?>
                </select>
                <br>
                <br>
                <input name="BTeliminar" type="submit" class="boton" id="BTeliminar" value="Eliminar" onClick="if(confirm('Desea eliminar el item seleccionado?'))return true; else return false;">
              </td>
            </tr>
          </table>
		<p>
		  <input name="BTlogout" type="submit" class="boton" id="BTlogout" value="Logout">
		</p>
		  
		</form>
		
<?	} ?>

</p>
</body>
