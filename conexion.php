<?

	if (!@mysql_connect("localhost", "findjira_visit", "visit"))
	{
		die("No se pudo conectar a la base ".mysql_error());
	}
	mysql_select_db("findjira_animepo5i");
?>