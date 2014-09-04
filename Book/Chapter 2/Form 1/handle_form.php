<?php
	/*
		Victoria Hodnett
		September 4, 2014
		Purpose: Chapter 2, Script 2.2
	*/
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Form Feedback</title>
</head>

<body>
<?php # Script 2.2 - handle_form.php

	//Create a shorthand for the form data:
	$name = $_REQUEST['name'];
	$email = $_REQUEST['email'];
	$comments = $_REQUEST['comments'];
	$age = $_REQUEST['age'];
	$gender = $_REQUEST['gender'];
	/* Not used:
	$_REQUEST['submit'];
	*/
	
	//Print the submitted information:
	echo "<p>Thank you, <b>$name</b>, for the following comments:<br>
	<tt>$comments</tt></p>
	<p>We will reply to you at <i>$email</i>.</p>
	<p>Your age and gender were entered as <i>$age</i> and <i>$gender</i>, respectively.</p>\n";
	
?>
</body>
</html>