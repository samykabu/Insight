<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<fieldset>
<legend>Modify News</legend>
<form id="form1" name="form1" method="post" action="changeNews.php">
	<?php
		$message = (isset($_REQUEST['e'])) ? $_REQUEST['e'] : "";
		if (isset($_REQUEST['e']) && $message == 'userid')
		{
			echo "News' ID is not found";
		}
		else if (isset($_REQUEST['e']) && $message == 'success')
		{
			echo "Changes succeed";
		}
	?>
  <table class="date">
    <tr>
      <td style="vertical-align:top">News ID:</td>
      <td></td>
      <td><input type="text" name="news_id" id="news_id" size="5"/></td>
    </tr>
    <tr>
      <td style="vertical-align:top">Published Date:</td>
      <td></td>
      <td><?php
                            //print the calenders
                            /*$timestamp = (isset($_GET['t'])) ? $_GET['t'] : time();
                            $user_id = (isset($_GET['i'])) ? $_GET['i'] : $user_id;
                            list($month, $day, $year) = explode ('/', date('m/d/Y', $timestamp));
                            $first_day_of_month = date('w', mktime(0, 0, 0, $month, 1, $year));
                            $total_days = date('t', $timestamp);

                            ob_start();
                            echo '<table id="calender">';
                            echo '<tr id="calender_header"><th colspan="7">';
                            echo '<a href=" ' . htmlspecialchars($_SERVER['PHP_SELF']) . '?t=' . strtotime('-1 month',
                                $timestamp) . '&i='. $user_id . '">&lt;</a> &nbsp;';
                            echo date('F', $timestamp) . ' ' . $year;
                            echo '&nbsp; <a href="' . htmlspecialchars($_SERVER['PHP_SELF']) . '?t=' . strtotime('+1 month',
                                $timestamp) . '&i='. $user_id . '">&gt;</a>';
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

                                    $dateNow = date('d',$timestamp);
                                    if ($current < $dateNow)
                                    {
                                        $dateYesterday = $dateNow - $current;
                                        echo '<td><input type="radio" name="date" value="'.
                                                $timestamp-($dateYesterday*86400) .'">'.$current.'</td>';
                                    }
                                    else if ($current == $dateNow)
                                    {
                                        echo '<td><input type="radio" name="date" value="'.
                                                $timestamp.'">'.$current.'</td>';
                                    }
                                    else
                                    {
                                        echo '<td><input type="radio" name="date" value="'.
                                                $timestamp=$timestamp+86400 .'">'.$current.'</td>';
                                    }

                                    $current++;
                                }
                                echo '</tr>';
                            }
                            echo '</table>';*/
                        ?>
          <select name="date" size="1" id="Date">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
            <option>10</option>
            <option>11</option>
            <option>12</option>
            <option>13</option>
            <option>14</option>
            <option>15</option>
            <option>16</option>
            <option>17</option>
            <option>18</option>
            <option>19</option>
            <option>20</option>
            <option>21</option>
            <option>22</option>
            <option>23</option>
            <option>24</option>
            <option>25</option>
            <option>26</option>
            <option>27</option>
            <option>28</option>
            <option>29</option>
            <option>30</option>
            <option>31</option>
          </select>

          -

          <label>
          <select name="month" id="Month">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
            <option>10</option>
            <option>11</option>
            <option>12</option>
          </select>
          </label>
          -

          <label>
          <select name="year" id="year">
            <option>2009</option>
            <option>2010</option>
            <option>2011</option>
            <option>2012</option>
            <option>2013</option>
            <option>2014</option>
            <option>2015</option>
            <option>2016</option>
            <option>2017</option>
            <option>2018</option>
            <option>2019</option>
            <option>2020</option>
            <option>2021</option>
            <option>2022</option>
            <option>2023</option>
            <option>2024</option>
            <option>2025</option>
            <option>2026</option>
            <option>2027</option>
            <option>2028</option>
            <option>2029</option>
            <option>2030</option>
          </select>
          </label>      </td>
    </tr>

    <tr>
      <td style="vertical-align:top">Description: </td>
      <td></td>
      <td align="right"><textarea name="description" id="description" cols="45" rows="5"></textarea></td>
    </tr>
    <tr>
      <td style="vertical-align:top">&nbsp;</td>
      <td></td>
      <td align="right"><input type="submit" value="Modify" /></td>
    </tr>
  </table>
  </form>
<a href="http://www.cubeout.com/news/main.php">Home</a>
</fieldset>

</body>
</html>
