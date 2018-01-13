<?php
ob_start();



//$d=$_GET['d'];
//echo $d;

	setcookie ("cookie", "", time() - 3600);
	unset ($_COOKIE["cookie"]);
	//setcookie("cookie","$d",time()-1);
	echo"siema";
	header("Location: http://damsmy.pl/zad7");
	

ob_end_flush();	
?>
