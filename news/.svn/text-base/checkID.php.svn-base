<?php
	function checkID ($newsID, $fieldName, $tableName)
	{
		include ("connectDatabase.php");
		mysql_select_db($sqldatabase);

		$query = "SELECT * FROM $tableName WHERE $fieldName='$newsID'";
		$result = mysql_query($query,$connect) or die ("Wrong query");
		$count = mysql_num_rows($result);

		if ($count == 1)
		{
			return "true";
		}
		else if ($count == 0)
		{
			return "false";
		}
		mysql_close($connect);
	}
?>