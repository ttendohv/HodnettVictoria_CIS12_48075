<?php
	/*
		Victoria Hodnett
		September 8, 2014
		Purpose: Illustrate Branching Constructs
	*/
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Grade</title>
</head>

<body>
<?php
	//Initialize the input
	$score = rand(50,100);
	$grade = '';
	//Determine the Grade
	switch(true){
		case $score>=90:
			$grade = 'A';break;
		case $score >= 80:
			$grade = 'B';break;
		case $score >= 70:
			$grade = 'C';break;
		case $score >= 60:
			$grade = 'D';break;
		default:
			$grade = 'F';break;
	}
	//Output the Results
	echo "<h1>A score of $score = $grade</h1>";
?>
</body>
</html>