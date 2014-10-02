<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Savings Table</title>
<?php
	function fillArray($dep,$rate,$years){
		$array = array();
		for($col=0;$col<7;$col++){
			$array[$col] = array();
		}
		
		$rt = $rate;
		$array[0][0]=0;
		for($col=1;$col<7;$col++){
			$array[$col][0]=$dep;
		}
		
		for($i=1;$i<=$years;$i++){
			$array[0][$i]=$i;
			$array[1][$i]=($array[1][$i-1] * (1 + ($rt++)/100));
			$array[2][$i]=($array[2][$i-1] * (1 + ($rt++)/100));
			$array[3][$i]=($array[3][$i-1] * (1 + ($rt++)/100));
			$array[4][$i]=($array[4][$i-1] * (1 + ($rt++)/100));
			$array[5][$i]=($array[5][$i-1] * (1 + ($rt++)/100));
			$array[6][$i]=($array[6][$i-1] * (1 + ($rt++)/100));
			$rt = $rate;
		}
		
		return $array;
	}
	
	function displayArray($array){
		$col = count($array);
		$row = count($array[0]);
		
		echo '<table width="500" border="1">';
		echo "<tr>";
		echo "<th>Year</th>";
		echo "<th>5% Savings Rate</th>";
		echo "<th>6% Savings Rate</th>";
		echo "<th>7% Savings Rate</th>";
		echo "<th>8% Savings Rate</th>";
		echo "<th>9% Savings Rate</th>";
		echo "<th>10% Savings Rate</th>";
		echo "</tr>";
		for($i=0;$i<$row;$i++){
			echo "<tr>";
			for($j=0;$j<$col;$j++){
				if($j==0){
					echo "<td>".($array[$j][$i])."</td>";
				}else{
					echo "<td>".number_format($array[$j][$i],2)."</td>";
				}
			}
			echo "</tr>";
		}
		echo "</table>";
	}
?>
</head>

<body>
<?php
	//Declare variables
	$initDep = 100;
	$initIntRate = 5;
	$years = $_GET['years'];
	$savingsTable=fillArray($initDep,$initIntRate,$years);
	displayArray($savingsTable);
?>
</body>
</html>
