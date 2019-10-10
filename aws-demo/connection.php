<? php
	$con = mysql_connect("localhost: 3306", "root", "") 
	
	if(!$con){
		die ("Connetion failed!");
	}
	else {
		echo "connected!";
	}
	mysql_select_db('attendance', $con);
?>