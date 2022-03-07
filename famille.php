<?php
/* Fonction qui cree un panier vide */

function creerPanier(){
	if (!isset($_SESSION['panier'])){
		$_SESSION['panier']=array();
		$_SESSION['panier']['libelleProduit'] = array();
		$_SESSION['panier']['qteProduit'] = array();
		$_SESSION['panier']['prixProduit'] = array();
	}
	return true;
	}

/* Fonction qui ajoute un article au panier */

function addArticle($libelleProduit,$prixProduit,$qteProduit){
		if (creerPanier()){
			$pos = array_search($libelleProduit,$_SESSION['panier']['libelleProduit']);
			/* Si L'article existe déja on incrémente la quantité */
			if ($pos !== false){
				$_SESSION['panier']['qteProduit'][$pos] += $qteProduit ;
			}
			/* Sinon on l'ajoute */
			else{
				array_push( $_SESSION['panier']['libelleProduit'],$libelleProduit);
				array_push( $_SESSION['panier']['qteProduit'],$qteProduit);
				array_push( $_SESSION['panier']['prixProduit'],$prixProduit);
			}
		}
		else
		echo "Panier non crée";
	}
/* Fonction qui calcule le Total à payer */

function Somme(){
		$somme=0;
		for($i = 0; $i < count($_SESSION['panier']['libelleProduit']); $i++){
			$somme += $_SESSION['panier']['qteProduit'][$i] * $_SESSION['panier']['prixProduit'][$i];
		}
		return $somme;
	}
/* Fonction qui retourne le nombre total des articles */

function numberarticles(){
		if (isset($_SESSION['panier']))
			return count($_SESSION['panier']['libelleProduit']);
		else
			return 0;
	}
	

?>	