<?php
	/*
		Victoria Hodnett
		September 15, 2014
		Purpose: Assignment 2, Electromagnetic Spectrum
	*/
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Electromagnetic Spectrum</title>
</head>

<body>
<?php
	//Declare variables
	//Receive wavelength from form
	$wavelength=$_GET['wavelength'];
	echo "You input $wavelength meters, which puts you in ";
	//Check against spectrum
	if($wavelength>5){
		echo "Radio Waves";
	}else if($wavelength>(5*pow(10,-4))){
		echo "Microwaves";
	}else if($wavelength>(5*pow(10,-6))){
		echo "Infrared waves";
	}else if($wavelength>(pow(10,-9))){
		echo "Ultraviolet waves";
	}else if($wavelength>(pow(10,-11))){
		echo "X-rays";
	}else{
		echo "Gamma rays";
	}
	echo "<br><br>";
	echo "<img src='https://rccdopencampus.blackboard.com/bbcswebdav/pid-1748870-dt-content-rid-8432300_1/xid-8432300_1'/>";
?>
</body>
</html>