<!----FFONCTIONS DE CONNEXION ET D'AFFICHAGE -->
<?php
    /* Connexion au serveur SQL */
	function connexion ($requete ) 
	{
			$db = mysqli_connect('localhost', 'root','', 'venteenligne', 3307 ) or die('Erreur SQL : '. mysqli_error($db));
			$db -> query ("SET NAMES UTF8");
			
			$sql =  $requete ;
			$result = $db -> query( $sql )  or die('Erreur SQL : '.mysqli_error($db));
			mysqli_close($db);
			return $result ;	
	}
	
	/* Affichage des articles appartenant à une famille */
	
	function afficher_articles ($id)
	{
		    echo "<a href=\"index.php\">" ;
			echo "<button class=\"myButton\"style=\"margin-left:2%;\">retour</button> ";
			echo "</a>";
			echo "</br> ";
			$result = connexion ( 'Select * From article where id_famille = '.$id );
			$i = 0;
			while($data = mysqli_fetch_array($result))
			{
				echo " <div id = 'article'>" ;
				echo "<p>";
				echo " <img src =\"img_articles/".$data['image']. "\" > "; 
					echo "<div id = 'libelle'>";
					echo $data['libelle'];
					echo "</div>";
					echo "<br/>" ; 
					echo "<br/>";
					echo "<div id ='detail'>";
					echo $data['detail'] ;
					echo " </div>";
					echo "<br/>" ;
					
					echo "<div id= 'prix'>";
					echo $data['prix_ttc'] .' €' ;
					echo "</div>";
						
				echo "	<form method=\"post\">
				<input type=\"submit\" name=\"commander".$i."\" class=\"myButton\" value=\"commander\" /> ";
				if(array_key_exists('commander'.$i, $_POST)) {
					
					if (!creerPanier()) {
						creerPanier();
					}	
					addArticle($data['libelle'],$data['prix_ttc'],1);
				}		
				echo "</div>" ;	
                				
			    $i++;
			}
	}

	/*affichage des familles */
	
	function afficher_familles () 
	{
			$result = connexion ( 'Select id,libelle,image From famille ');
			while($data = mysqli_fetch_array($result))
			{
				echo " <a href=\"index.php?famille=".$data['id']."\" >";
				echo " <div id = 'famille'>" ;
					echo " <img src =\"img_familles/".$data['image']. "\" > "; 
					echo $data['libelle'];					
				echo " </div> ";
				echo "</a>";
			}	
	}
?>