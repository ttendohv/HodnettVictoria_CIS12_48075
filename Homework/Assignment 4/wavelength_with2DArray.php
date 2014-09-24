<?php
	/*
		Victoria Hodnett
		September 24, 2014
		Purpose: Assignment 4, Electromagnetic Spectrum Table
	*/
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Electromagnetic Spectrum with 2D Arrays</title>
<?php
	function checkWavelength($w){
		if($w>5){
			return "Radio Waves";
		}else if($w>5e-4){
			return "Microwaves";
		}else if($w>5e-6){
			return "Infrared waves";
		}else if($w>1e-9){
			return "Ultraviolet waves";
		}else if($w>1e-11){
			return "X-rays";
		}else{
			return "Gamma rays";
		}
	}
?>
</head>

<body>
<table width="400" border="1">
<tr>
	<th></th>
    <th>Wavelength</th>
    <th>Band</th>
</tr>
<?php
	//Declare variables
	$rows=16;
	$power=3;
	//Declare arrays
	$wavelengthTable=array();
	for($col=1;$col<=3;$col++){
		$wavelengthTable[$col]=array();
	}
	//Calculations
	for($num=1;$num<=$rows;$num++){
		$wavelengthTable[1][$num]=$num;//Row
		$wavelengthTable[2][$num]=pow(10,$power--);//Wavelength
		$wavelengthTable[3][$num]=checkWavelength($wavelengthTable[2][$num]);//Band
	}
	//Display
	for($num=1;$num<=$rows;$num++){
		echo "<tr>";
		for($col=1;$col<=3;$col++){
			echo "<td>".$wavelengthTable[$col][$num]."</td>";
		}
		echo "</tr>";
	}
	echo "<img src='https://rccdopencampus.blackboard.com/bbcswebdav/pid-1748870-dt-content-rid-8432300_1/xid-8432300_1'/>";
?>
<br /><br />
</table>

</body>
</html>