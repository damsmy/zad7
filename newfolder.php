<?php
if(isset($_COOKIE["cookie"])){
	$user=$_COOKIE["cookie"];
	  $folder = ($_POST['folder']);
@$rej = trim($_REQUEST["rej"]);
     
			if ($rej == "rej"){
				
				if(mkdir('/home/damsmypl/domains/damsmy.pl/public_html/zad7/'.$user.'/'.$folder, 0777))
					{
					echo 'Udało się stworzyć katalogu';
					}
					else
					{
					echo 'Nie udało się stworzyć katalogu';
					}
				
			}
}
?>
<form action="" method="post">
<input type="hidden" name="rej" value="rej">

<p class='tytul'></p>
Folder:<br/>
<input type="text" name="folder" class="textbox"size="30" maxlength="50" /><br/>

<input type="submit" name="logowanie" value="dodaj">
<br/><br/><br/>
</form>


</center> 
</body>
</html>