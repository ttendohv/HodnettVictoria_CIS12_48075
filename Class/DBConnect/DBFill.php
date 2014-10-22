<?php
//Create a connection to the database
//DB, UN, Pass, DB
          mysql_connect('209.129.8.5', '48075', '48075cis12');
          mysql_select_db('48075');
          //mysql_connect('localhost', 'root', '');
          //mysql_select_db('test');
//Query the database
        $query="INSERT INTO `entity_assignment_vh2436779`
                 (`assignment_id`,`name`,`points_possible`,`weight`,`start_date`,`due_date`,`description`) VALUES ";
        $records=100;
        for($i=1;$i<=$records;$i++){
          $query.="('".$i."',";
		  $query.=" 'Assignment".$i."',";
          $query.=(rand(5,20)*5).",";
		  $query.=(100).",";
		  //$query.=" 'Studio".rand(1,50)."',";
          $query.="'".(2014)."-".rand(8,10)."-".rand(1,30)."',";
		  $query.="'".(2014)."-".rand(11,12)."-".rand(1,30)."',";
          $query.=" 'Description".$i."')";
          if($i!=$records)$query.=",";
        }
        echo $query."<br/>";
        $rs = mysql_query($query);
?>