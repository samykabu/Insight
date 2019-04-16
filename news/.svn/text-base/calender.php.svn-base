<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
	
	$timestamp = (isset($_GET['t'])) ? $_GET['t'] : time();
	
	list($month, $day, $year) = explode ('/', date('m/d/Y', $timestamp));
	$first_day_of_month = date('w', mktime(0, 0, 0, $month, 1, $year));
	$total_days = date('t', $timestamp);

	ob_start();
	echo '<table id="calender">';
	echo '<tr id="calender_header"><th colspan="7">';
	echo '<a href=" ' . htmlspecialchars($_SERVER['PHP_SELF']) . '?t=' . strtotime('-1 month', $timestamp) .
		'">&lt;</a> &nbsp;';
	echo date('F', $timestamp) . ' ' . $year;
	echo '&nbsp; <a href="' . htmlspecialchars($_SERVER['PHP_SELF']) . '?t=' . strtotime('+1 month', $timestamp) . 
		'">&gt;</a>';
	echo '</th></tr>';
	echo '<tr><th>Sun</th>
			  <th>Mon</th>
		   	  <th>Tue</th>
			  <th>Wed</th>
			  <th>Thu</th>
			  <th>Fri</th>
			  <th>Sat</th></tr>';
	
	$current = 1;
	while ($current <= $total_days)
	{
		echo '<tr class="calender_dates">';
		for ($i = 0; $i < 7; $i++)
		{
			if (($current == 1 && $i < $first_day_of_month) || ($current > $total_days))
			{
				echo '<td class="empty">&nbsp</td>';
				continue;
			}
			
			echo '<td>' . $current . '</td>';
			$current++;
		}
		echo '</tr>';
	}
	echo '</table>';
?>
</body>
</html>
