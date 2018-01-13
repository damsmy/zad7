<?php
if(isset($_COOKIE["cookie"])){
$directory = $_COOKIE["cookie"];
$dir = opendir($directory);
echo "Lista plików:<BR />";
 
 
while($file_name = readdir($dir))  {
	 if (($file_name != ".") && ($file_name != "..")) {
		 include ("$directory/$file_name");
	   echo "<a href='".$directory."/".$file_name."'>".$file_name."<br> </a>";
	 }
	 
}

closedir($dir);
}
?>