
<html>
<head>
<meta charset="UTF-8">

	<title>Logowanie</title>
</head>
<body>
<?php
include ("polaczenia2.php");

$d = ($_POST['d']);
if(isset($_COOKIE["cookie"])){
	$user=$_COOKIE["cookie"];
	if(isset($_GET['fol'])){
		
		echo "Witaj: ".$_COOKIE["cookie"];
	
 
 $directory = $user.'/'.$_GET['fol'];
$dir = opendir($directory);
echo "<br><br>Lista plików:<br>";
 
 
while($file_name = readdir($dir))  {
	 if (($file_name != ".") && ($file_name != "..")) {
		 
		 	
		 //$plik = $file_name;
		if (strstr($file_name, ".")!==False){
			echo $file_name;
	   echo "   <a href='ciastka.php?p=".$file_name."'>Pobierz</a><br>";
		}
		else{
			echo $file_name;
			
			echo "<a href='index.php?fol=".$file_name."'>Przeglądaj</a><br>";}
	 }
	 
}

closedir($dir);
	echo"<br><br><form action='odbierz.php' method='POST'
 ENCTYPE='multipart/form-data'>
 <input type='hidden' name='rej2' value='rej2'>
 <input type='hidden' name='fol' value='".$_GET['fol']."'>
 <input type='file' name='plik'/>
 <input type='submit' value='Wyślij plik'/>
 </form>";
echo "<br><a href='index.php'>Powrót</a><br>";
 echo "<br><a href='wyloguj.php?d=".$d."'>Wyloguj się</a><br>";
		
	}
	
	else{
	//echo $user;
echo "Witaj: ".$_COOKIE["cookie"];
include ("dodjpliki.php");
include ("newfolder.php");
include ("otworz.php");
echo "<br><a href='wyloguj.php?d=".$d."'>Wyloguj się</a><br>";
$wynik2  = mysqli_query ($polaczenie,"SELECT id FROM user WHERE (login = '$user')")or die('Błąd zapytania do tabeli1!');	
while ($wiersz2 = mysqli_fetch_array ($wynik2))
{	$id=$wiersz2 [0];}

$wynik1  = mysqli_query ($polaczenie,"SELECT * FROM  logi2 WHERE (idu = '$id')  ORDER BY data DESC  LIMIT 1,1 ")or die('Błąd zapytania do tabeli2!');	
			while ($wiersz1 = mysqli_fetch_array ($wynik1))
{	$data=$wiersz1 [1];
$proby=$wiersz1 [2];}


	if(isset($data)&&($proby=='1'))
	{
	echo "<p><font size='5' color='red'> Ktoś próbował sie zalogować nie poprawnymi danymi dnia:  ".$data."  </font></p></br>";	
	}
	
	}
}
else{
echo "<br><a href='rejestr.php'>Nowy użytkownik</a><br>";
echo "<a href='login.php'>Zaloguj się</a><br>";
}

?>
