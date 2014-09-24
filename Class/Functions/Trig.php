<?php
	/*
		Victoria Hodnett
		September 22, 2014
		Purpose: Trig Table with Array
	*/
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trig Table with 2D Array</title>
<?php
	function trigTable($start,$stop,$step){
		//Declare the arrays
		$trigTable=array();
		for($col=1;$col<=5;$col++){
			$trigTable[$col]=array();
		}
		//Calculations for each parallel array
		for($angle=$start;$angle<=$stop;$angle+=$step){
			$trigTable[1][$angle]=$angle;
			$trigTable[2][$angle]=number_format($angle*atan(1)/45,4);
			$trigTable[3][$angle]=number_format(sin($trigTable[2][$angle]),4);
			$trigTable[4][$angle]=number_format(cos($trigTable[2][$angle]),4);
			$trigTable[5][$angle]=number_format(tan($trigTable[2][$angle]),4);
		}
		return $trigTable;
	}
	function display($str,$start,$stop,$step,$trigTable){
		echo $str;
		for($angle=$start;$angle<=$stop;$angle+=$step){
			echo "<tr>";
			for($col=1;$col<=5;$col++){
				echo "<td>".$trigTable[$col][$angle]."</td>";
			}
			echo "</tr>";
			
		}
		echo "</table>";
	}
?>
</head>

<body>
<?php
//Heading for table
$str="<h1>Trig Table</h1>";
$str.='<table width="200" border="1">';
$str.="<tr>";
$str.="<th>Degrees</th>";
$str.="<th>Radians</th>";
$str.="<th>Sine</th>";
$str.="<th>Cosine</th>";
$str.="<th>Tangent</th>";
$str.="</tr>";

	//Get inputs
	$initial=$_GET['initial'];
	$ending=$_GET['ending'];
	$increment=$_GET['increment'];
	//Declare and fill array
	$trigTable = trigTable($initial,$ending,$increment);
	//Display trig table
	display($str,$initial,$ending,$increment,$trigTable);
	//Output number of elements
	echo "<p>The number of elements in the rows: ".count($trigTable)."</p>";
	echo "<p>The number of elements in the columns: ".count($trigTable[1])."</p>";
?>
</body>
</html>