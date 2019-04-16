<?php




		include("connectDatabase.php");
		mysql_select_db($sqldatabase);

		if (!empty($_POST['description']))
		{
			$query = "SELECT * FROM News";
			$result = mysql_query ($query, $connect) or die ("Wrong query");

			$count = mysql_num_rows($result);

			$news_id = ($count+1);
			$timestamp = $_POST["year"].'-'.$_POST["month"].'-'.$_POST["date"];

			$query = "INSERT INTO News VALUES ('$news_id', '$timestamp', '$_POST[description]')";
			$result = mysql_query ($query, $connect) or die ("Wrong query.........");

			header ("Location: http://www.cubeout.com/news/createNews.php?e=success", false);


		}

		mysql_close($connect);


?>
