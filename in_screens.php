<head>
<title>Po5i no ANIME</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="estilos.css" rel="stylesheet" type="text/css">
</head>

<body background="bg2.jpg" marginwidth="0">
<h2>Screenshots:</h2>
<blockquote>
<p align="center">

<?php
	switch($_GET[mode])
	{
		case "movies":
			$path = "movies";
			break;
		case "anime":
			$path = "anime";
			break;
		case "music":
			$path = "music";
			break;
		case "roms":
			$path = "roms";
			break;
		default:
			$path = "movies";
			break;
	}
?>

    <?php
    /* Basado en el siguiente script:
     * script  : randImg.php
     * version : 0.2
     * author  : enrique@barbeito.org
     * date    : vie feb 20 13:10:57 CET 2004
     *
     * */
    define("kRUTA",$path); /* directorio donde  se  encuentran las imagenes que rotaran. */

    /*           *
     * funciones *
     * --------- */

    function fLeeImg ()
    {
            // abrimos el directorio
            $workDir = opendir(kRUTA);
            // recogemos las imagenes y armamos un vector
            while ($fichero = readdir($workDir))
            {
                    if (($fichero != ".") && ($fichero != ".."))
                            $imagenes[]=$fichero;   
            }
            // cerramos el directorio
            closedir($workDir);
            return($imagenes);
    }
    function fShowAll ($array)
    {
            $numImg = count($array); // numero total de imagenes
            for($i=0;$i<$numImg;$i++)
            {
                 echo "&nbsp;<img height=120 width=160 src=\"".kRUTA.'/'."$array[$i]\" border=\"0\" />";
		 if(($i+1) % 4 == 0)
			echo "<br>";
            }
    }

    /*                    *
     * programa principal *
     * ------------------ */

    $imgs = fLeeImg(); // definimos un vector de imagenes
    fShowAll($imgs);	// imprime cada una de las imagenes
	?>
  </p>
</blockquote>
</body>
