-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 19 avr. 2024 à 09:29
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `litis`
--

DELIMITER $$
--
-- Fonctions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `SPLIT_STRING` (`str` VARCHAR(255), `delim` VARCHAR(12), `pos` INT) RETURNS VARCHAR(255) CHARSET utf8mb4 COLLATE utf8mb4_general_ci  BEGIN
    RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(str, delim, pos), LENGTH(SUBSTRING_INDEX(str, delim, pos - 1)) + 1), delim, '');
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `glossaire`
--

CREATE TABLE `glossaire` (
  `Id_glossaire` int(11) NOT NULL,
  `Mot` varchar(100) NOT NULL,
  `Definition` varchar(500) NOT NULL,
  `Synonyme` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `glossaire`
--

INSERT INTO `glossaire` (`Id_glossaire`, `Mot`, `Definition`, `Synonyme`) VALUES
(1, 'Adresse IP', 'Une série unique de chiffres attribuée à chaque appareil connecté à un réseau informatique, permettant son identification et sa communication avec d\'autres appareils sur le réseau.', 'adresse internet, adresse réseau, ip address'),
(2, 'Balise', 'En programmation web, il s\'agit d\'un élément du code HTML ou XML qui indique comment afficher ou organiser le contenu d\'une page web. Les balises définissent, par exemple, les titres, paragraphes et liens.', 'étiquette, marqueur, repère, signet');

-- --------------------------------------------------------

--
-- Structure de la table `ressource`
--

CREATE TABLE `ressource` (
  `Id_ressource` int(11) NOT NULL,
  `Titre` varchar(100) NOT NULL,
  `Categorie` varchar(50) NOT NULL,
  `Mot_cle` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ressource`
--

INSERT INTO `ressource` (`Id_ressource`, `Titre`, `Categorie`, `Mot_cle`, `Image`) VALUES
(1, 'Utilisation des balises PHP', 'Base d\'internet', 'Étiquette, marqueur', ''),
(2, 'Utilisation des balises HTML', 'Base d\'internet', 'Étiquette, signet', ''),
(3, 'Qu\'est-ce qu\'une adresse IP ?', 'Base d\'internet', 'Adresse Internet', ''),
(4, 'Comment me procurer une adresse IP', 'Base d\'internet', 'IP Address, Adresse Internet', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `glossaire`
--
ALTER TABLE `glossaire`
  ADD PRIMARY KEY (`Id_glossaire`);

--
-- Index pour la table `ressource`
--
ALTER TABLE `ressource`
  ADD PRIMARY KEY (`Id_ressource`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `glossaire`
--
ALTER TABLE `glossaire`
  MODIFY `Id_glossaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ressource`
--
ALTER TABLE `ressource`
  MODIFY `Id_ressource` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
