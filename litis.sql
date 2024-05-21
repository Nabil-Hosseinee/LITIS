-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 21 mai 2024 à 15:34
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
-- Structure de la table `etape`
--

CREATE TABLE `etape` (
  `id_etape` int(11) NOT NULL,
  `ressource_type_id` int(11) NOT NULL,
  `numero_etape` int(11) NOT NULL,
  `titre_etape` varchar(255) NOT NULL,
  `description_etape` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `etape`
--

INSERT INTO `etape` (`id_etape`, `ressource_type_id`, `numero_etape`, `titre_etape`, `description_etape`) VALUES
(1, 1, 1, '1. Accéder au Site Web ou à l\'Application Mobile', 'Rendez-vous sur le site web de Doctolib (www.doctolib.fr) ou utilisez l\'application mobile Doctolib sur votre smartphone ou tablette.'),
(2, 1, 2, '2. Recherchez un Professionnel de Santé', 'Utilisez la barre de recherche pour trouver le professionnel de santé que vous souhaitez consulter. Vous pouvez rechercher par spécialité, nom du praticien, localisation, etc.'),
(3, 2, 1, '1. Accéder au Finder', 'Ouvrez le Finder en cliquant sur l\'icône du Finder dans le dock ou en appuyant sur Commande + N.'),
(4, 2, 2, '2. Choisir l\'Emplacement', 'Naviguez vers l\'endroit où vous souhaitez créer le nouveau dossier. Vous pouvez le faire en cliquant sur les dossiers dans la barre latérale du Finder ou en naviguant à travers les dossiers dans la fenêtre principale du Finder.');

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
(93, 'Adresse IP', 'Une série unique de chiffres attribuée à chaque appareil connecté à un réseau informatique, permettant son identification et sa communication avec d\'autres appareils sur le réseau.', 'Adresse Internet, adresse réseau, IP Address'),
(94, 'Ancre', 'Un élément HTML utilisé pour créer des liens hypertextes vers d\'autres pages web ou des emplacements spécifiques sur la même page.', 'Lien, hyperlien, point d\'ancrage, Anchor'),
(95, 'Annuaire', 'Un répertoire ou une liste organisée de données, souvent utilisé en informatique pour stocker des informations telles que des noms, des adresses, des numéros de téléphone, etc.', 'Liste, répertoire, index, Directory'),
(96, 'Antivirus', 'Un logiciel conçu pour détecter, prévenir et supprimer les logiciels malveillants, tels que les virus, les vers, les chevaux de Troie, etc., sur un ordinateur ou un réseau.', 'Logiciel de sécurité, programme antivirus, Antivirus'),
(97, 'APN', 'Les paramètres de configuration utilisés par les appareils mobiles pour se connecter au réseau mobile de données.', 'Nom du point d\'accès, paramètres de connexion, Access Point Name'),
(98, 'API', 'Un ensemble de protocoles, de routines et d\'outils pour construire des logiciels et des applications, permettant à différentes parties d\'un logiciel de communiquer entre elles.', 'Interface de programmation, Application Programming Interface'),
(99, 'Application', 'Un programme informatique conçu pour effectuer une tâche spécifique ou répondre à un besoin particulier de l\'utilisateur.', 'Appli, logiciel, programme, Application'),
(100, 'ASCII', 'Un jeu de caractères utilisé par les ordinateurs et les équipements de télécommunication pour représenter du texte en utilisant des nombres binaires.', 'Code ASCII, jeu de caractères ASCII'),
(101, 'Attribut Alt', 'Un attribut HTML utilisé pour fournir un texte descriptif alternatif pour une image, afin d\'améliorer l\'accessibilité web pour les utilisateurs ayant un handicap visuel ou lorsque l\'image ne peut pas être affichée.', 'Attribut alternative, texte alternatif, alt, Alt attribute'),
(102, 'Audiodescription', 'Une technique utilisée dans les médias audiovisuels pour fournir une description audio supplémentaire des éléments visuels présents dans une production, afin d\'aider les personnes aveugles ou malvoyantes à comprendre et à apprécier le contenu.', 'Description sonore, description audiovisuelle'),
(103, 'Authentification', 'Le processus de vérification de l\'identité d\'un utilisateur ou d\'un système informatique, souvent réalisé par la saisie de nom d\'utilisateur et de mot de passe ou par des méthodes biométriques.', 'Vérification, validation, identification, Authentication'),
(104, 'Azerty', 'Un agencement de clavier standard utilisé dans de nombreux pays francophones, nommé d\'après les six premières touches alphabétiques de la rangée supérieure du clavier.', 'Agencement de touches AZERTY'),
(105, 'Base de données', 'Une collection organisée de données structurées et interconnectées, généralement stockées électroniquement dans un système informatique. Elle permet le stockage, la gestion et la récupération efficace des informations.', 'Banque de données, système de gestion de base de données, SGBD, database'),
(106, 'Bug', 'Terme utilisé pour désigner un défaut dans le code ou la conception d\'un logiciel, qui peut entraîner un comportement inattendu ou erroné de l\'application ou du système.', 'Problème, défaut, anomalie, erreur, pépin'),
(107, 'Bot', 'Abréviation de \"robot\". Dans le contexte informatique, il s\'agit souvent d\'un logiciel automatisé conçu pour exécuter des tâches spécifiques, comme répondre à des messages ou mettre à jour des informations en ligne.', 'Robot, automate, programme, agent'),
(108, 'Bit', 'La plus petite unité d\'information en informatique, pouvant avoir une valeur de 0 ou 1. Il sert de base pour le stockage et le traitement des données numériques.', 'unité'),
(109, 'BIOS', 'Programme intégré à la carte mère d\'un ordinateur, exécuté au démarrage de l\'appareil. Il initialise le matériel et charge le système d\'exploitation depuis le disque dur ou un autre support de stockage.', 'Firmware, micrologiciel, système de démarrage, Basic Input/Output System'),
(110, 'Balise', 'En programmation web, il s\'agit d\'un élément du code HTML ou XML qui indique comment afficher ou organiser le contenu d\'une page web. Les balises définissent, par exemple, les titres, paragraphes et liens.', 'Étiquette, marqueur, repère, signet'),
(111, 'Big Data', 'Réfère à des ensembles de données tellement volumineux et complexes qu\'ils nécessitent des technologies et méthodes d\'analyse spécifiques pour leur traitement et leur exploitation.', 'Données massives, mégadonnées, données volumineuses'),
(112, 'Blog', 'Type de site web ou partie d\'un site web, mis à jour régulièrement, généralement géré par un individu ou un petit groupe, et qui présente des articles, des réflexions ou des commentaires sur divers sujets.', 'Carnet en ligne, journal web, site personnel'),
(113, 'Blogueur', 'Personne qui tient ou contribue à un blog, partageant ses pensées, connaissances, ou expériences sur différents sujets.', 'Chroniqueur web'),
(114, 'Bluetooth', 'Technologie sans fil permettant l\'échange de données sur de courtes distances entre appareils. Utilisée pour connecter des téléphones, ordinateurs, écouteurs, et autres appareils électroniques.', 'Sans fil, technologie sans fil, connexion sans fil'),
(115, 'Blacklist', 'Dans le contexte informatique, elle répertorie des entités (comme des adresses IP, des domaines, ou des adresses e-mail) qui sont bloquées ou interdites d\'accès pour des raisons de sécurité.', 'Liste noir, répertoire d’exclusion, index négatif'),
(116, 'Bitcoin', 'Première et la plus connue des cryptomonnaies, une forme de monnaie numérique qui utilise la cryptographie pour contrôler sa création, sa gestion et sa sécurité, sans l\'intervention de banques centrales ou gouvernements.', 'Cryptomonnaie, devise numérique, monnaie virtuelle'),
(117, 'Buzz', 'Terme marketing désignant une grande attention ou excitation autour d\'un produit, service, ou événement, souvent généré par des campagnes virales sur les réseaux sociaux.', 'Célèbre'),
(118, 'Braillenet', 'Réseau et association visant à améliorer l\'accessibilité du web et des technologies de l\'information pour les personnes aveugles ou malvoyantes, notamment à travers le développement de standards et outils d\'accessibilité.', 'Accessibilité, aveugles'),
(119, 'Cache', 'Une mémoire tampon est utilisée pour stocker temporairement des données afin d\'améliorer les performances en accélérant l\'accès aux informations fréquemment utilisées.', 'Mémoire, stockage, réserve'),
(120, 'Call to action', 'Un élément de design ou de texte dans une interface utilisateur, tel qu\'un bouton ou un lien, destiné à inciter l\'utilisateur à effectuer une action spécifique, comme s\'inscrire à une newsletter ou acheter un produit.', 'Appel à l’action, incitation à agir, sollicitation'),
(121, 'Captcha', 'Un test de Turing utilisé pour déterminer si l\'utilisateur est humain ou un programme informatique en demandant de résoudre un puzzle ou en entrant un texte déformé, généralement utilisé pour empêcher les bots informatiques de remplir automatiquement des formulaires en ligne.', 'Test, sécurité, vérification'),
(122, 'Caractère', 'Symbole, lettre, chiffre, signe de ponctuation ou tout autre élément graphique utilisé dans un langage de codage ou de représentation de l\'information dans le domaine numérique.', 'Symbole, lettre, chiffre, signe, élément graphique'),
(123, 'Carte graphique', 'Un composant matériel d\'un ordinateur responsable du traitement des graphiques et de l\'affichage visuel sur un écran, souvent utilisé pour les jeux, la conception graphique et le montage vidéo.', 'GPU, carté vidéo, adaptateur graphique'),
(124, 'Carte mémoire', 'Un dispositif de stockage amovible utilisé pour stocker des données numériques, telles que des photos, des vidéos ou des fichiers, souvent utilisé dans les appareils photo, les téléphones portables et d\'autres appareils électroniques.', 'Carte SD, carte flash, stockage amovible'),
(125, 'Carte son', 'Un composant matériel d\'un ordinateur utilisé pour l\'entrée, la sortie et le traitement du son, permettant à l\'utilisateur d\'enregistrer, de jouer et de manipuler des fichiers audio.', 'Carte audio, périphérique audio'),
(126, 'Chaîne de caractères', 'Séquence ordonnée de caractères, tels que des lettres, des chiffres, des symboles ou des espaces, utilisée pour représenter du texte ou des données textuelles dans les systèmes informatiques.', 'Texte, suite de caractères, séquence de caractères'),
(127, 'Champ de saisie', 'Une zone dans une interface utilisateur, telle qu\'un formulaire web ou une application, où l\'utilisateur peut entrer des données, telles que du texte, des numéros ou des informations.', 'Zone de texte, espace de remplissage, champ d’entrée'),
(128, 'Chat', 'Une forme de communication en ligne en temps réel entre deux ou plusieurs personnes via des messages textuels, vocaux ou vidéo, souvent utilisée dans les applications de messagerie instantanée, les réseaux sociaux et les forums.', 'Messagerie instantanée, discussion en ligne, tchat'),
(129, 'Clavier', 'Un périphérique d\'entrée utilisé pour saisir des données, des commandes et du texte dans un ordinateur ou un appareil électronique en utilisant un ensemble de touches.', 'Dispositif de saisie, outil'),
(131, 'Clickbait', 'Un contenu en ligne conçu pour attirer l\'attention et inciter les utilisateurs à cliquer sur un lien en utilisant des titres sensationnels, des images provocantes ou des descriptions exagérées, souvent utilisé pour générer du trafic sur un site web.', 'Contenu accrocheur, appât'),
(132, 'Copier - Coller', 'L\'action de copier du contenu depuis le presse-papiers de l\'ordinateur et de le placer dans un document ou une application, généralement effectuée après avoir copié le contenu à l\'aide de la fonction “Copier”.', 'Insérer, transférer'),
(133, 'Commentaire', 'Un texte ou une note ajoutée à un document, un code source ou un message en ligne pour fournir des explications, des avis ou des réponses, souvent utilisé dans les discussions en ligne, les blogs et les documents collaboratifs.', 'Remarque, observation, note, réaction'),
(134, 'Community manager', 'Une personne chargée de gérer et d\'animer les communautés en ligne, telles que les forums, les réseaux sociaux et les groupes en ligne, au nom d\'une marque, d\'une entreprise ou d\'une organisation.', 'Gestionnaire de communauté, animateur web, modérateur, réseau social, réseaux sociaux, réseau, résea'),
(135, 'Cookie', 'Un petit fichier de données stocké sur l\'ordinateur d\'un utilisateur par un site web, utilisé pour suivre l\'activité de l\'utilisateur, personnaliser l\'expérience de navigation et stocker des informations telles que les préférences et les paramètres de connexion.', 'Témoin, connexion, suivie, traceur, web'),
(138, 'CPU', 'Le composant principal d\'un ordinateur responsable de l\'exécution des instructions et du traitement des données, souvent appelé \"processeur\".', 'Processeur, unité de traitement, microprocesseur, Unité Centrale de Traitement'),
(139, 'Cross Platform', 'La capacité d\'un logiciel, d\'une application ou d\'un jeu vidéo à fonctionner sur plusieurs systèmes d\'exploitation ou plateformes matérielles différentes, telles que Windows, macOS, Linux, iOS et Android.', 'Multi Plateforme, interopérable'),
(140, 'Cryptographie', 'La pratique et l\'étude des techniques de sécurisation des communications et des données en utilisant des codes et des algorithmes de chiffrement, afin de protéger la confidentialité, l\'intégrité et l\'authenticité des informations.', 'Chiffrement, codage, science, code, code-secret'),
(141, 'Curseur', 'Un symbole graphique, tel qu\'une flèche ou une barre verticale clignotante, utilisé pour indiquer la position du pointeur de la souris sur l\'écran de l\'ordinateur, généralement contrôlé par l\'utilisateur pour sélectionner, cliquer ou interagir avec des éléments graphiques ou du texte.', 'Pointeur, Indicateur, repère, repère visuel'),
(142, 'Cyberharcèlement', 'L\'utilisation de technologies numériques, telles que les médias sociaux, les messages électroniques et les forums en ligne, pour intimider, menacer, harceler ou perturber intentionnellement une personne ou un groupe de personnes.', 'Harcèlement, intimidation, cyberintimidation'),
(143, 'Cybersécurité', 'La pratique de protéger les systèmes informatiques, les réseaux et les données contre les cybermenaces telles que les attaques informatiques, les logiciels malveillants, le vol d\'identité et la fraude en ligne.', 'Sécurité, informatique, protection, défense'),
(144, 'Compresser', 'Le processus de réduction de la taille d\'un fichier ou d\'un ensemble de fichiers en utilisant des algorithmes de compression, généralement dans le but d\'économiser de l\'espace de stockage ou de réduire le temps de transfert sur un réseau.', 'Compression de données, réduire la taille, zip, zipper'),
(145, 'DDOS (Distributed Denial of Service)', 'Cyberattaque dans laquelle des attaquants surchargent intentionnellement un serveur, un réseau ou une application en submergeant ses ressources avec un grand volume de trafic provenant de multiples sources.', 'Attaque par déni de service, attaque DDoS'),
(146, 'Débit', 'Vitesse à laquelle les données sont transférées d\'un emplacement à un autre sur un réseau, mesurée généralement en bits par seconde (bps) ou en octets par seconde (Bps).', 'Vitesse de transmission, débit de transfert, vitesse de téléchargement, Throughput'),
(147, 'Débogage', 'Processus de recherche, d\'identification et de correction des erreurs, des bugs ou des défauts dans un logiciel, un programme ou un système informatique afin d\'assurer son bon fonctionnement.', 'Correction de bugs, dépannage, recherche d\'erreurs, Debugging'),
(148, 'DNS (Domain Name System)', 'Système hiérarchique de noms de domaine utilisé pour traduire les noms de domaine en adresses IP numériques, facilitant ainsi l\'accès aux ressources sur Internet par les utilisateurs.', 'Système de noms de domaine'),
(149, 'Domaine', 'Un domaine désigne une région, un champ ou un espace spécifique, généralement utilisé dans le contexte de l\'informatique pour faire référence à un groupe de périphériques, d\'utilisateurs ou de ressources associés à un réseau ou à une organisation.', 'Secteur, champ, espace, Domain'),
(150, 'Donnée', 'Information brute ou fait, généralement stocké dans un format numérique et utilisé comme matériau de base pour les calculs, les analyses ou les traitements informatiques.', 'Information, élément, Data'),
(151, 'Données mobiles', 'La connectivité Internet fournie par les réseaux de téléphonie mobile, permettant aux utilisateurs d\'accéder à Internet et d\'utiliser des services en ligne via leurs appareils mobiles.', 'Connexion mobile, Internet mobile, accès Internet sans fil, Mobile data'),
(152, 'Dossier', 'Conteneur ou répertoire utilisé pour organiser et stocker des documents, des fichiers ou des informations de manière structurée dans un système informatique.', 'Répertoire, classeur, dossier de fichiers, Folder'),
(153, 'DPI (Dots Per Inch)', 'Mesure de la résolution d\'impression qui indique le nombre de points d\'encre individuels présents dans un pouce linéaire d\'une impression, utilisée pour évaluer la qualité et la netteté des images imprimées.', 'Résolution d\'impression, qualité d\'impression, densité de points'),
(154, 'E-commerce', 'La pratique d\'acheter et de vendre des biens et des services sur Internet, souvent via des sites web ou des plateformes en ligne, facilitant les transactions commerciales entre les entreprises et les consommateurs.', 'commerce, commerce en ligne, commerce électronique, vente, vente en ligne, cybercommerce'),
(155, 'Ecran', 'L\'interface visuelle d\'un appareil électronique, telle qu\'un ordinateur, un smartphone ou une télévision, est utilisée pour afficher des informations, des images et des vidéos.', 'Moniteur, affichage, ordinateur'),
(157, 'Emoji', 'Un petit symbole graphique utilisé dans les messages électroniques et les réseaux sociaux pour représenter des émotions, des objets, des actions ou des idées, permettant d\'ajouter de l\'expressivité et de la convivialité à la communication en ligne.', 'émoticône, pictogramme'),
(158, 'En ligne', 'Connecté à Internet ou en train d\'utiliser des services accessibles via Internet.', 'Connecté, online'),
(159, 'ENT', 'Une plateforme en ligne utilisée dans les établissements d\'enseignement pour fournir des outils et des services numériques aux étudiants, aux enseignants et au personnel administratif, facilitant l\'organisation, la communication et l\'apprentissage.', 'plateforme, éducation, espace, espace numérique, Environnement Numérique de Travail'),
(160, 'Ereputation', 'L\'image en ligne d\'une personne, d\'une marque ou d\'une entreprise, basée sur les opinions, les commentaires et les informations disponibles sur Internet, influençant la perception publique et la réputation.', 'réputation, plateforme, éducation, espace, espace numérique'),
(161, 'ePub', 'Un format de fichier open-source pour les livres électroniques, conçu pour permettre la mise en page dynamique, le redimensionnement du texte et la compatibilité avec différents appareils de lecture.', 'livre, numérique, publication'),
(162, 'Ethernet', 'Une norme de technologie de réseau informatique utilisée pour la transmission de données à haut débit via des câbles Ethernet, souvent utilisée pour connecter des ordinateurs, des périphériques réseau et des routeurs.', 'réseau, réseau locale, LAN, connexion filaire'),
(164, 'Extension de fichier', 'Une suite de caractères ajoutée à la fin du nom de fichier d\'un fichier informatique pour indiquer son format ou son type de contenu, permettant aux systèmes d\'exploitation et aux applications de reconnaître et de traiter les fichiers correctement.', 'format, format de fichier, type, type de fichier, suffixe, suffixe de fichier, add-on, complément, m'),
(165, 'E-learning', 'L\'apprentissage en ligne, utilisant des technologies numériques telles que l\'Internet, les ordinateurs et les appareils mobiles pour accéder à des cours, des formations et des ressources éducatives à distance.', 'Apprentissage, apprentissage en ligne, formation, formation à distance, enseignement, enseignement v'),
(166, 'Eyetracking', 'Une méthode d\'analyse utilisée en recherche marketing et en ergonomie pour étudier le comportement visuel des utilisateurs en suivant le mouvement de leurs yeux lorsqu\'ils interagissent avec des interfaces numériques, des publicités ou des contenus visuels.', 'Suivi oculaire, eye-tracker, suivi, suivi du regard'),
(167, 'Exporter', 'Le processus de transfert ou de conversion de données, de fichiers ou d\'informations depuis une application, un logiciel ou un système vers un autre format ou une autre destination, souvent dans le but de partager, de sauvegarder ou d\'utiliser ces données dans un contexte différent.', 'Transférer, sauvegarder, convertir'),
(168, 'FAQ (Frequently Asked Questions)', 'Section ou document regroupant les questions fréquemment posées et leurs réponses sur un sujet précis, souvent trouvée sur des sites web pour aider les utilisateurs à trouver des solutions à des problèmes courants.', 'Foire, Foire aux question, questions, aide, aide en ligne'),
(169, 'Favicon', 'Petite icône associée à un site web, affichée dans l\'onglet du navigateur ou à côté de l\'URL dans la barre d\'adresse. Elle aide à identifier visuellement le site web.', 'Icône de site, icône'),
(170, 'Fichier', 'Ensemble de données stockées sur un ordinateur ou un support de stockage, pouvant être un document, une image, un programme, ou tout autre type de données numériques.', 'Document, dossier, fichier informatique'),
(171, 'Fibre Optique', 'Type de câble utilisé pour la transmission de données à très haute vitesse. Il utilise des fils de verre ou de plastique très fins pour conduire la lumière, permettant le transfert de données sur de longues distances avec une perte minimale.', 'Câble, câble optique, réseau, réseau optique, transmission'),
(172, 'Filtre', 'Outil ou fonction utilisé pour trier, organiser ou masquer des données selon certains critères. Les filtres peuvent être appliqués dans divers contextes, comme le traitement de texte, la recherche web, ou la manipulation d\'images.', 'Sélecteur, filtrage, tri, outil, outil de tri'),
(173, 'Fil d’Ariane', 'Élément de navigation sur les sites web qui permet aux utilisateurs de comprendre et de suivre leur parcours à travers la structure du site en affichant un chemin de navigation hiérarchique.', 'Chemin, chemin de navigation, piste'),
(174, 'Follower', 'Terme utilisé sur les réseaux sociaux pour désigner une personne qui suit les publications ou les mises à jour d\'un autre utilisateur, d\'une marque ou d\'une organisation.', 'Abonné, suiveur, Fan'),
(175, 'Forum', 'Plateforme en ligne où les utilisateurs peuvent échanger des messages sur divers sujets. Les forums sont souvent organisés par catégories et peuvent être modérés pour maintenir un environnement respectueux.', 'Discussion, plateforme, en ligne'),
(176, 'Fracture Numérique', 'Terme désignant l\'écart entre les individus, ménages, entreprises ou régions qui ont accès aux technologies de l\'information et de la communication (TIC) et ceux qui en sont exclus, pour des raisons économiques, sociales, géographiques ou éducatives.', 'Accès'),
(177, 'Framework', 'Ensemble cohérent de bibliothèques et de conventions conçues pour faciliter le développement de logiciels en fournissant une structure de base sur laquelle les développeurs peuvent construire des applications plus spécifiques.', 'structure, infrastructure, programme, squelette, plateforme, développement, armature, modèle, enviro'),
(178, 'Formulaire', 'Outil utilisé sur les sites web pour recueillir des informations auprès des visiteurs ou des utilisateurs. Les formulaires peuvent inclure des champs pour entrer des textes, choisir des options, cocher des cases, etc.', 'Saisie, demande, champ'),
(179, 'FTP (File Transfer Protocol)', 'Protocole de transfert de fichiers qui permet l\'échange de données entre un serveur et un client sur un réseau informatique. Il est largement utilisé pour télécharger et mettre en ligne des fichiers sur internet.', 'transfert, protocole, fichier'),
(180, 'Gamification', 'L\'application de concepts et de mécanismes de jeu dans des contextes non ludiques, tels que l\'éducation, le travail ou le marketing, dans le but d\'engager les utilisateurs, de les motiver et de renforcer leur participation.', 'Ludification, Jeu appliqué'),
(181, 'Gestionnaire de fichier', 'Un logiciel ou une application permettant à un utilisateur d\'organiser, de naviguer et de gérer les fichiers et les dossiers stockés sur un ordinateur ou un périphérique de stockage, facilitant les opérations telles que la copie, le déplacement et la suppression de fichiers.', 'Explorateur de fichier, gestionnaire de dossier, file manager'),
(182, 'Gestionnaire de mot de passe', 'Un programme informatique permettant de stocker en toute sécurité des identifiants de connexion, tels que des noms d\'utilisateur et des mots de passe, pour différents comptes en ligne, afin de faciliter la gestion et la sécurisation des informations d\'authentification.', 'Gestionnaire d’authentification, coffre-fort des mots de passe, password manager'),
(183, 'Geek', 'Une personne passionnée par la technologie, l\'informatique, les jeux vidéo, la science-fiction ou d\'autres sujets spécialisés, souvent caractérisée par une connaissance approfondie et un intérêt obsessionnel pour ces domaines.', 'Passionné de technologie, mordu d’informatique'),
(184, 'Geolocalisation', 'La technique de détermination de la position géographique d\'un objet, d\'une personne ou d\'un appareil en utilisant des technologies telles que le GPS, le Wi-Fi ou les antennes cellulaires, permettant de fournir des informations basées sur la localisation.', 'Localisation géographique, positionnement, geolocation'),
(185, 'GIF', 'Un format de fichier d\'image bitmap largement utilisé sur Internet, capable de stocker plusieurs images dans un seul fichier et de créer des animations courtes et des boucles, souvent utilisé pour les mèmes, les avatars et les réactions animées.', 'Format graphique interchange, Format d\'image animée, Graphics Interchange Format, format d’échange d'),
(186, 'Glossaire', 'Une liste alphabétique de termes spécialisés ou de mots clés, accompagnés de leurs définitions ou de leurs explications, utilisée pour référencer et clarifier le vocabulaire spécifique à un domaine ou à un sujet particulier.', 'Lexique, dictionnaire spécialisé, glossary'),
(187, 'Glisser/déposer', 'Une technique d\'interaction utilisateur permettant de déplacer ou de copier des éléments numériques, tels que des fichiers, des images ou du texte, en les sélectionnant et en les faisant glisser d\'un emplacement à un autre à l\'aide de la souris ou du doigt sur un écran tactile.', 'Drag and drop, Déplacer et déposer'),
(188, 'GPU', 'Une unité de traitement graphique, un composant matériel spécialisé conçu pour accélérer le rendu d\'images et le traitement graphique sur un ordinateur ou un appareil électronique, souvent utilisé pour les jeux, la modélisation 3D et les applications graphiques intensives.', 'Carte graphique, Unité de traitement graphique, Graphics Processing Unit'),
(193, 'Hameçonnage', 'Technique d\'escroquerie en ligne utilisée pour obtenir des informations personnelles, telles que des identifiants de connexion, des mots de passe ou des données financières, en se faisant passer pour une entité de confiance dans le but de tromper les utilisateurs.', 'Filoutage, Phishing'),
(194, 'Hashtag', 'Un mot ou une phrase précédé du symbole dièse (#), utilisé sur les réseaux sociaux pour marquer ou catégoriser du contenu, permettant aux utilisateurs de rechercher, de suivre ou de participer à des discussions sur un sujet spécifique.', 'Mot-clic, mot-dièse'),
(195, 'Historique', 'Une liste ou un enregistrement des événements passés ou des actions effectuées par un utilisateur sur un système informatique ou une application, souvent utilisé pour suivre les activités de navigation sur Internet.', 'Journal, registre'),
(196, 'HDMI', 'Une norme de connectivité audio et vidéo numérique utilisée pour transmettre des signaux haute définition entre des appareils, tels que les téléviseurs, les lecteurs Blu-ray, les consoles de jeu et les ordinateurs.', 'Interface Multimédia haute définition, High-Definition Multimedia interface'),
(197, 'HTTP', 'Un protocole de communication utilisé pour le transfert de données sur le World Wide Web, permettant aux navigateurs web et aux serveurs de communiquer et d\'échanger des informations.', 'Protocole de transfert hypertexte, Hypertext Transfer Protocol'),
(198, 'Hôte', 'Un ordinateur ou un dispositif connecté à un réseau informatique et fournissant des services ou des ressources aux autres ordinateurs, souvent désigné comme un serveur.', 'Host, serveur'),
(199, 'Hexadécimal', 'Un système de numération positionnel utilisé en informatique et en mathématiques, utilisant une base de 16 chiffres (0-9 et A-F) pour représenter les nombres, souvent utilisé pour représenter des valeurs binaires de manière plus compacte et plus lisible.', 'Base 16'),
(200, 'IA', 'La simulation de processus intelligents par des machines, en particulier des systèmes informatiques, afin d\'exécuter des tâches qui normalement nécessitent l\'intelligence humaine.', 'Intelligence synthétique, Artificial Intelligence (AI)'),
(201, 'Icône', 'Petite image graphique représentant un objet, une action, une fonction ou un programme, souvent utilisée pour représenter des applications, des fichiers ou des fonctionnalités sur un système informatique.', 'Symbole, image, pictogramme, Icon'),
(202, 'Identifiant', 'Chaîne de caractères ou numéro unique utilisé pour identifier de manière unique un utilisateur, un compte, un appareil ou une ressource dans un système informatique ou en ligne.', 'Nom d\'utilisateur, ID, Login'),
(203, 'Indicateur clé de performance (KPI)', 'Mesure quantitative utilisée pour évaluer les performances et le succès d\'une organisation, d\'un projet ou d\'une campagne, souvent utilisé dans le domaine du marketing et de la gestion d\'entreprise.', 'Indicateur de performance, métrique clé, Key Performance Indicator (KPI)'),
(204, 'Informatique', 'Domaine d\'étude, de conception, de développement et d\'utilisation des ordinateurs et des technologies de l\'information pour le traitement et la gestion des données, ainsi que pour la résolution de problèmes.', 'Science informatique, technologie de l\'information, IT (Information Technology), Computer science, C'),
(205, 'Influenceur', 'Personne ou entité ayant une influence significative sur les opinions, les comportements ou les décisions d\'autres personnes, souvent dans le contexte des médias sociaux ou de la sphère numérique.', 'Personne influente, leader d\'opinion, influenceur numérique, Influencer'),
(206, 'Interface', 'Point de contact ou d\'interaction entre un utilisateur et un système informatique, comprenant généralement des éléments graphiques, des menus ou des commandes permettant de contrôler ou de communiquer avec le système.', 'GUI (Graphical User Interface), interface utilisateur, écran'),
(207, 'Internet', 'Réseau mondial de réseaux informatiques interconnectés, permettant aux utilisateurs de communiquer, d\'accéder à des informations, de partager des données et d\'utiliser des services en ligne via des protocoles de communication standardisés.', 'Toile, le Web, le Net'),
(208, 'Interopérabilité', 'Capacité des systèmes informatiques ou des dispositifs à fonctionner ensemble de manière transparente, en échangeant et en utilisant des données et des services de manière efficace, indépendamment de leur plateforme ou de leur configuration.', 'Compatibilité, interconnexion, intégration, Interoperability'),
(209, 'Intranet', 'Réseau informatique privé et sécurisé, basé sur les technologies Internet, accessible uniquement aux membres ou aux employés d\'une organisation, leur permettant de partager des informations, des ressources et des services internes.', 'Réseau interne, réseau d\'entreprise'),
(211, 'Importer', 'Le processus de transfert ou de récupération de données, de fichiers ou d\'informations depuis une source externe, telle qu\'un fichier, une base de données ou un système, vers une application, un logiciel ou un système pour une utilisation ultérieure.', 'Charger, récupérer, recevoir'),
(212, 'Jack', 'Connecteur audio standard utilisé pour brancher des périphériques tels que des écouteurs, des haut-parleurs et des microphones sur des appareils électroniques comme des smartphones et des ordinateurs.', 'Connecteur audio, prise jack'),
(213, 'Jeu vidéo', 'Logiciel interactif destiné au divertissement, permettant aux joueurs d\'interagir avec des environnements virtuels et des personnages à travers des actions et des commandes.', 'Jeu électronique, jeu informatique, Video game'),
(214, 'JPEG', 'Format de compression d\'image utilisé dans la photographie numérique pour réduire la taille des fichiers tout en préservant une qualité visuelle acceptable.', 'JPG'),
(215, 'Joystick', 'Périphérique d\'entrée utilisé pour contrôler le mouvement et les actions dans les jeux vidéo et les simulations, composé d\'une tige ou d\'un levier et de boutons.', 'Manette de jeu, contrôleur, stick'),
(216, 'Jumeler', 'Action de connecter ou d\'associer deux appareils électroniques compatibles, comme des téléphones ou des périphériques Bluetooth, pour permettre la communication et l\'échange de données entre eux.', 'Associer, synchroniser, Pairing'),
(217, 'Kiosque', 'Plateforme en ligne proposant divers contenus numériques tels que des livres électroniques, des magazines et des journaux.', 'Librairie en ligne, magasin numérique, Digital kiosk'),
(218, 'Machine', 'Dispositif mécanique ou électronique capable d\'effectuer des tâches ou des opérations spécifiques.', 'Appareil, dispositif'),
(219, 'Machine learning', 'Domaine de l\'intelligence artificielle où des algorithmes sont utilisés pour permettre à un système informatique d\'apprendre à partir de données et d\'améliorer ses performances sans être explicitement programmé.', 'Apprentissage automatique, apprentissage machine'),
(220, 'Mac', 'Famille d\'ordinateurs personnels conçus, fabriqués et commercialisés par Apple Inc., fonctionnant sous le système d\'exploitation macOS.', 'Macintosh, ordinateur Apple'),
(221, 'Mail', 'Service de messagerie électronique permettant d\'envoyer, de recevoir et de gérer des messages via Internet.', 'Courriel, e-mail, courrier électronique'),
(222, 'Matériel informatique', 'Les composants physiques d\'un système informatique ou électronique, tels que les processeurs, les cartes mères, les disques durs, les écrans, les claviers et les souris.', 'Hardware, composants physiques'),
(223, 'Mémoire vive', 'Composant matériel d\'un ordinateur utilisé pour stocker temporairement des données et des instructions en cours d\'utilisation par le processeur.', 'Random Access Memory (RAM), mémoire système'),
(224, 'Messagerie', 'Service permettant l\'échange de messages entre utilisateurs via des plateformes de communication électronique.', 'Service de messagerie, système de messagerie, Messaging'),
(225, 'Microprocesseur', 'Unité centrale de traitement d\'un ordinateur, responsable de l\'exécution des instructions et du traitement des données.', 'CPU, processeur, Microprocessor'),
(226, 'Migration de données', 'Processus de transfert de données d\'un système ou d\'une plateforme à un autre, souvent réalisé lors de mises à niveau ou de changements de système.', 'Transfert de données, déménagement de données, Data migration'),
(227, 'Modem', 'Appareil permettant de convertir les signaux numériques d\'un ordinateur en signaux analogiques transmissibles sur une ligne téléphonique, et vice versa, pour permettre la connexion à Internet.', 'Modulateur-démodulateur, terminal d\'accès à distance, Modem'),
(228, 'Moniteur', 'Périphérique d\'affichage utilisé pour visualiser les informations produites par un ordinateur ou un autre appareil électronique.', 'Écran, afficheur, Monitor'),
(229, 'Molette', 'Petit dispositif de commande rotatif utilisé pour faire défiler ou ajuster les éléments à l\'écran d\'un ordinateur ou d\'un appareil électronique.', 'Roulette, bouton de défilement, Scroll wheel'),
(230, 'Mobile', 'Dispositif électronique portable, tel qu\'un smartphone ou une tablette, permettant d\'accéder à des services en ligne, de communiquer avec d\'autres personnes, et d\'exécuter diverses applications.', 'Portable, déplaçable, Téléphone, Cellulaire, Smartphone, Tablette'),
(231, 'Modérateur', 'Personne chargée de surveiller et de réguler les interactions dans une communauté en ligne, souvent sur des forums de discussion ou des réseaux sociaux.', 'Administrateur, gestionnaire, Moderator'),
(232, 'Moteur de recherche', 'Outil en ligne permettant de trouver des informations sur Internet en saisissant des mots-clés ou des expressions, et en affichant des résultats pertinents.', 'Mode de recherche, outil de recherche, Search engine'),
(233, 'Mot de passe', 'Séquence de caractères utilisée pour authentifier l\'identité d\'un utilisateur et sécuriser l\'accès à un compte ou à un système informatique.', 'Code secret, clé d\'accès, Password'),
(234, 'Mot-clé', 'Terme ou expression spécifique utilisé dans le référencement et le marketing en ligne pour décrire le contenu d\'une page web, facilitant ainsi son classement dans les résultats des moteurs de recherche.', 'Terme-clé, expression-clé, Keyword'),
(235, 'Multimédia', 'Contenu ou technologie intégrant différents formats, tels que du texte, des images, de l\'audio et de la vidéo, permettant une expérience interactive et polyvalente.', 'Médias multiples, contenu multimédia'),
(236, 'Navigateur', 'Logiciel permettant aux utilisateurs d\'accéder à des informations sur Internet en affichant des pages web et en naviguant entre elles.', 'Explorateur web, logiciel de navigation, Browser'),
(237, 'NAT', 'Technique utilisée pour modifier les adresses IP des paquets de données lors de leur passage à travers un routeur ou un pare-feu, permettant de connecter plusieurs dispositifs à Internet à l\'aide d\'une seule adresse IP publique.', 'Traduction d\'adresse réseau, translation d\'adresse, Network Address Translation'),
(238, 'Newsletter', 'Publication périodique envoyée par e-mail à une liste d\'abonnés, fournissant des informations, des actualités ou des promotions sur un sujet spécifique.', 'Lettre d\'information, bulletin d\'information'),
(239, 'Nom d’hôte', 'Un nom unique attribué à un ordinateur ou à un dispositif sur un réseau informatique, permettant son identification et son adressage dans le cadre de la communication réseau.', 'Hostname, nom de machine'),
(241, 'Nom de domaine', 'Adresse textuelle utilisée pour identifier un site web sur Internet, correspondant à une adresse IP numérique.', 'Adresse web, URL, Domain name'),
(242, 'Notification', 'Message automatique affiché sur un appareil ou une application pour informer l\'utilisateur d\'un événement, d\'une mise à jour ou d\'une activité récente.', 'Alerte'),
(243, 'Nuage', 'Infrastructure informatique virtuelle permettant le stockage, le partage et l\'accès à des données et des ressources sur Internet, généralement gérée par des fournisseurs de services cloud.', 'Cloud computing, informatique en nuage, Cloud'),
(244, 'Numérique', 'Relatif à la représentation, au stockage, au traitement et à la transmission de l\'information sous forme de chiffres ou de valeurs binaires, utilisant des systèmes numériques.', 'Informatique, Digital'),
(245, 'Objet', 'L\'objet d\'un e-mail est une courte phrase ou description qui résume le contenu ou le but du message.', 'Titre, sujet, intitulé, description, rubrique'),
(246, 'Octet', 'Unité de mesure de la quantité de données, équivalant à 8 bits. Un byte peut représenter un caractère, tel qu\'une lettre ou un chiffre.', 'Byte'),
(247, 'Office', 'Suite de logiciels de productivité, comprenant des applications telles que Word, Excel et PowerPoint, développée par Microsoft.', 'Suite bureautique, logiciels de bureau'),
(248, 'OLED', 'Technologie d\'affichage utilisant des diodes électroluminescentes organiques pour produire de la lumière et créer des images sur des écrans plats.', 'Diode électroluminescente organique, affichage OLED, Organic Light-Emitting Diode'),
(249, 'Onpage', 'Terme utilisé en référencement pour décrire les pratiques d\'optimisation effectuées directement sur une page web afin d\'améliorer son classement dans les moteurs de recherche.', 'Optimisation sur page, optimisation interne'),
(250, 'Open source', 'Logiciel dont le code source est disponible publiquement, permettant à quiconque de le consulter, de le modifier et de le distribuer librement.', 'Logiciel libre, source ouverte'),
(251, 'Optimisation', 'Processus visant à améliorer les performances ou l\'efficacité d\'un système, d\'un processus ou d\'un produit.', 'Amélioration, Optimization'),
(252, 'Ordinateur', 'Machine électronique programmable capable d\'exécuter des instructions et de traiter des données.', 'Machine, PC, système informatique, Computer'),
(253, 'Overlay', 'Couche d\'informations affichée par-dessus une autre interface, souvent utilisée dans les applications et les jeux pour fournir des informations contextuelles.', 'Superposition, surimpression'),
(254, 'Page d’accueil', 'La page d\'accueil principale d\'un site web, généralement la première page visitée par les utilisateurs lorsqu\'ils accèdent à un site, fournissant des liens vers d\'autres sections du site et des informations importantes.', 'Homepage, page principale'),
(255, 'Paramètres', 'Options configurables et ajustables d\'un logiciel, d\'une application ou d\'un périphérique, permettant à l\'utilisateur de personnaliser et de contrôler son fonctionnement et son comportement.', 'Réglages, options, Settings'),
(256, 'Pare-feu', 'Dispositif de sécurité réseau conçu pour surveiller et contrôler le trafic entrant et sortant, basé sur un ensemble de règles prédéfinies, afin de protéger un réseau ou un système informatique contre les attaques et les intrusions.', 'Coupe-feu, Firewall'),
(257, 'Passerelle', 'Dispositif réseau qui agit comme une interface entre deux réseaux distincts, permettant la communication et la transmission de données entre eux, tout en appliquant des fonctions de routage, de traduction d\'adresse et de sécurité.', 'Passerelle, point d\'accès, Gateway'),
(258, 'Partage', 'Action de rendre des ressources, des fichiers ou des données accessibles à d\'autres utilisateurs, généralement sur un réseau informatique, pour permettre la collaboration, la communication ou l\'échange d\'informations.', 'Envoi de fichiers, collaboration, Sharing'),
(259, 'Partage de connexion', 'Le \"partage de connexion\" est une fonctionnalité qui permet à un appareil, comme un smartphone, de partager sa connexion Internet avec d\'autres appareils, tels que des ordinateurs portables ou des tablettes, via des connexions sans fil comme le Wi-Fi ou le Bluetooth.', 'Hotspot mobile, Tethering, Point d’accès mobile, Partage de réseau, Partage de données mobiles'),
(260, 'PDF', 'Format de fichier développé par Adobe Systems pour représenter des documents de manière indépendante du logiciel, du matériel et du système d\'exploitation utilisés pour les créer ou les visualiser.', 'Format PDF, fichier PDF, Portable Document Format'),
(261, 'Périphérique', 'Équipement externe connecté à un ordinateur ou à un système informatique pour étendre ses fonctionnalités ou interagir avec lui, tels que des claviers, des souris, des imprimantes, des scanners, etc.', 'Équipement externe, périphérique informatique, Peripheral'),
(262, 'Pilot', 'Programme ou logiciel utilisé pour contrôler et gérer le fonctionnement d\'un périphérique matériel ou d\'un composant informatique, généralement fourni par le fabricant pour assurer la compatibilité et les performances optimales.', 'Pilote, driver'),
(263, 'Pixel', 'Plus petite unité d\'une image numérique, représentant un point unique sur un écran d\'ordinateur ou un dispositif d\'affichage, composant l\'image dans sa résolution finale.', 'Point, élément d\'image'),
(264, 'Plugin', 'Module logiciel ajouté à un programme ou à un navigateur web pour étendre ses fonctionnalités, ajouter des fonctionnalités supplémentaires ou prendre en charge des formats de fichier spécifiques.', 'Extension, module complémentaire'),
(265, 'PNG', 'Format de fichier graphique utilisé pour stocker des images bitmap, offrant une compression sans perte de qualité et prenant en charge la transparence et les couleurs indexées.', 'Format PNG, fichier PNG, Portable Network Graphics'),
(266, 'Podcast', 'Série d\'épisodes audio ou vidéo numériques, généralement disponibles en ligne pour le téléchargement ou le streaming, sur des sujets variés tels que l\'éducation, le divertissement ou l\'information.', 'Émission en baladodiffusion, balado'),
(267, 'Pop-up', 'Fenêtre contextuelle affichée soudainement sur un écran d\'ordinateur, généralement contenant une annonce publicitaire, une alerte ou un message, souvent considérée comme intrusive.', 'Fenêtre contextuelle, fenêtre surgissante'),
(268, 'Port', 'Numéro d\'identification associé à un processus ou à un service réseau sur un ordinateur, utilisé pour diriger le trafic réseau vers une application spécifique s\'exécutant sur une machine.', 'Numéro de port'),
(269, 'Protocole', 'Ensemble de règles et de conventions utilisées pour permettre la communication et l\'échange de données entre différents périphériques, systèmes ou réseaux informatiques.', 'Norme, règle, procédure, Protocol'),
(270, 'Quota', 'Limite prédéfinie ou allocation fixe définie pour un utilisateur, un groupe d\'utilisateurs ou un système informatique, régissant la quantité maximale de ressources, de données ou d\'espace de stockage qui peut être utilisée.', 'Limite, allocation, contingent'),
(271, 'Qr code', 'Code-barres bidimensionnel qui contient des informations codées sous forme de modules noirs et blancs disposés dans un motif carré, généralement utilisé pour stocker des données numériques pouvant être lues rapidement par un dispositif de numérisation.', 'Code QR, code à réponse rapide, Quick Response Code'),
(272, 'Qwerty', 'Agencement standard des touches d\'un clavier informatique, caractérisé par la disposition des six premières lettres de la rangée supérieure du clavier, formant le mot \"QWERTY\", largement utilisé dans les claviers anglophones.', 'Agencement de touches QWERTY'),
(273, 'Raccourci', 'Méthode abrégée pour accéder rapidement à une fonctionnalité, un programme ou un fichier spécifique sur un système informatique, souvent en utilisant une combinaison de touches ou un lien spécifique.', 'Raccourci clavier, raccourci d\'accès, Shortcut'),
(274, 'Rafraîchissement', 'Action de mettre à jour ou de recharger le contenu d\'une page web, d\'une application ou d\'un écran pour afficher les dernières informations ou modifications.', 'Actualisation, mise à jour, Refresh'),
(275, 'RAID', 'Méthode de stockage de données qui combine plusieurs disques durs physiques en un seul volume logique pour améliorer la performance, la redondance ou la capacité de tolérance aux pannes.', 'Redundant Array of Independent Disks, Redondance de disque'),
(277, 'Réalité virtuelle', 'Environnement numérique interactif simulant des expériences sensorielles et perceptuelles, généralement à l\'aide d\'un casque ou de lunettes spéciales, permettant à l\'utilisateur d\'interagir avec un monde virtuel.', 'VR, réalité simulée, Virtual Reality'),
(279, 'Réglage de la confidentialité', 'Ensemble de paramètres et d\'options permettant de contrôler les niveaux de confidentialité et de sécurité des données personnelles sur les plateformes en ligne, les réseaux sociaux ou les services numériques.', 'Paramètres de confidentialité, options de confidentialité, Privacy settings'),
(280, 'Réseau', 'Infrastructure de communication qui permet à plusieurs dispositifs informatiques de partager des ressources, des données ou des services.', 'Réseau informatique, Network'),
(282, 'Répéteur', 'Dispositif utilisé pour étendre la portée et la couverture d\'un réseau sans fil en recevant, en amplifiant et en répétant les signaux de réseau, permettant ainsi d\'améliorer la connectivité dans les zones avec une faible réception.', 'Amplificateur de signal, répéteur de réseau, Repeater'),
(283, 'Résolution', 'Mesure de la netteté, de la clarté et du niveau de détail d\'une image, d\'un écran ou d\'une impression, généralement exprimée en termes de nombre de pixels dans chaque dimension.', 'Définition, qualité d\'image, netteté, Resolution'),
(284, 'Sandbox', 'Environnement isolé et sécurisé dans lequel les logiciels peuvent être exécutés et testés sans affecter le système hôte.', 'Bac à sable, environnement de test'),
(285, 'Scanner', 'Périphérique de numérisation utilisé pour capturer des images, des documents ou d\'autres données et les convertir en format numérique pour un traitement informatique.', 'Numériseur, scanneur, appareil de numérisation'),
(286, 'SEA', 'Terme utilisé pour désigner les stratégies de publicité en ligne qui visent à promouvoir un site web en affichant des annonces payantes sur les résultats de recherche des moteurs de recherche.', ''),
(287, 'SEO', 'Processus visant à améliorer la visibilité et le classement d\'un site web dans les résultats des moteurs de recherche, généralement en optimisant son contenu et sa structure.', 'Optimisation pour les moteurs de recherche, référencement naturel, Search Engine Optimization'),
(288, 'Serveur', 'Un ordinateur ou un programme informatique qui fournit des services, des ressources ou des données à d\'autres appareils ou programmes, généralement via un réseau.', 'Hôte, machine serveur, ordinateur central, Server'),
(289, 'SMS', 'Service de messagerie texte permettant l\'envoi et la réception de messages courts sur des appareils mobiles.', 'Texto, message texte, texto, Short Message Service'),
(290, 'Software', 'Ensemble de programmes informatiques, de données et de procédures qui permettent à un système informatique de fonctionner.', 'Logiciel, programme, application'),
(291, 'Souris', 'Périphérique d\'entrée utilisé pour contrôler le mouvement du curseur à l\'écran et interagir avec les éléments graphiques d\'une interface utilisateur.', 'Dispositif de pointage, souris d\'ordinateur, pointeur, Mouse'),
(292, 'Spam', 'Messages non sollicités et souvent indésirables envoyés en masse par courrier électronique.', 'Courrier indésirable, pourriel'),
(293, 'Statut', 'Position ou condition actuelle d\'un système, d\'un processus ou d\'un utilisateur dans un système informatique.', 'État, situation, condition, Status'),
(294, 'Stop motion', 'Technique d\'animation consistant à créer des mouvements en photographiant des objets immobiles image par image.', 'Animation en volume, animation image par image'),
(295, 'Streaming', 'Diffusion en continu de données multimédias, telles que de l\'audio ou de la vidéo, sur un réseau, permettant une lecture instantanée sans téléchargement préalable.', 'Diffusion en direct, diffusion continue'),
(296, 'Stockage', 'Processus et moyen de conserver et de sauvegarder des données sur des dispositifs de stockage tels que des disques durs, des clés USB ou des serveurs.', 'Archivage, conservation, sauvegarde, Storage'),
(297, 'Signets', 'En informatique, un signet, souvent appelé \"favori\" dans certains navigateurs, est un lien sauvegardé vers une page web spécifique qui permet à l\'utilisateur de retrouver rapidement cette page sans avoir à se souvenir de son adresse URL ou à la rechercher à nouveau.', '');
INSERT INTO `glossaire` (`Id_glossaire`, `Mot`, `Definition`, `Synonyme`) VALUES
(298, 'Tableau de bord', 'Une interface utilisateur graphique qui offre une vue synthétique des données et des indicateurs clés de performance (KPI) sous forme de graphiques, de tableaux ou de widgets, permettant une surveillance et une analyse rapides.', 'Interface graphique, tableau de bord de données, dashboard'),
(299, 'Tactile', 'Se réfère à la capacité d\'un écran ou d\'un dispositif à détecter et à répondre au toucher humain, permettant une interaction directe avec les éléments affichés.', 'Écran tactile, tactile touchscreen'),
(300, 'Tablette', 'Un ordinateur portable léger et compact avec un écran tactile, généralement utilisé pour la navigation sur Internet, la lecture de livres électroniques, le visionnage de vidéos, etc.', 'Tablette électronique, tablette numérique, tablet'),
(301, 'Tag', 'Un mot-clé ou une étiquette associé à un élément de contenu, tel qu\'un article, une photo ou une vidéo, pour faciliter l\'organisation, la recherche et le regroupement de contenu similaire.', 'Étiquette, balise'),
(302, 'Tweet', 'Un message court publié sur le réseau social Twitter, généralement limité à 280 caractères, utilisé pour partager des pensées, des actualités, des liens, etc.', 'Message Twitter, publication'),
(303, 'TCP/IP', 'Un ensemble de protocoles de communication utilisés pour interconnecter des dispositifs sur Internet et sur d\'autres réseaux informatiques, permettant le transfert de données entre eux.', 'Protocole TCP/IP, Transmission Control Protocol/Internet Protocol'),
(304, 'Thread', 'Dans le contexte informatique, un thread est une séquence d\'exécution individuelle à l\'intérieur d\'un processus, permettant à un programme de réaliser des tâches multiples simultanément.', 'Fil d\'exécution, processus léger'),
(305, 'Téléchargement', 'Le processus de transfert de données depuis un serveur distant vers un appareil local, souvent utilisé pour obtenir des fichiers, des logiciels, des médias, etc., depuis Internet.', 'Téléchargement de fichiers, rapatriement, transfert de données, download'),
(306, 'Télétravail', 'Pratique professionnelle qui permet à un employé d\'effectuer son travail en dehors du bureau traditionnel, généralement depuis son domicile, en utilisant les technologies de l\'information et de la communication.', 'Travail à distance, travail à domicile, telecommuting'),
(307, 'Taux de rafraîchissement', 'Le nombre de fois par seconde qu\'un écran rafraîchit l\'image affichée, mesuré en hertz (Hz), déterminant la fluidité et la netteté des mouvements à l\'écran.', 'Fréquence de rafraîchissement, taux de rafraîchissement d\'écran, refresh rate'),
(308, 'Tableur', 'Un logiciel informatique utilisé pour stocker, organiser, analyser et manipuler des données sous forme de tableaux, offrant des fonctionnalités de calcul, de graphiques, etc.', 'Feuille de calcul, application de tableur, spreadsheet'),
(309, 'Télépaiement', 'Un système de paiement électronique qui permet aux utilisateurs d\'effectuer des transactions financières à distance, généralement via Internet ou par téléphone mobile.', 'Paiement en ligne, paiement électronique, paiement à distance, online payment'),
(310, 'Téléversement', 'Le processus de transfert de fichiers ou de données depuis un ordinateur local vers un serveur distant ou un autre dispositif, souvent dans le cadre du partage ou du téléchargement de contenu sur Internet.', 'Transfert de fichier, upload'),
(311, 'Troll', 'Une personne qui poste intentionnellement des messages provocateurs, offensants ou perturbateurs en ligne dans le but de générer des réactions émotionnelles ou de perturber les discussions.', 'Provocateur, agitateur'),
(312, 'Tracking', 'La collecte systématique de données sur les activités en ligne d\'un utilisateur, telles que la navigation sur les sites web, les achats en ligne, etc., souvent utilisée à des fins de marketing ou d\'analyse.', 'Suivi, traçage'),
(313, 'URL', 'Une adresse unique utilisée pour localiser une ressource spécifique sur Internet, telle qu\'une page web, un fichier, une image, etc.', 'Adresse web, lien URL, Uniform Resource Locator'),
(315, 'Unité centrale', 'Le boîtier principal d\'un ordinateur, contenant le processeur, la mémoire, le disque dur, etc., et responsable du traitement des données et de l\'exécution des programmes.', 'Boîtier'),
(316, 'UML', 'Un langage de modélisation visuelle utilisé pour représenter visuellement la structure et le comportement des systèmes logiciels, en utilisant des diagrammes tels que les diagrammes de classe, les diagrammes de séquence, etc.', 'Langage de modélisation unifié, Unified Modeling Language'),
(317, 'Virus', 'Un programme informatique malveillant conçu pour infecter un système informatique, se propager et causer des dommages, tels que la corruption de données, la perturbation du fonctionnement du système, etc.', 'Malware, logiciel malveillant'),
(318, 'VPN', 'Un réseau privé virtuel qui crée une connexion sécurisée et cryptée entre un utilisateur et un réseau privé sur Internet, permettant une navigation anonyme, sécurisée et un accès à distance aux ressources réseau.', 'Réseau privé virtuel, Virtual Private Network'),
(319, 'VGA', 'Un standard d\'affichage graphique utilisé pour connecter un ordinateur à un moniteur ou à un écran, offrant une résolution vidéo maximale de 640x480 pixels en 16 couleurs.', 'Video Graphics Array'),
(320, 'Veille', 'Le mode de fonctionnement ou l\'état d\'un appareil électronique ou d\'un système informatique lorsqu\'il est actif mais inactif, consommant moins d\'énergie et prêt à être rapidement réactivé.', 'Mode veille, standby'),
(321, 'Vue', 'Une interface utilisateur graphique qui affiche une représentation visuelle des données, des informations ou des éléments sur un écran d\'ordinateur ou un dispositif similaire.', 'Écran, fenêtre, view'),
(322, 'Visioconférence', 'Une forme de communication en temps réel qui permet à plusieurs personnes de se voir et de se parler simultanément à distance via des dispositifs audiovisuels et des réseaux informatiques.', 'Conférence vidéo, vidéoconférence, visioconférence, video conference'),
(323, 'Verrouillage', 'Le processus de sécurisation d\'un appareil ou d\'un système informatique en limitant l\'accès aux utilisateurs autorisés ou en empêchant les modifications non autorisées.', 'Sécurisation, locking'),
(326, 'Web', 'Le World Wide Web, souvent abrégé en Web, est un système d\'information hypertexte distribué permettant d\'accéder à des documents liés sur Internet. Ces documents, appelés pages web, sont interconnectés par des hyperliens et peuvent contenir du texte, des images, des vidéos et d\'autres contenus multimédias.', 'Toile, Internet, réseau des réseaux'),
(327, 'Wifi', 'Une technologie sans fil qui permet aux appareils électroniques tels que les ordinateurs, les smartphones et les tablettes de se connecter à un réseau local (LAN) sans utiliser de câbles, en utilisant des ondes radio pour la transmission de données.', 'Wi-Fi, réseau sans fil'),
(328, 'Wiki', 'Un site web collaboratif permettant à plusieurs utilisateurs de contribuer, de modifier et de mettre à jour le contenu de manière collaborative, souvent utilisé pour créer et maintenir une base de connaissances sur un sujet spécifique.', 'Encyclopédie collaborative, site wiki'),
(330, 'Webcam', 'Une caméra vidéo connectée à un ordinateur ou à un réseau, utilisée pour capturer des images et des vidéos en direct et pour les diffuser sur Internet ou les partager avec d\'autres utilisateurs en temps réel.', 'Caméra web, caméra Internet'),
(331, 'Widget', 'Un élément d\'interface utilisateur graphique interactif et autonome, souvent de petite taille, utilisé pour fournir des fonctionnalités spécifiques ou afficher des informations en temps réel sur un site web, un bureau ou une application.', 'Gadgets, composant, élément d\'interface'),
(333, 'Hacker', 'Un individu doué en informatique qui utilise ses compétences pour explorer et comprendre les systèmes informatiques. Les hackers peuvent être éthiques, intermédiaires ou malveillants selon leurs intentions et leurs actions. White Hat : Un hacker éthique qui utilise ses compétences en piratage pour identifier et corriger les vulnérabilités de sécurité dans les systèmes informatiques, généralement dans un cadre professionnel ou légal. Grey Hat : Un hacker dont les intentions et les actions se situ', 'Pirate informatique'),
(334, 'Plein écran', 'Affichage d\'une application, d\'une vidéo, d\'une image ou d\'un contenu multimédia qui utilise l\'intégralité de l\'espace disponible sur l\'écran de l\'appareil sans aucune interface ou barre d\'outils visible. En mode plein écran, le contenu occupe tout l\'écran, ce qui peut offrir une expérience immersive et concentrer l\'attention de l\'utilisateur sur le contenu affiché.', 'Mode immersion, Mode plein-écran, Affichage plein-écran, Mode sans distraction, Mode d\'affichage tot'),
(336, 'Portable', 'Qualifie un logiciel ou un périphérique conçu pour être facilement transporté et utilisé en déplacement, souvent avec une alimentation autonome, une taille compacte et une connectivité sans fil.', 'Portatif'),
(337, 'Port USB', 'Interface standard utilisée pour connecter divers périphériques informatiques à un ordinateur, tels que des claviers, des souris, des disques durs externes, des imprimantes et des smartphones, pour la transmission de données et l\'alimentation électrique.', 'Universal Serial Bus, USB port'),
(338, 'Presse-papiers', 'Fonctionnalité du système d\'exploitation qui permet de copier, de couper et de coller des données ou du texte entre différentes applications ou documents.', 'Clipboard, mémoire tampon, copier-coller'),
(339, 'Programme', 'Ensemble d\'instructions informatiques ordonnées qui définissent les actions à effectuer par un ordinateur pour exécuter une tâche ou réaliser une opération spécifique.', 'Logiciel, application, software'),
(340, 'Pouce', 'Unité de mesure de longueur équivalant à environ 2,54 centimètres, souvent utilisée pour décrire la taille d\'un écran d\'ordinateur, d\'une tablette ou d\'un smartphone.', 'Inch'),
(341, 'Recherche', 'Action de trouver des informations, des données ou des ressources sur Internet, généralement en utilisant un moteur de recherche pour parcourir et indexer le contenu disponible sur le Web.', 'Search, recherche en ligne'),
(342, 'Redirection', 'Processus automatique qui dirige un utilisateur d\'une URL ou d\'une adresse web à une autre, souvent utilisé pour rediriger le trafic d\'un site web vers une nouvelle URL ou une page de destination spécifique.', 'Redirect, redirection automatique'),
(343, 'Réseau social', 'Plateforme en ligne qui permet aux utilisateurs de créer des profils personnels, de partager des contenus, de se connecter avec d\'autres utilisateurs et de communiquer par le biais de messages, de commentaires et de réactions.', 'Media social, site de réseautage social'),
(344, 'Sauvegarde', 'Processus de copie et de stockage de données, de fichiers ou de systèmes informatiques pour protéger contre la perte de données, les pannes de matériel ou les erreurs humaines, offrant une récupération en cas de besoin.', 'Backup, copie de sécurité'),
(345, 'Site web', 'Ensemble de pages web, de contenu multimédia et de ressources liées, accessible via Internet à une adresse web unique, généralement utilisé pour fournir des informations, des services ou du divertissement à un public en ligne.', 'Website, web page'),
(346, 'Bureau', 'Espace de travail sur un ordinateur où les utilisateurs peuvent accéder à leurs fichiers, applications et autres ressources informatiques. C\'est l\'interface principale d\'un système d\'exploitation, telle que celle que l\'on trouve sur un ordinateur de bureau ou un ordinateur portable.', 'Interface utilisateur, Écran d\'accueil, Espace de travail, Desktop, Tableau de bord'),
(347, 'Windows', 'Système d\'exploitation développé par Microsoft, largement utilisé dans le monde entier pour les ordinateurs personnels, les tablettes et les appareils embarqués. Il offre une interface graphique permettant aux utilisateurs d\'interagir avec leur ordinateur à l\'aide de fenêtres, de menus et d\'icônes.', 'Système d\'exploitation Windows, Plateforme Windows, Environnement Windows'),
(348, 'Numériser', 'Transformer des informations papier ou analogiques en format numérique à l\'aide d\'un scanner ou d\'un appareil photo numérique.', 'Scanner, Convertir en format numérique, Digitaliser, Transformer en données numériques'),
(349, 'Présentation', 'Ensemble organisé de diapositives, de documents ou de médias conçus pour communiquer des informations, des idées ou des concepts à un public. Les présentations peuvent être utilisées dans divers contextes, tels que les réunions d\'affaires, les conférences, les formations ou les événements publics, et sont souvent créées à l\'aide de logiciels de présentation comme PowerPoint ou Google Slides.', 'Exposé, Discours, Exposition, diapositive, diapo, Présentation visuelle'),
(350, 'Onglet', 'Un onglet est comme une petite étiquette sur votre écran d\'ordinateur ou de téléphone. Vous les voyez souvent en haut de votre navigateur internet. Chaque onglet représente une page web différente. Lorsque vous cliquez sur un onglet, vous passez à cette page. Cela vous permet de voir plusieurs pages à la fois sans avoir à ouvrir de nouveaux programmes ou fenêtres.', 'Tabulation, onglette, onglet de navigation');

-- --------------------------------------------------------

--
-- Structure de la table `ressource`
--

CREATE TABLE `ressource` (
  `Id_ressource` int(11) NOT NULL,
  `Titre` varchar(100) NOT NULL,
  `Categorie` varchar(50) NOT NULL,
  `Sous_Categorie` varchar(255) NOT NULL,
  `Mot_cle` varchar(1500) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ressource`
--

INSERT INTO `ressource` (`Id_ressource`, `Titre`, `Categorie`, `Sous_Categorie`, `Mot_cle`, `Image`) VALUES
(103, 'Faire une démarche en ligne', 'Bases d\'internet', 'Gestion en ligne', '', ''),
(104, 'Utilisation du gestionnaire de fichier', 'Bases d\'internet', 'Utilisation système', 'Bureau, interface utilisateur, Écran d\'accueil, Espace de travail, Desktop, Tableau de bord, Compresser, Compression de données, réduire la taille, zip, zipper, Dossier, Répertoire, classeur, dossier de fichiers, Folder, Extension, add-on, complément, module, format, format de fichier, type, type de fichier, suffixe, suffixe de fichier, Exporter, Transférer, sauvegarder, convertir, Fichier, Document, dossier, fichier informatique, FTP, File Transfer Protocol, transfert, protocole, fichier, Gestionnaire de fichier, Explorateur de fichier, gestionnaire de dossier, file manager, Glisser/déposer, Drag and drop, Déplacer et déposer, Importer, Charger, récupérer, recevoir, Partage, Envoi de fichiers, collaboration, Sharing, Directory, Téléversement, Transfert de fichier, upload, Copier - Coller, insérer, transférer', './assets/images/miniatures/internet/minia_joindre_fichier.png'),
(105, 'Création de dossier Mac', 'Bases d\'internet', 'Utilisation système', 'Mac, Macintosh, ordinateur Apple, Bureau, interface utilisateur, Écran d\'accueil, Espace de travail, Desktop, Tableau de bord, Compresser, Compression de données, réduire la taille, zip, zipper, Dossier, Répertoire, classeur, dossier de fichiers, Folder, Extension, add-on, complément, module, format, format de fichier, type, type de fichier, suffixe, suffixe de fichier, Exporter, Transférer, sauvegarder, convertir, Fichier, Document, dossier, fichier informatique, FTP, File Transfer Protocol, transfert, protocole, fichier, Gestionnaire de fichier, Explorateur de fichier, gestionnaire de dossier, file manager, Glisser/déposer, Drag and drop, Déplacer et déposer, Importer, Charger, récupérer, recevoir, Partage, Envoi de fichiers, collaboration, Sharing, Directory, Téléversement, Transfert de fichier, upload', './assets/images/miniatures/internet/minia_création_dossier.png'),
(106, 'Création de dossier Windows', 'Bases d\'internet', 'Utilisation système', 'Windows, Système d\'exploitation Windows, Plateforme Windows, Environnement Windows, Bureau, interface utilisateur, Écran d\'accueil, Espace de travail, Desktop, Tableau de bord, Compresser, Compression de données, réduire la taille, zip, zipper, Dossier, Répertoire, classeur, dossier de fichiers, Folder, Extension, add-on, complément, module, format, format de fichier, type, type de fichier, suffixe, suffixe de fichier, Exporter, Transférer, sauvegarder, convertir, Fichier, Document, dossier, fichier informatique, FTP (File Transfer Protocol), transfert, protocole, fichier, Gestionnaire de fichier, Explorateur de fichier, gestionnaire de dossier, file manager, Glisser/déposer, Drag and drop, Déplacer et déposer, Importer, Charger, récupérer, recevoir, Partage, Envoi de fichiers, collaboration, Sharing, Directory, Téléversement, Transfert de fichier, upload', ''),
(107, 'Compresser un dossier', 'Bases d\'internet', 'Utilisation système', 'Bureau, interface utilisateur, Écran d\'accueil, Espace de travail, Desktop, Tableau de bord, Compresser, Compression de données, réduire la taille, zip, zipper, Dossier, Répertoire, classeur, dossier de fichiers, Folder, Extension, add-on, complément, module, format, format de fichier, type, type de fichier, suffixe, suffixe de fichier, Exporter, Transférer, sauvegarder, convertir, Fichier, Document, dossier, fichier informatique, FTP (File Transfer Protocol), transfert, protocole, fichier, Gestionnaire de fichier, Explorateur de fichier, gestionnaire de dossier, file manager, Glisser/déposer, Drag and drop, Déplacer et déposer, Importer, Charger, récupérer, recevoir, Partage, Envoi de fichiers, collaboration, Sharing, Directory, Téléversement, Transfert de fichier, upload', ''),
(108, 'Récupération des fichiers téléchargés', 'Bases d\'internet', 'Utilisation système', 'Téléchargement, Téléchargement de fichiers, rapatriement, transfert de données, download', './assets/images/miniatures/internet/minia_fichiers_telecharger.png'),
(109, 'Gestion du stockage sur Mac', 'Bases d\'internet', 'Utilisation système', 'Stockage, Archivage, conservation, sauvegarde, Storage', './assets/images/miniatures/internet/minia_gestion_stockage.png'),
(110, 'Mettre à jour Windows', 'Bases d\'internet', 'Utilisation système', 'Windows, Système d\'exploitation Windows, Plateforme Windows, Environnement Windows', ''),
(111, 'Les raccourcis Windows', 'Bases d\'internet', 'Utilisation système', 'Windows, Système d\'exploitation Windows, Plateforme Windows, Environnement Windows, Raccourci, Raccourci clavier, raccourci d\'accès, Shortcut, Qwerty, Agencement de touches QWERTY, Azerty, Agencement de touches AZERTY, Clavier, dispositif de saisie, outil', ''),
(112, 'Les raccourcis Mac', 'Bases d\'internet', 'Utilisation système', 'Mac, Macintosh, ordinateur Apple, Raccourci, Raccourci clavier, raccourci d\'accès, Shortcut, Qwerty, Agencement de touches QWERTY, Azerty, Agencement de touches AZERTY, Clavier, dispositif de saisie, outil', ''),
(113, 'Création d’un compte google', 'Bases d\'internet', 'Gestion en ligne', '', './assets/images/miniatures/internet/minia_crea_google.png'),
(114, 'Présentation d’une page web type', 'Bases d\'internet', 'Gestion en ligne', 'Lien, URL, Link, Lien hypertexte, Hyperlink, hyperlien, Onglet, Tabulation, onglette, onglet de navigation', ''),
(115, 'Remplir un formulaire', 'Bases d\'internet', 'Gestion en ligne', 'formulaire, champ, saisie,  champ de saisie, demande, captcha, vérification, champ de saisie, zone de texte, espace de remplissage, champ d’entrée, objet, titre, sujet, intitulé, description, rubrique, authentification, vérification, validation, identification, authentication, identifiant, nom d\'utilisateur, ID, login, username, mot de passe, code secret, clé d\'accès, password, Caractère, Symbole, lettre, chiffre, signe, élément graphique, Chaîne de caractères, Texte, suite de caractères, séquence de caractères', ''),
(116, 'Faire une bonne recherche sur un moteur de recherche', 'Bases d\'internet', 'Gestion en ligne', 'Recherche, Search, recherche en ligne, Moteur de recherche, Mode de recherche, outil de recherche, Search engine, Mot-clé, Terme-clé, expression-clé, Keyword, URL, Adresse web, lien URL, Uniform Resource Locator, Historique, Journal, registre, Onglet, Tabulation, onglette, onglet de navigation', './assets/images/miniatures/internet/minia_moteur_de_recherche.png'),
(117, 'Gestion des cookies', 'Bases d\'internet', 'Gestion en ligne', 'Cookie, Témoin, connexion, suivie, traceur, web', './assets/images/miniatures/internet/minia_gestion_cookies.png'),
(118, 'Faire une capture d’écran', 'Bases d\'internet', 'Utilisation système', '', ''),
(119, 'Numériser un document', 'Bases d\'internet', 'Gestion en ligne', 'Numériser, Scanner, Convertir en format numérique, Digitaliser, Transformer en données numériques, PDF, Format PDF, fichier PDF, Portable Document Format, Numériseur, scanneur, appareil de numérisation', ''),
(120, 'Scan d’un QR code', 'Bases d\'internet', 'Gestion en ligne', 'Qr code, Code QR, code à réponse rapide, Quick Response Code', ''),
(121, 'Les différentes formes de curseur', 'Bases d\'internet', 'Utilisation système', 'Curseur, Pointeur, Indicateur, repère, repère visuel', ''),
(122, 'Les principales extensions', 'Bases d\'internet', 'Utilisation système', '', ''),
(123, 'Les périphériques + composants d’un pc ???????????', 'Bases d\'internet', 'Utilisation système', 'Le matériel informatique, Carte graphique, GPU, carté vidéo, adaptateur graphique, Carte mémoire, carte SD, carte flash, stockage amovible, Carte son, carte audio, périphérique audio, Clavier, dispositif de saisie, outil, CPU, Processeur, unité de traitement, microprocesseur, Unité Centrale de Traitement, Ecran, Moniteur, affichage, ordinateur, Fibre Optique, Câble, câble optique, réseau, réseau optique, transmission, Hôte, Host, serveur, Jack, Connecteur audio, prise jack, Machine, Appareil, dispositif, Matériel informatique, Hardware, composants physiques, Mémoire vive, Random Access Memory (RAM), mémoire système, Microprocesseur, CPU, processeur, Microprocessor, Molette, Roulette, bouton de défilement, Scroll wheel, Moniteur, Écran, afficheur, Monitor, Périphérique, Équipement externe, périphérique informatique, Peripheral, Pixel, Point, élément d\'image, Port USB, Universal Serial Bus, USB port, Souris, Dispositif de pointage, souris d\'ordinateur, pointeur, Mouse, Tactile, Écran tactile, tactile touchscreen, Tablette, Tablette électronique, tablette numérique, tablet, Souris, Dispositif de pointage, souris d\'ordinateur, pointeur, Mouse', ''),
(124, 'Créer un compte Ubiclic', 'Santé', 'Santé en ligne', 'formulaire, champ, saisie,  champ de saisie, demande, captcha, vérification, champ de saisie, zone de texte, espace de remplissage, champ d’entrée, authentification, vérification, validation, identification, authentication, identifiant, nom d\'utilisateur, ID, login, username, mot de passe, code secret, clé d\'accès, password', './assets/images/miniatures/santé/minia_ubiclic.png'),
(125, 'Créer un compte Ameli', 'Santé', 'Santé en ligne', 'formulaire, champ, saisie,  champ de saisie, demande, captcha, vérification, champ de saisie, zone de texte, espace de remplissage, champ d’entrée, authentification, vérification, validation, identification, authentication, identifiant, nom d\'utilisateur, ID, login, username, mot de passe, code secret, clé d\'accès, password', ''),
(126, 'Prendre un rendez-vous sur Doctolib', 'Santé', 'Rendez-vous médical', 'Widget, Gadgets, composant, élément d\'interface', './assets/images/miniatures/santé/minia_doctolib.png'),
(127, 'Effectuer une consultation vidéo sur Doctolib', 'Santé', 'Rendez-vous médical', '', ''),
(128, 'Réaliser des démarches de base sur le site Ameli', 'Santé', 'Santé en ligne', '', ''),
(129, 'Commander ses médicaments en pharmacie en ligne', 'Santé', 'Santé en ligne', '', './assets/images/miniatures/santé/minia_commander_medicaments.png'),
(130, 'Création de mot de passe sécurisé', 'Sécurité', 'Mot de passe', 'Mot de passe, Code secret, clé d\'accès, Password, Authentification, Vérification, validation, identification, Authentication, Gestionnaire de mot de passe, Gestionnaire d’authentification, coffre-fort des mots de passe, password manager, Caractère, Symbole, lettre, chiffre, signe, élément graphique, Chaîne de caractères, Texte, suite de caractères, séquence de caractères, ASCII, Code ASCII, jeu de caractères ASCII', './assets/images/miniatures/sécurité/minia_crea_mdp.png'),
(131, 'Récupérer un mot de passe oublié', 'Sécurité', 'Mot de passe', 'Mot de passe, Code secret, clé d\'accès, Password, Authentification, Vérification, validation, identification, Authentication, Gestionnaire de mot de passe, Gestionnaire d’authentification, coffre-fort des mots de passe, password manager, Caractère, Symbole, lettre, chiffre, signe, élément graphique, Chaîne de caractères, Texte, suite de caractères, séquence de caractères, ASCII, Code ASCII, jeu de caractères ASCII', './assets/images/miniatures/sécurité/tuto_mot_de_passe.png'),
(132, 'Sensibilisation aux menaces en ligne', 'Sécurité', 'Se protéger en ligne', 'Hameçonnage, Filoutage, Phishing, Antivirus, Logiciel de sécurité, programme antivirus, Blacklist, Liste noir, répertoire d’exclusion, index négatif Cybersécurité, Sécurité, informatique, protection, défense, Pirate informatique, Pare-feu, coupe-feu, Firewall, Vulnérabilité, Faille de sécurité, point faible, vulnerability, Logiciel malveillant, Malware, programme malveillant, Virus, malware, Clickbait, contenu accrocheur, appât, Cryptographie, Chiffrement, codage, science, code, code-secret', './assets/images/miniatures/sécurité/minia_sensibiliser_menaces.png'),
(133, 'Navigation sécurisée sur internet', 'Sécurité', 'Se protéger en ligne', 'Recherche, Search, recherche en ligne, Moteur de recherche, Mode de recherche, outil de recherche, Search engine, Mot-clé, Terme-clé, expression-clé, Keyword, HTTP, Hypertext Transfer Protocol, Protocole de transfert hypertexte, Clickbait, contenu accrocheur, appât, Cryptographie, Chiffrement, codage, science, code, code-secret', './assets/images/miniatures/sécurité/minia_navigation_secure.png'),
(134, 'Gestion des comptes en ligne', 'Sécurité', 'Se protéger en ligne', '', ''),
(135, 'Sécurité des achats en ligne', 'Sécurité', 'Se protéger en ligne', 'Télépaiement, Paiement en ligne, paiement électronique, paiement à distance, online payment', ''),
(136, 'Sécurité des réseaux sociaux (les bonnes habitudes)', 'Sécurité', 'Se protéger en ligne', 'Cyberharcèlement, Harcèlement, intimidation, cyberintimidation', ''),
(137, 'Consultation et usage d’une boîte mail', 'Communication', 'Mail et messagerie', 'Mail, Courrier électronique, E-mail, message électronique, courriel, objet, titre, sujet, intitulé, description, rubrique', './assets/images/miniatures/communication/minia_boite_mail.png'),
(138, 'Joindre un fichier par mail', 'Communication', 'Mail et messagerie', 'Mail, Courrier électronique, E-mail, message électronique, courriel, objet, titre, sujet, intitulé, description, rubrique', './assets/images/miniatures/internet/minia_joindre_fichier.png'),
(139, 'Utiliser une plateforme de communication à distance (Zoom etc…)', 'Communication', 'Visioconférence', 'Visioconférence, Conférence vidéo, vidéoconférence, visioconférence, video conference, Présentation, Exposé, Discours, Exposition, diapositive, diapo, Présentation visuelle, Webcam, Caméra web, caméra Internet', ''),
(140, 'Utilisation de TeamViewer', 'Communication', '?', '', ''),
(141, 'Faire un post Instagram', 'Communication', 'Réseaux Sociaux', 'Buzz, Célèbre, Troll, Provocateur, agitateur, Tweet, Message Twitter, publication, Follower, Abonné, suiveur, Fan, Emoji, émoticône, pictogramme, Influenceur, Personne influente, leader d\'opinion, influenceur numérique, Influencer, Hashtag, Mot-clic, mot-dièse, Réseau social, Media social, site de réseautage social, Commentaire, Remarque, observation, note, réaction', ''),
(142, 'Trouver un truc lié aux messages (ex : programmer un message)', 'Communication', 'Mail et messagerie', 'Chat, Messagerie instantanée, discussion en ligne, tchat, GIF, Format graphique interchange, Format d\'image animée, Graphics Interchange Format, format d’échange d’images, Messagerie, Service de messagerie, système de messagerie, Messaging, SMS, Texto, message texte, texto, Short Message Service', ''),
(143, 'Créer un compte CAF', 'Administratif', 'Création de compte', 'formulaire, champ, saisie,  champ de saisie, demande, captcha, vérification, champ de saisie, zone de texte, espace de remplissage, champ d’entrée, authentification, vérification, validation, identification, authentication, identifiant, nom d\'utilisateur, ID, login, username, mot de passe, code secret, clé d\'accès, password', ''),
(144, 'Créer un compte Pôle Emploi (Emploi Travail)', 'Administratif', 'Création de compte', 'formulaire, champ, saisie,  champ de saisie, demande, captcha, vérification, champ de saisie, zone de texte, espace de remplissage, champ d’entrée, authentification, vérification, validation, identification, authentication, identifiant, nom d\'utilisateur, ID, login, username, mot de passe, code secret, clé d\'accès, password', ''),
(145, 'Créer un compte sur impôt.gouv.fr', 'Administratif', 'Création de compte', 'formulaire, champ, saisie,  champ de saisie, demande, captcha, vérification, champ de saisie, zone de texte, espace de remplissage, champ d’entrée, authentification, vérification, validation, identification, authentication, identifiant, nom d\'utilisateur, ID, login, username, mot de passe, code secret, clé d\'accès, password', ''),
(146, 'Créer un compte ANTS', 'Administratif', 'Création de compte', 'formulaire, champ, saisie,  champ de saisie, demande, captcha, vérification, champ de saisie, zone de texte, espace de remplissage, champ d’entrée, authentification, vérification, validation, identification, authentication, identifiant, nom d\'utilisateur, ID, login, username, mot de passe, code secret, clé d\'accès, password', './assets/images/miniatures/administratif/minia_crea_ants.png'),
(147, 'Prendre un rendez-vous avec sa CAF', 'Administratif', 'Prendre un rendez-vous', 'Widget, Gadgets, composant, élément d\'interface', ''),
(148, 'Prendre un rendez-vous avec Pôle Emploi', 'Administratif', 'Prendre un rendez-vous', 'Widget, Gadgets, composant, élément d\'interface', ''),
(149, 'Réviser avec votre enfant', 'Éducation', 'Pour les enfants', 'E-learning, Apprentissage, apprentissage en ligne, formation, formation à distance, enseignement, enseignement virtuel', './assets/images/miniatures/éducation/tuto_reviser.png'),
(150, 'Utilisation et fonctionnement de parcoursup', 'Éducation', 'Pour les enfants', '', './assets/images/miniatures/éducation/minia_parcoursup.png'),
(151, 'Accéder à l’ENT', 'Éducation', 'Pour les enfants', 'ENT, plateforme, éducation, espace, espace numérique, Environnement Numérique de Travail, E-learning, Apprentissage, apprentissage en ligne, formation, formation à distance, enseignement, enseignement virtuel', '');

-- --------------------------------------------------------

--
-- Structure de la table `ressource_type`
--

CREATE TABLE `ressource_type` (
  `id_ressource_type` int(11) NOT NULL,
  `ressource_id` int(11) NOT NULL,
  `titre_video` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `ressource_type`
--

INSERT INTO `ressource_type` (`id_ressource_type`, `ressource_id`, `titre_video`, `video`) VALUES
(1, 126, 'Prendre un rendez-vous sur Doctolib', './assets/vidéos/tuto_compte_doctolib-.mp4'),
(2, 105, 'Créer un dossier Mac', './assets/vidéos/tuto_compte_doctolib-.mp4');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etape`
--
ALTER TABLE `etape`
  ADD PRIMARY KEY (`id_etape`),
  ADD KEY `ressource_type_id` (`ressource_type_id`);

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
-- Index pour la table `ressource_type`
--
ALTER TABLE `ressource_type`
  ADD PRIMARY KEY (`id_ressource_type`),
  ADD KEY `ressource_id` (`ressource_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etape`
--
ALTER TABLE `etape`
  MODIFY `id_etape` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `glossaire`
--
ALTER TABLE `glossaire`
  MODIFY `Id_glossaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT pour la table `ressource`
--
ALTER TABLE `ressource`
  MODIFY `Id_ressource` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT pour la table `ressource_type`
--
ALTER TABLE `ressource_type`
  MODIFY `id_ressource_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etape`
--
ALTER TABLE `etape`
  ADD CONSTRAINT `etape_ibfk_1` FOREIGN KEY (`ressource_type_id`) REFERENCES `ressource_type` (`id_ressource_type`);

--
-- Contraintes pour la table `ressource_type`
--
ALTER TABLE `ressource_type`
  ADD CONSTRAINT `ressource_type_ibfk_1` FOREIGN KEY (`ressource_id`) REFERENCES `ressource` (`Id_ressource`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
