<?
//Inicio la sesión
@session_start();

//COMPRUEBA QUE EL USUARIO ESTA AUTENTIFICADO
if (@$_SESSION["user_autentificado"] != "SIP") {
    //si no existe, envio a la página de autentificacion
    header("Location: videos_anime_admin.php?error=si");
    //ademas salgo de este script
    exit();
}
?>