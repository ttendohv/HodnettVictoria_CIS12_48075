<?php

//Create a connection to the database
//DB, UN, Pass, DB
          //mysql_connect('209.129.8.5', '48075', '48075cis12');
          //mysql_select_db('48075');
          mysql_connect('localhost', 'root', '');
          mysql_select_db('test');

$query="INSERT INTO entity_lessons_vh2436779
(`lesson_type`,`duration`,`lesson_day`,`lesson_time`,`difficulty`,`cost`,`scheduled`) VALUES ";
$records=100;

for($i=1;$i<=$records;$i++){//Number of total available lessons
	for($j=1;$j<=20;$j++){//Lesson times
		for($k=1;$k<=5;$k++){//Lesson types
			$query.="('".$k."',";
			$duration=rand(1,2);
			if($duration==1){
				$query.="'30',";
			}else{
				$query.="'60',";
			}
			$query.="'".rand(1,5)."',";//lesson day
			$query.="'".$j."',";//lesson time
			$difficulty=rand(1,3);
			$query.="'".$difficulty."',";
			switch($difficulty){//Cost of lesson
				case 1:
					if($duration==1){
						$query.="'30',";
					}else{
						$query.="'60',";
					}
					break;
				case 2:
					if($duration==1){
						$query.="'45',";
					}else{
						$query.="'90',";
					}
					break;
				case 3:
					if($duration==1){
						$query.="'60',";
					}else{
						$query.="'120',";
					}
					break;
			}
			$query.="'0')"; //Scheduled? all set to 0-false
			if($i!=$records||$k!=5||$j!=20){
				$query.=",";	
			}
		}
		//if($i!=$records)$query.=",";$i!=$records&&$k!=5&&$j!=20
	}
}
$query.=";";
echo $query."<br/>";
$rs = mysql_query($query);

?>