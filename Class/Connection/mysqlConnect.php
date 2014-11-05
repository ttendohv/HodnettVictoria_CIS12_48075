<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
	//mysql_connect('209.129.8.5','48075','48075cis12');
	//mysql_select_db('48075');
	mysql_connect('localhost', 'root', '');
    mysql_select_db('test');
	$query="SELECT * FROM `test`.entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id WHERE type_name = 'Vocal' AND scheduled = 0 ORDER BY difficulty ASC";
	$rs=mysql_query($query);
	echo "<table border='1'><tr>";
	echo "<th>Type</th>";
	echo "<th>Duration</th>";
	echo "<th>Day</th>";
	echo "</tr>";
	while($record=mysql_fetch_array($rs)){
		echo "<tr>";
		echo "<td>".$record['type_name']."</td>";
		echo "<td>".$record['duration']."</td>";
		//echo "<td>".$record['day_name']."</td>";
		echo "</tr>";
	}
?>
</body>
</html>