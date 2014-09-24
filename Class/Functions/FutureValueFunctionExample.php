<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>All About Functions</title>
<?php
	//Functions calling other functions
	function fValue1($p,$i,$n){
		return $p * pow((1 + $i/100),$n);
	}
	//Functions utilizing control constructs
	function fValue2($p,$i,$n){
		$fValue = $p;
		for($year=1;$year<=$n;$year++){
			$fValue *= (1+$i/100);
		}
		return $fValue;
	}
	//Functions calling other functions
	function fValue3($p,$i,$n){
		return $p * exp($n * log(1+$i/100));
	}
	//Functions calling themselves
	function fValue4($p,$i,$n){
		if($n==0)return $p;
		else return fValue4($p,$i,$n-1) * (1+$i/100);
	}
	//Difference between pass by value and pass by reference
	//& represents passed by reference
	//Allows variable to be utilized as an input 
	//as well as an output that is returned
	function fValue5($p,$i,$n,&$fValue){
		$fValue = $p;
		for($year=1;$year<=$n;$year++){
			$fValue *= (1+$i/100);
		}
	}
	//Functions with defaulted parameters
	//All defaulted parameters need to be on the far right
	//to prevent ambiguity 
	function fValue6($p,$i,$n=12){
		return $p * pow((1 + $i/100),$n);
	}
?>
</head>

<body>
<?php
	//Declare and initialize variables
	$pValue = 100;//Present Value in $'s
	$iRate = 6;//Interest/Investment rate % per year
	$cPeriods = 9;//Number of compounding periods, years
	//Utilize the function
	$fValue1=fValue1($pValue,$iRate,$cPeriods);
	$fValue2=fValue2($pValue,$iRate,$cPeriods);
	$fValue3=fValue3($pValue,$iRate,$cPeriods);
	$fValue4=fValue4($pValue,$iRate,$cPeriods);
	fValue5($pValue,$iRate,$cPeriods,$fValue5);
	$fValue6=fValue6($pValue,$iRate);//Defaulted value 12
	$fValue6a=fValue6($pValue,$iRate,$cPeriods);
	
	//Display the results
	echo "<p>Present Value: $$pValue</p>";
	echo "<p>Interest Rate: $iRate%</p>";
	echo "<p>Compounding Periods: $cPeriods (years)</p>";
	echo "<p>Future Value 1: $".number_format($fValue1,2)."</p>";
	echo "<p>Future Value 2: $".number_format($fValue2,2)."</p>";
	echo "<p>Future Value 3: $".number_format($fValue3,2)."</p>";
	echo "<p>Future Value 4: $".number_format($fValue4,2)."</p>";
	echo "<p>Future Value 5: $".number_format($fValue5,2)."</p>";
	echo "<p>Future Value 6: $".number_format($fValue6,2)." Periods defaulted to 12.</p>";
	echo "<p>Future Value 6a: $".number_format($fValue6a,2)."</p>";
?>
</body>
</html>