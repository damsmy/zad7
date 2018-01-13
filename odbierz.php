<?php
ob_start();
if(isset($_COOKIE["cookie"])){
					echo "Witaj: ".$_COOKIE["cookie"];
					$login=$_COOKIE["cookie"];
					if (is_uploaded_file($_FILES['plik']['tmp_name']))
					{
						echo 'Odebrano plik: '.$_FILES['plik']['name'].'<br/>';
						move_uploaded_file($_FILES['plik']['tmp_name'],
						'/home/damsmypl/domains/damsmy.pl/public_html/zad7/'.$login.'/'.$_FILES['plik']['name']);
						header("Location: index.php");
					}
					else {echo 'Błąd przy przesyłaniu danych!';}
					
					
				}
ob_end_flush();	
?>