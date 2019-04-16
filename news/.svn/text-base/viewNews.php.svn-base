<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<?php

		include("connectDatabase.php");

		$table_name = 'News';

		print '<font size=5" color="blue">';
		print "$table_name Table Data </font><br><br>";


		$query = "SELECT * FROM $table_name";

		mysql_select_db($sqldatabase);
		$results_id = mysql_query($query, $connect);
		if ($results_id)
		{
			print '<table border=1>';
			print '<th width="104" align="center"> News Id <th> Publish Date <th width="354"> News';
			while ($row = mysql_fetch_row($results_id))
			{
				print '<tr align="center">';
				foreach ($row as $field)
				{
					print "<td>$field</td>";
				}
				print '</tr>';
			}
		}
		else
		{
			die ("Query=$query failed!");
		}

		mysql_close($connect);



?>
</table>

<br>
<a href="http://www.cubeout.com/news/main.php">Home</a>
</body>
</html>