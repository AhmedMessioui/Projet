-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 16 mars 2018 à 09:42
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;



--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(50) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `id_famille` int(11) NOT NULL,
  `detail` varchar(100) NOT NULL,
  `prix_ttc` decimal(10,2) NOT NULL,
  `id_tva` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_famille` (`id_famille`),
  KEY `fk_tva` (`id_tva`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `reference`, `libelle`, `id_famille`, `detail`, `prix_ttc`, `id_tva`, `image`) VALUES
(2, 'BA010', 'Planche Balsa 1mm', 1, 'Balsa - Planche 10cm x 1m', '1.35', 3, 'balsa.jpg'),
(3, 'BA015', 'Planche Balsa 1,5mm', 1, 'Balsa - Planche 10cm x 1m', '1.50', 3, 'balsa.jpg'),
(4, 'BA100', 'Planche Balsa 10mm', 1, 'Balsa - Planche 10cm x 1m', '3.90', 3, 'balsa.jpg'),
(5, 'BA120', 'Planche Balsa 12mm', 1, 'Balsa - Planche 10cm x 1m', '5.70', 3, 'balsa.jpg'),
(6, 'BA150', 'Planche Balsa 15mm', 1, 'Balsa - Planche 10cm x 1m', '6.20', 3, 'balsa.jpg'),
(7, 'BA025', 'Planche Balsa 2,5mm', 1, 'Balsa - Planche 10cm x 1m', '2.10', 3, 'balsa.jpg'),
(8, 'BA200', 'Planche Balsa 20mm', 1, 'Balsa - Planche 10cm x 1m', '8.30', 3, 'balsa.jpg'),
(9, 'BA020', 'Planche Balsa 2mm', 1, 'Balsa - Planche 10cm x 1m', '1.70', 3, 'balsa.jpg'),
(10, 'BA300', 'Planche Balsa 30mm', 1, 'Balsa - Planche 10cm x 1m', '15.00', 3, 'balsa.jpg'),
(11, 'BA030', 'Planche Balsa 3mm', 1, 'Balsa - Planche 10cm x 1m', '1.90', 3, 'balsa.jpg'),
(12, '1030400', 'Planche Balsa 40mm', 1, 'Balsa - Planche 10cm x 1m', '20.00', 3, 'balsa.jpg'),
(13, 'BA040', 'Planche Balsa 4mm', 1, 'Balsa - Planche 10cm x 1m', '2.20', 3, 'balsa.jpg'),
(14, 'BA050', 'Planche Balsa 5mm', 1, 'Balsa - Planche 10cm x 1m', '2.50', 3, 'balsa.jpg'),
(15, 'BA060', 'Planche Balsa 6mm', 1, 'Balsa - Planche 10cm x 1m', '3.00', 3, 'balsa.jpg'),
(16, 'BA080', 'Planche Balsa 8mm', 1, 'Balsa - Planche 10cm x 1m', '3.60', 3, 'balsa.jpg'),
(17, 'BUI015', 'Planche buis 1,5mm', 2, 'Buis - Planche 10cm x 1m', '6.00', 3, 'buis.jpg'),
(18, 'BUI100', 'Planche buis 10mm', 2, 'Buis - Planche 10cm x 1m', '21.00', 3, 'buis.jpg'),
(19, 'BUI120', 'Planche buis 12mm', 2, 'Buis - Planche 10cm x 1m', '26.00', 3, 'buis.jpg'),
(20, 'BUI150', 'Planche buis 15mm', 2, 'Buis - Planche 10cm x 1m', '29.00', 3, 'buis.jpg'),
(21, 'BUI010', 'Planche buis 1mm', 2, 'Buis - Planche 10cm x 1m', '6.00', 3, 'buis.jpg'),
(22, 'BUI200', 'Planche buis 20mm', 2, 'Buis - Planche 10cm x 1m', '39.00', 3, 'buis.jpg'),
(23, 'BUI020', 'Planche buis 2mm', 2, 'Buis - Planche 10cm x 1m', '7.00', 3, 'buis.jpg'),
(24, 'BUI300', 'Planche buis 30mm', 2, 'Buis - Planche 10cm x 1m', '59.00', 3, 'buis.jpg'),
(25, 'BUI030', 'Planche buis 3mm', 2, 'Buis - Planche 10cm x 1m', '8.50', 3, 'buis.jpg'),
(26, 'BUI040', 'Planche buis 4mm', 2, 'Buis  - Planche 10cm x 1m', '11.00', 3, 'buis.jpg'),
(27, 'BUI050', 'Planche buis 5mm', 2, 'Buis - Planche 10cm x 1m', '12.00', 3, 'buis.jpg'),
(28, 'BUI060', 'Planche buis 6mm', 2, 'Buis - Planche 10cm x 1m', '13.00', 3, 'buis.jpg'),
(29, 'BUI080', 'Planche buis 8mm', 2, 'Buis - Planche 10cm x 1m', '15.50', 3, 'buis.jpg'),
(30, '1532', 'Colle Cyano MULTY', 3, '', '5.00', 3, '1532.jpg'),
(31, '534.35', 'Colle Hart', 3, '', '4.00', 3, '534.35.gif'),
(32, '534.125', 'Colle Hart', 3, '', '9.00', 3, '534.125.gif'),
(33, 'UHU 34', 'Colle Plastique', 3, '', '5.00', 3, 'UHU 34.gif'),
(35, 'UHU 55', 'Colle Rapide', 3, '', '5.00', 3, 'UHU 55.gif'),
(36, 'UHU 959', 'Colle Stypor', 3, '', '5.00', 3, 'UHU 959.gif'),
(37, '415.1', 'Tube 2mm', 4, 'Aluminium - diamètre int 1,6mm ext 2mm - \r\nlongueur 1m', '2.00', 3, 'tube_alu.jpg'),
(38, '773505', 'Tube 5mm', 4, 'Aluminium - diamètre int 4,15mm ext 5mm - \r\nlongueur 1m', '2.50', 3, 'tube_alu.jpg'),
(39, '773506', 'Tube 6mm', 4, 'Aluminium - diamètre int 5,1mm ext 6mm - \r\nlongueur 1m', '2.80', 3, 'tube_alu.jpg'),
(40, '773507', 'Tube 7mm', 4, 'Aluminium - diamètre int 6,2mm ext 7mm - \r\nlongueur 1m', '2.80', 3, 'tube_alu.jpg'),
(41, '773508', 'Tube 8mm', 4, 'Aluminium - diamètre int 7,1mm ext 8mm - \r\nlongueur 1m', '3.00', 3, 'tube_alu.jpg'),
(42, '773503', 'Tube 3mm', 4, 'Aluminium - diamètre int 2,1mm ext 3mm - \r\nlongueur 1m', '1.80', 3, 'tube_alu.jpg'),
(43, '773504', 'Tube i4mm', 4, 'Aluminium - diamètre int 3,15mm ext 4mm - \r\nlongueur 1m', '2.00', 3, 'tube_alu.jpg'),
(44, '773509', 'Tube 9mm', 4, 'Aluminium - diamètre int 8,1mm ext 9mm - \r\nlongueur 1m', '3.00', 3, 'tube_alu.jpg'),
(45, '773510', 'Tube 10mm', 4, 'Aluminium - diamètre int 9mm ext 10mm - \r\nlongueur 1m', '3.20', 3, 'tube_alu.jpg'),
(46, '10130', 'Bateau de pêche', 5, 'Maquette bois à monter - Lxlxh 48cm x 17cm x 28cm', '70.00', 3, 'cormo.jpg'),
(47, '10080', 'Bette provençale', 5, 'Maquette statique à monter - Lxlxh 30cm x 10cm x 38cm', '40.00', 3, 'bette.jpg'),
(48, '10100', 'Canot breton', 5, 'Maquette statique à monter - Lxlxh 30cm x 11cm x 30cm', '40.00', 3, 'canot.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valide` enum('O','N') NOT NULL DEFAULT 'N' COMMENT 'indique si le compte est validé (=O) ou non (=N)',
  `cle_activation` varchar(50) NOT NULL COMMENT 'clé d''activation du compte (envoyée par mail dans le lien d''activation)',
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `pwd` varchar(256) NOT NULL,
  `adresse1` varchar(38) DEFAULT NULL,
  `adresse2` varchar(38) DEFAULT NULL,
  `adresse3` varchar(38) DEFAULT NULL,
  `adresse4` varchar(38) DEFAULT NULL,
  `code_postal` varchar(5) NOT NULL,
  `localite` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `valide`, `cle_activation`, `nom`, `prenom`, `mail`, `pwd`, `adresse1`, `adresse2`, `adresse3`, `adresse4`, `code_postal`, `localite`) VALUES
(1, 'N', '', 'Dupont', 'Pierre', 'pierre.dupont@truc.fr', '', NULL, NULL, 'Campus des Cézeaux', NULL, '63170', 'AUBIERE');

-- --------------------------------------------------------

--
-- Structure de la table `famille`
--

DROP TABLE IF EXISTS `famille`;
CREATE TABLE IF NOT EXISTS `famille` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `ordre_affichage` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `famille`
--

INSERT INTO `famille` (`id`, `libelle`, `image`, `ordre_affichage`) VALUES
(1, 'Planches en balsa', 'balsa.jpg', 10),
(2, 'Planches en buis', 'buis.jpg', 20),
(3, 'Colles', 'colles.png', 30),
(4, 'Tubes métalliques', 'tubes.png', 40),
(5, 'Kits maquettes', 'maquette.jpg', 5);

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_client` int(11) NOT NULL,
  `id_session` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`id`, `date_creation`, `id_client`, `id_session`) VALUES
(1, '2014-12-27 16:55:22', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `panier_article`
--

DROP TABLE IF EXISTS `panier_article`;
CREATE TABLE IF NOT EXISTS `panier_article` (
  `id_panier` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix_ht` decimal(10,2) NOT NULL,
  `prix_tva` decimal(10,2) NOT NULL,
  `prix_ttc` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_panier`,`id_article`),
  KEY `fk_article` (`id_article`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `panier_article`
--

INSERT INTO `panier_article` (`id_panier`, `id_article`, `quantite`, `prix_ht`, `prix_tva`, `prix_ttc`) VALUES
(1, 32, 4, '1.50', '7.50', '9.00');

-- --------------------------------------------------------

--
-- Structure de la table `tva`
--

DROP TABLE IF EXISTS `tva`;
CREATE TABLE IF NOT EXISTS `tva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taux` decimal(10,2) NOT NULL,
  `date_debut` date DEFAULT '2099-12-31',
  `date_fin` date DEFAULT '2099-12-31',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tva`
--

INSERT INTO `tva` (`id`, `taux`, `date_debut`, `date_fin`) VALUES
(1, '0.00', '2014-01-01', '2099-12-31'),
(2, '5.00', '2014-01-01', '2099-12-31'),
(3, '20.00', '2014-01-01', '2099-12-31');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_famille` FOREIGN KEY (`id_famille`) REFERENCES `famille` (`id`),
  ADD CONSTRAINT `fk_tva` FOREIGN KEY (`id_tva`) REFERENCES `tva` (`id`);

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `fk_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `panier_article`
--
ALTER TABLE `panier_article`
  ADD CONSTRAINT `fk_article` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `fk_panier` FOREIGN KEY (`id_panier`) REFERENCES `panier` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
