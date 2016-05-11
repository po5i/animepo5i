<link href="estilos.css" rel="stylesheet" type="text/css">
<body background="bg1.jpg">

<h2>ADMINISTRACION</h2>

<?
$error = @$_GET['error'];
if($error=="si")
	echo("<p>ERROR: Usuario o password incorrecto</p>");
?>

<form name="form1" method="post" action="control_admin.php">
		  <table border="0" cellspacing="0" cellpadding="5">
            <tr>
              <td>Username:</td>
              <td><label>
                <input name="user" type="text" id="user" maxlength="20">
              </label></td>
            </tr>
            <tr>
              <td>Password:</td>
              <td><label>
                <input name="password" type="password" id="password" maxlength="20">
              </label></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><label>
                <input name="BTlogin" type="submit" class="boton" id="BTlogin" value="Login">
              </label></td>
            </tr>
          </table>
		</form>
		<p>&nbsp;</p>
</p>
</body>
