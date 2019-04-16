<?php
	include("checkID.php");
	$createdNews = checkID($_POST['news_id'], 'news_id', 'News');

	if ($createdNews == "true")
	{

		include("connectDatabase.php");
		mysql_select_db($sqldatabase);

		if (!empty($_POST['description']))
		{
			$query = "UPDATE News SET news_desc='$_POST[description]' WHERE news_id='$_POST[news_id]'";
			$result = mysql_query($query, $connect) or die ("Wrong query''''''''''''''''''''''");
			header ("Location: http://www.cubeout.com/news/modifyNews.php?e=success");
		}
		if ((!empty($_POST['date'])) && (!empty($_POST['month'])) && (!empty($_POST['year'])))
		{
			$timestamp = $_POST['year'].'-'.$_POST['month'].'-'.$_POST['date'];
			$query = "UPDATE News SET news_dateTime='$timestamp' WHERE news_id='$_POST[news_id]'";
			$result = mysql_query($query, $connect) or die ("Wrong query;;;;;;;;;;");
			header ("Location: http://www.cubeout.com/news/modifyNews.php?e=success");
		}
		mysql_close($connect);
	}
	else
	{
		header ("Location: http://www.cubeout.com/news/modifyNews.php?e=userid" );
	}
?>