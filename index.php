<html>
    <head>
	    <!-- TITRE DE LA FENETRE -->
	    <title>TOPModelisme.com</title>
		<!-- FEUILLE DE STYLE -->
        <link rel="stylesheet" type="text/css" href="style.css">
		<!-- PRECISE L'ENCODAGE AU NAVIGATEUR-->
		<meta charset="utf-8">
    </head>
	
	<!-- corps de la paage -->
	
    <body>
	    <!-- DIVISION DU TITRE --> 
	    <div id="titre">
		 <!-- INSERTION DU LOGO -->
		 <p> <img src="img/logo_200px.gif" class="image" width=200px"/> </p>
		 <h1> <FONT color="grey" size="26px"> Le leader de modélisme en <br> ligne </br> </FONT> </h1> 
		</div>
		
		<!-- DIVISION DE L'AUTHENTIFICATION -->
		<div id="authentification"> 
			<br>
			<center> Adresse mail  </center> 
			<center> <input type="text" name="Adresse mail" /> <center>
		    <center> Mot de passe  </center>
		    <input type="text" name="Mot de passe" />
			<br>
			<!-- AJOUT DES BOUTTONS -->
		    <input class="myButton" type="button"value="se connecter">
		    <input class="myButton" type="button"value="créer un compte">
		</div>
		
		<!-- DIVISION DU CONTENU -->
		<div id="contenu"> 
		<?php
		/* AJOUT DES INCLUSIONS */
		    include('famille.php');
			include('famille2.php');
		    if (isset ($_GET['famille']))
				afficher_articles($_GET['famille']);
				else 
				    afficher_familles(); ?>
		</div>
		
		<!-- DIVISION DU PANIER -->
		<div id="panier"> <br>
			<center><img src="img/panier.gif"  width=40px"/>
			<span class="panier1">votre panier</span><hr width=100%>
			<?php
			
			if (creerPanier())
			{
				  $nombrearticle=count($_SESSION['panier']['libelleProduit']);
                    if ($nombrearticle <= 0)
					{
						echo "<div id=\"panierA\" >";
						echo "Votre panier est vide ";
						echo "</div>";
                    }
					else{
                        for ($i=0 ;$i < $nombrearticle ; $i++){
                            echo "<div id=\"libelle1\" >";
								echo $_SESSION['panier']['libelleProduit'][$i];
							echo "</div>";	
							echo "<br>";
							echo "<div id=\"prixA\" >";
								echo $_SESSION['panier']['qteProduit'][$i];
								echo " × " ;
								echo $_SESSION['panier']['prixProduit'][$i];
								echo "=";
								echo $_SESSION['panier']['qteProduit'][$i] * $_SESSION['panier']['prixProduit'][$i];
								echo " €";
	
							echo "</div>";	
                        }
						echo "<div id=\"total\" >";
                        echo "Total: ".Somme()." €";
						echo "</div>";
                    }
			}	

			echo "<center> " ;
			echo "	<form method=\"post\">
			<br/>
				<input type=\"submit\" name=\"vider_panier\" class=\"myButton\" value=\"vider panier\" /> ";
				if(array_key_exists('vider_panier', $_POST)) {
					unset($_SESSION['panier']);
				}
			?>		
		<button class="myButton">commander</button>
		</div>
		
		<!-- DIVISION DE PIED DE LA PAGE  -->
        <div id="pied_de_page">
		TOPModelisme.com est enregistre au R.C.S. sous le numéro 1234567890
		<br>13 avenue du Pre la Reine -75007 PARIS 
		</div>
    </body>
</html>