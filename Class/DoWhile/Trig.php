<?php
	/*
		Victoria Hodnett
		September 15, 2014
		Purpose: Trig Table using For Loop
	*/
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>For Loop Table</title>
</head>

<body>
<h1>Trig Table</h1>
<table width="200" border="1">
  <tr>
    <th>Degrees</th>
    <th>Radians</th>
    <th>Sine</th>
    <th>Cosine</th>
    <th>Tangent</th>
  </tr>
<?php
	//For Loop
	$initial=$_GET['initial'];
	$ending=$_GET['ending'];
	$increment=$_GET['increment'];
	//for($angle=$initial;$angle<=$ending;$angle+=$increment){
	$angle=$initial;
	do{
		//Calculate:
		$rad=number_format($angle*atan(1)/45,4);
		$sine=number_format(sin($rad),4);
		$cosine=number_format(cos($rad),4);
		$tangent=number_format(tan($rad),4);
		echo "<tr>
				<td>".$angle."</td>
				<td>".$rad."</td>
				<td>".$sine."</td>
				<td>".$cosine."</td>
				<td>".$tangent."</td>
		     </tr>";
		$angle+=$increment;
	}while($angle<=$ending);
?>
</table>
</body>
</html>