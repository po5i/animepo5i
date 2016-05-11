<? include "conexion.php"; 
	

//vemos si el usuario y contraseña es váildo
if (isset($_POST["user"]) && isset($_POST["password"])){
    /*//usuario y contraseña válidos
    //defino una sesion y guardo datos
	//conecto con la base de datos
	$conn = mysql_connect("localhost","root","") or die("no se pudo conectar a la base de datos");
	//selecciono la BBDD
	mysql_select_db("rte",$conn); */
	$user = htmlentities($_POST["user"]);
	$password= htmlentities($_POST["password"]);
	//Sentencia SQL para buscar un usuario con esos datos
	$ssql = "select * from users where user = '$user' and password = '$password'";

	//Ejecuto la sentencia
	$rs = mysql_query($ssql) or die(mysql_error());
	$row = mysql_fetch_row($rs);
	
	if (mysql_num_rows($rs)!=0){		
			//usuario y contraseña válidos
    		//defino una sesion y guardo datos
    		session_start();
    		$_SESSION["user_autentificado"]= "SIP";
			$_SESSION["user"]= $user;
			header ("Location: videos_anime_adminform.php");
			
	}else {
    	//si no existe le mando otra vez a la portada
    	header("Location: videos_anime_admin.php?error=si");
	} 

    
    
}else {
    //si no existe le mando otra vez a la portada
    header("Location: videos_anime_admin.php?error=si");
}
?> 