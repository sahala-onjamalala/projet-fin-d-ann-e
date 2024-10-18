-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 28 sep. 2024 à 15:01
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
-- Base de données : `mlr3`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `ID_JOUEUR` int(2) NOT NULL,
  `ID_QUESTION` int(2) NOT NULL,
  `USER_RESPONSE` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `competition`
--

CREATE TABLE `competition` (
  `ID_COMPETITION` int(2) NOT NULL,
  `NB_PLAYER` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `level`
--

CREATE TABLE `level` (
  `ID_TOPIC` int(2) NOT NULL,
  `CODE_LEVEL` int(4) NOT NULL,
  `LIBELLE_LEVEL` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `level`
--

INSERT INTO `level` (`ID_TOPIC`, `CODE_LEVEL`, `LIBELLE_LEVEL`) VALUES
(1, 11, 'Facile'),
(1, 12, 'Moyen'),
(1, 13, 'Difficile'),
(2, 21, 'Facile'),
(2, 22, 'Moyen'),
(2, 23, 'Difficile'),
(3, 31, 'Facile'),
(3, 32, 'Moyen'),
(3, 33, 'Difficile'),
(4, 41, 'Facile'),
(4, 42, 'Moyen'),
(4, 43, 'Difficile'),
(5, 51, 'Facile'),
(5, 52, 'Moyen'),
(5, 53, 'Difficile'),
(6, 61, 'Facile'),
(6, 62, 'Moyen'),
(6, 63, 'Difficile');

-- --------------------------------------------------------

--
-- Structure de la table `participate`
--

CREATE TABLE `participate` (
  `ID_COMPETITION` int(2) NOT NULL,
  `ID_JOUEUR` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `player`
--

CREATE TABLE `player` (
  `ID_JOUEUR` int(2) NOT NULL,
  `ID_TOPIC` int(2) NOT NULL,
  `CODE_LEVEL` int(4) NOT NULL,
  `ID_SCORE` int(2) NOT NULL,
  `NAME` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `ID_QUESTION` int(2) NOT NULL,
  `ID_TOPIC` int(2) NOT NULL,
  `CODE_LEVEL` int(4) NOT NULL,
  `QUESTION_TEXT` char(255) DEFAULT NULL,
  `CORRECT_ANSWER` char(32) DEFAULT NULL,
  `WRONG_ANSWER1` char(32) DEFAULT NULL,
  `WRONG_ANSWER2` char(32) DEFAULT NULL,
  `WRONG_ANSWER3` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`ID_QUESTION`, `ID_TOPIC`, `CODE_LEVEL`, `QUESTION_TEXT`, `CORRECT_ANSWER`, `WRONG_ANSWER1`, `WRONG_ANSWER2`, `WRONG_ANSWER3`) VALUES
(1, 1, 11, 'Quel est le plus long fleuve du monde ?', 'Nil', 'Amazone', 'Mississippi', 'Yangzi Jiang'),
(2, 1, 11, 'Quelle est la capitale de l’Espagne ?', 'Madrid', ' Lisbonne', 'Barcelone', 'Séville'),
(3, 1, 11, 'Combien y a-t-il d\'océans dans le monde ?', '5', '2', '7', '3'),
(4, 1, 11, 'Quel pays est connu pour ses pyramides anciennes ?', 'Égypte', 'Grèce', 'Inde', 'Italie'),
(5, 1, 11, 'Quel est le plus grand océan de la planète ?', 'Pacifique', 'Indien', 'Atlantique', 'Arctique'),
(6, 1, 11, 'Quel est le plus petit pays du monde ?', 'Vatican', 'Monaco', 'Saint-Marin', 'Andorre'),
(7, 1, 11, 'Quel continent est l\'Australie ?', ' Océanie', 'Asie', 'Afrique', 'Amérique du Sud'),
(8, 1, 11, 'Combien de planètes gravitent autour du Soleil ?', '8', '7', '9', '10'),
(9, 1, 11, 'Combien de temps met la Terre pour faire un tour complet autour du Soleil ?', '1 an', '1 mois', '6 mois', '2 ans'),
(10, 1, 11, 'Quel pays a pour capitale Rome ?', 'Italie', 'France', 'Grèce', 'Espagne'),
(11, 1, 11, 'Quel est le plus haut sommet du monde ?', 'Mont Everest', 'Mont Blanc', 'Mont Kilimandjaro', 'Mont Fuji'),
(12, 1, 11, 'Quel animal est le plus rapide sur terre ?', 'Guépard', 'Léopard', ' Lion', 'Cheval'),
(13, 1, 11, 'Quelle est la langue la plus parlée dans le monde ?', 'Chinois', 'Espagnol', 'Anglais', 'Français'),
(14, 1, 11, 'Quel est le pays le plus peuplé du monde ?', 'Chine', 'Inde', 'États-Unis', 'Russie'),
(15, 1, 11, 'Quelle mer se trouve entre l\'Europe et l\'Afrique ?', 'Mer Méditerranée', 'Mer Noire', 'Mer Rouge', 'Mer de Chine'),
(16, 1, 11, 'Quel est le plus grand désert du monde ?', 'Antarctique', 'Sahara', 'Désert de Gobi', 'Kalahari'),
(17, 1, 11, 'Quel est l\'animal national de la Chine ?', 'Panda', 'Lion', 'Tigre', 'Ours'),
(18, 1, 11, 'Dans quel pays peut-on visiter la Tour Eiffel ?', 'France', 'Italie', 'Espagne', 'Allemagne'),
(19, 1, 11, 'Dans quel pays se trouve la Statue de la Liberté ?', 'États-Unis', 'Italie', 'France', 'Brésil'),
(20, 1, 11, 'Combien dure une décennie ?', '10ans', '20ans', '50ans', '100ans'),
(21, 2, 21, 'Combien de joueurs y a-t-il dans une équipe de football ?', '11', '10', '12', '13'),
(22, 2, 21, 'Combien de points vaut un but au football ?', '1', '2', '3', '4'),
(23, 2, 21, 'Dans quel sport joue Lionel Messi ?', 'Football', 'Tennis', 'Basket', 'Athlétisme'),
(24, 2, 21, 'Combien de sets sont joués dans un match de tennis (hommes) ?', '5', '3', '7', '9'),
(25, 2, 21, 'Quelle équipe a remporté la Coupe du Monde de football 2014 ?', 'Allemagne', 'Brésil', 'France', 'Argentine'),
(26, 2, 21, 'Quel sport est associé à Michael Jordan ?', 'Basket-ball', 'Football', 'Tennis', 'Rugby'),
(27, 2, 21, 'Quel sport est pratiqué sur un terrain de 22 joueurs ?', 'Football', 'Tennis', 'Basket', 'Handball'),
(28, 2, 21, 'Combien de points vaut un panier au basket-ball ?', '2', '1', '3', '4'),
(29, 2, 21, 'Combien de joueurs dans une équipe de basket-ball sur le terrain ?', '5', '4', '6', '7'),
(30, 2, 21, 'Dans quel sport utilise-t-on une raquette ?', 'Tennis', 'Football', 'Basket', 'Rugby'),
(31, 2, 21, 'Combien de périodes dans un match de hockey sur glace ?', '3', '4', '2', '5'),
(32, 2, 21, 'Quel sport est joué aux Jeux Olympiques d’hiver ?', 'Ski', 'Football', 'Natation', 'Tennis'),
(33, 2, 21, 'Quel sport utilise des batons et une petite balle blanche ?', 'Cricket', 'Football', 'Natation', 'Tennis'),
(34, 2, 21, 'Qui a gagné le championnat du monde de Formule 1 en 2020 ?', ' Lewis Hamilton', 'Max Verstappen', 'Sebastian Vettel', 'Charles Leclerc'),
(35, 2, 21, 'Dans quel sport peut-on entendre le terme \'ace\' ?', 'Tennis', 'Basket', 'Rugby', 'Athlétisme'),
(36, 2, 21, 'Dans quel sport peut-on faire un ‘trike’?', 'Bowling', 'Football', 'Rugby', 'Tennis'),
(37, 2, 21, 'Qui a remporté la Coupe du Monde de football 1998 ?', 'France', 'Brésil', 'Allemagne', 'Argentine'),
(38, 2, 21, 'Quel sport se joue sur l’herbe avec une balle et une raquette ?', 'Tennis', 'Football', 'Golf', 'Rugby'),
(39, 2, 21, 'Combien de points vaut un touchdown au football américain ?', '6', '4', '5', '7'),
(40, 2, 21, 'Dans quel sport utilise-t-on un filet et une balle ?', 'Tennis', 'Rugby', 'Football', 'Basket'),
(41, 3, 31, 'Combien font 3 + 4 ?', '7', '5', '6', '8'),
(42, 3, 31, 'Combien font 9 × 3 ?', '27', '18', '21', '30'),
(43, 3, 31, 'Combien font 15 ÷ 3 ?', '5', '4', '6', '7'),
(44, 3, 31, 'Quel est le carré de 6 ?', '36', '30', '32', '40'),
(45, 3, 31, 'Quelle est la valeur de 100 ÷ 25 ?', '4', '2', '3', '5'),
(46, 3, 31, 'Quelle est la racine carrée de 81 ?', '9', '7', '8', '10'),
(47, 3, 31, 'Combien font 8 + 5 ?', '13', '11', '11', '14'),
(48, 3, 31, 'Combien font 2 × 12 ?', '24', '20', '22', '26'),
(49, 3, 31, 'Combien font 6 × 7 ?', '42', '36', '45', '49'),
(50, 3, 31, 'Combien font 18 ÷ 6 ?', '3', '2', '4', '5'),
(51, 3, 31, 'Combien de côtés a un carré ?', '4', '3', '5', '6'),
(52, 3, 31, 'Combien font 6 × 6 ?', '36', '30', '32', '40'),
(53, 3, 31, 'Combien font 45 ÷ 5 ?', '9', '7', '8', '10'),
(54, 3, 31, 'Combien font 12 + 12 ?', '24', '20', '22', '26'),
(55, 3, 31, 'Combien de côtés a un triangle ?', '3', '2', '4', '5'),
(56, 3, 31, 'Quel est le chiffre des unités dans 237 ?', '7', '3', '2', '9'),
(57, 3, 31, 'Combien font 25 + 15 ?', '40', '35', '45', '50'),
(58, 3, 31, 'Combien de centimètres y a-t-il dans un mètre ?', '100', '1000', '10', '10000'),
(59, 3, 31, 'Combien de degrés dans un angle droit ?', '90', '30', '60', '120'),
(60, 3, 31, 'Quel est le triple de 5 ?', '15', '10', '20', '25'),
(61, 4, 41, 'De quoi est principalement composée l\'eau ?', 'Hydrogène et Oxygène', 'Carbone et Azote', 'Fer et Soufre', 'Sodium et Chlore'),
(62, 4, 41, 'Combien de planètes composent le système solaire ?', '8', '7', '9', '10'),
(63, 4, 41, 'Quelle est la planète la plus proche du Soleil ?', 'Mercure', 'Vénus', 'Mars', 'Terre'),
(64, 4, 41, 'Quel est le symbole chimique de l\'eau ?', 'H₂O', 'O', 'CO₂', 'O₃'),
(65, 4, 41, 'Qui a découvert la gravité en voyant une pomme tomber d’un arbre ?', ' Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Stephen Hawking'),
(66, 4, 41, 'Quel organe du corps humain pompe le sang ?', 'Le cœur', 'Le foie', 'Les poumons', 'Le cerveau'),
(67, 4, 41, 'Quelle est la planète surnommée la *planète rouge*?', 'Mars', 'Mercure', 'Saturne', 'Jupiter'),
(68, 4, 41, 'Quel est l\'élément chimique dont le symbole est O ?', 'Oxygène', 'Or', 'Osmium', 'Hydrogène'),
(69, 4, 41, 'Quel gaz est nécessaire à la respiration humaine ?', 'Oxygène', 'Azote', 'Hélium', 'Hydrogène'),
(70, 4, 41, 'Quelle est l\'étoile la plus proche de la Terre ?', 'Le Soleil', 'Proxima du Centaure', 'Sirius', 'Bételgeuse'),
(71, 4, 41, 'Comment appelle-t-on les scientifiques qui étudient les étoiles ?', 'Astronomes', 'Géologues', 'Botanistes', 'Chimistes'),
(72, 4, 41, 'Quelle est la formule chimique du dioxyde de carbone ?', 'CO₂', 'CO', 'O₂', 'H₂O'),
(73, 4, 41, 'Quelle partie du corps humain contient l\'iris et la rétine ?', 'L\'œil', ' L\'oreille', 'La bouche', 'Le nez'),
(74, 4, 41, 'Quelle est la force qui nous maintient au sol ?', 'Gravité', 'Magnétisme', 'Friction', 'Tension'),
(75, 4, 41, 'Quelle est la substance qui transporte l\'oxygène dans le sang ?', 'L\'hémoglobine', 'L\'eau', 'Le glucose', 'Le plasma'),
(76, 4, 41, 'Quel type de roche est formé par la lave des volcans ?', 'Ignée', 'Métamorphique', 'Sédimentaire', 'Cristalline'),
(77, 4, 41, 'Quelle est la vitesse de la lumière dans le vide ?', '300 000 km/s', '150 000 km/s', '500 000 km/s', '1 000 000 km/s'),
(78, 4, 41, 'Quel organe est principalement responsable de la digestion ?', 'L\'estomac', 'Le cerveau', 'Les reins', 'Les poumons'),
(79, 4, 41, 'Quel est l\'état de la matière pour l\'eau à 100°C à pression atmosphérique ?', 'Gazeux', 'Solide', 'Liquide', 'Plasma'),
(80, 4, 41, 'Quel est le plus grand organe du corps humain ?', 'La peau', 'Le foie', 'Le cœur', 'Le cerveau'),
(81, 5, 51, 'Combien de cordes possède une guitare classique ?', '6', '4', '8', '12'),
(82, 5, 51, 'Qui est le chanteur du groupe *The Beatles* ?', 'John Lennon', 'Mick Jagger', 'Freddie Mercury', 'David Bowie'),
(83, 5, 51, 'Quel instrument de musique est souvent associé au jazz ?', 'Le saxophone', 'La guitare', 'Le violon', 'Le tambour'),
(84, 5, 51, 'Quelle chanteuse est connue pour sa chanson *Single Ladies* ?', 'Beyoncé', 'Rihanna', 'Taylor Swift', 'Adele'),
(85, 5, 51, 'Quel est le prénom de Mozart ?', 'Wolfgang', 'Ludwig', 'Johann', 'Franz'),
(86, 5, 51, 'Dans quel pays est né le reggae ?', 'Jamaïque', 'États-Unis', 'Brésil', 'Angleterre'),
(87, 5, 51, 'Quel groupe a interprété la chanson *Bohemian Rhapsody* ?', 'Queen', 'Led Zeppelin', 'The Rolling Stones', 'Pink Floyd'),
(88, 5, 51, 'Quel instrument utilise-t-on pour jouer du piano ?', 'Les touches', ' Les baguettes', 'Les cordes', 'Les clapets'),
(89, 5, 51, 'Quelle est la note de musique située entre la note do et mi ?', 'Ré', 'Fa', 'Sol', 'Si'),
(90, 5, 51, 'Quel artiste a popularisé le moonwalk ?', 'Michael Jackson', 'Prince', 'Elvis Presley', 'Justin Timberlake'),
(91, 5, 51, 'Quelle chanteuse est surnommée la *Reine de la Pop* ?', 'Madonna', 'Whitney Houston', 'Celine Dion', 'Mariah Carey'),
(92, 5, 51, 'Quel instrument de musique est joué par Yo-Yo Ma ?', 'Le violoncelle', 'Le violon', 'Le piano', 'La guitare'),
(93, 5, 51, 'Quel compositeur a écrit la symphonie *La Flûte Enchantée* ?', 'Mozart', 'Beethoven', 'Vivaldi', 'Tchaïkovski'),
(94, 5, 51, 'Quel genre musical est associé à Bob Marley ?', 'Reggae', 'Rock', 'Jazz', 'Hip-hop'),
(95, 5, 51, 'Dans quel groupe Freddie Mercury était-il le chanteur ?', 'Queen', 'Led Zeppelin', 'The Beatles', 'The Rolling Stones'),
(96, 5, 51, 'Quel est le genre musical le plus associé au tango ?', 'Tango', 'Jazz', 'Classique', 'Hip-hop'),
(97, 5, 51, 'Quelle chanteuse a interprété la chanson *Hello* ?', 'Adele', 'Beyonce', 'Lady Gaga', 'Taylor Swift'),
(98, 5, 51, 'Quel instrument est principalement utilisé dans le blues ?', 'Guitare', 'Trompette', 'Harpe', 'Violon'),
(99, 5, 51, 'Quel est le symbole qui représente la clef de sol ?', 'G', '♩', '♭', 'C'),
(100, 5, 51, 'Quel genre musical est associé à Frank Sinatra ?', 'Jazz', 'Rock', 'Rap', 'Country'),
(101, 6, 61, 'Qui a réalisé le film \'Titanic\' ?', 'James Cameron', 'Steven Spielberg', 'George Lucas', 'Martin Scorsese'),
(102, 6, 61, 'Quel acteur joue le rôle de Jack Sparrow dans \'Pirates des Caraïbes\' ?', 'Johnny Depp', 'Brad Pitt', 'Orlando Bloom', 'Tom Cruise'),
(103, 6, 61, 'Dans quel film peut-on entendre la chanson *Let it Go* ?', 'La Reine des Neiges', 'Raiponce', 'Moana', 'Le Roi Lion'),
(104, 6, 61, 'Quel est le nom du robot dans *Star Wars* qui parle 6 millions de langues ?', 'C-3PO', 'R2-D2', 'BB-8', 'K-2SO'),
(105, 6, 61, 'Dans quel film Tom Hanks est-il bloqué sur une île déserte ?', 'Seul au monde', 'Forrest Gump', 'Apollo 13', 'Philadelphia'),
(106, 6, 61, 'Qui joue le rôle principal dans *Gladiator* ?', 'Russell Crowe', 'Tom Hardy', 'Leonardo DiCaprio', 'Brad Pitt'),
(107, 6, 61, 'Quel film est une adaptation d\'une série de livres de J.R.R. Tolkien ?', '*Le Hobbit*', '*Harry Potter*', '*Chroniques de Narnia*', '*Percy Jackson*'),
(108, 6, 61, 'Qui est l\'acteur principal du film *John Wick* ?', 'Keanu Reeves', 'Bruce Willis', 'Tom Cruise', 'Matt Damon'),
(109, 6, 61, 'Quel film d\'animation présente une voiture de course nommée Flash McQueen ?', 'Cars', 'Les Indestructibles', 'Toy Story', 'Monstres et Cie'),
(110, 6, 61, 'Dans quel film voit-on un requin terroriser une plage ?', 'Les Dents de la mer', 'Jurassic Park', 'Crocodile Dundee', 'King Kong'),
(111, 6, 61, 'Quel acteur joue Iron Man dans le MCU (Marvel Cinematic Universe) ?', 'Robert Downey Jr.', 'Chris Evans', ' Chris Hemsworth', 'Tom Holland'),
(112, 6, 61, 'Quel est le premier film d’animation Disney ?', 'Blanche-Neige et les Sept Nains', 'Cendrillon', 'Pinocchio', 'Le Roi Lion'),
(113, 6, 61, 'Quel film a remporté l\'Oscar du meilleur film en 2021 ?', 'Nomadland', 'Joker', '1917', 'Once Upon a Time in Hollywood'),
(114, 6, 61, 'Quel film présente un adolescent qui voyage dans le temps à bord d’une DeLorean ?', 'Retour vers le futur', 'Men in Black', 'Matrix', 'Terminator'),
(115, 6, 61, 'Quel est le film avec l\'extraterrestre E.T. ?', 'E.T. l\'extra-terrestre', 'Alien', 'Star Wars', 'Independence Day'),
(116, 6, 61, 'Qui joue James Bond dans *Casino Royale* (2006) ?', 'Daniel Craig', 'Pierce Brosnan', 'Sean Connery', 'Roger Moore'),
(117, 6, 61, 'Quel est le film où Tom Cruise incarne un pilote de chasse nommé Maverick ?', 'Top Gun', 'Mission Impossible', 'Minority Report', 'Jack Reacher'),
(118, 6, 61, 'Quel est le nom du sorcier joué par Ian McKellen dans *Le Seigneur des Anneaux* ?', 'Gandalf', 'Dumbledore', 'Saroumane', 'Voldemort'),
(119, 6, 61, 'Quel film présente un personnage géant nommé King Kong ?', 'King Kong', 'Godzilla', 'Jurassic Park', 'Pacific Rim'),
(120, 6, 61, 'Dans quel film Leonardo DiCaprio joue un arnaqueur dans les années 1960 ?', 'Arrête-moi si tu peux', 'Inception', 'Le Loup de Wall Street', 'Aviator'),
(121, 1, 12, 'Quel pays est connu pour la Tour Eiffel ?', 'France', 'Allemagne', 'Italie', 'Espagne'),
(122, 1, 12, 'Quel est le plus long fleuve du monde ?', 'Le Nil', 'L\'Amazone', 'Le Mississippi', 'Le Yangzi Jiang'),
(123, 1, 12, 'Qui a écrit *Roméo et Juliette* ?', 'William Shakespeare', 'Victor Hugo', 'Léon Tolstoï', 'Charles Dickens'),
(124, 1, 12, 'Quel est le pays d’origine de la pizza ?', 'Italie', 'Grèce', 'France', 'Espagne'),
(125, 1, 12, 'Quelle est la capitale du Japon ?', 'Tokyo', 'Pékin', 'Séoul', 'Kyoto'),
(126, 1, 12, 'Quel est le plus grand océan de la planète ?', 'L\'océan Pacifique', ' L\'océan Atlantique', 'L\'océan Indien', 'L\'océan Arctique'),
(127, 1, 12, 'Quel pays est surnommé *le pays du Soleil levant* ?', 'Le Japon', 'La Chine', 'La Corée du Sud', 'La Thaïlande'),
(128, 1, 12, 'Quelle est la monnaie utilisée au Royaume-Uni ?', 'Livre sterling', 'Euro', 'Dollar', 'Yen'),
(129, 1, 12, 'En quelle année l’homme a-t-il marché sur la Lune pour la première fois ?', '1969', '1965', '1972', '1963'),
(130, 1, 12, 'Quel est le plus grand désert du monde ?', 'Antarctique', 'Gobi', 'Sahara', 'Désert d\'Arabie'),
(131, 1, 12, 'Quel est le plus grand mammifère terrestre ?', 'Éléphant', 'Baleine bleue', 'Rhinocéros', 'Girafe'),
(132, 1, 12, 'Qui est le fondateur de Microsoft ?', 'Bill Gates', 'Steve Jobs', 'Mark Zuckerberg', 'Jeff Bezos'),
(133, 1, 12, 'Quel est le sport national du Canada ?', 'Le hockey sur glace', 'Le basket-ball', 'Le rugby', 'Le baseball'),
(134, 1, 12, 'Quelle est la capitale du Canada ?', 'Ottawa', 'Toronto', 'Vancouver', 'Montréal'),
(135, 1, 12, 'Quel est le plus petit continent ?', 'L\'Australie', 'L\'Europe', 'L\'Antarctique', 'L\'Asie'),
(136, 1, 12, 'Dans quel pays se trouve le Taj Mahal ?', 'Inde', 'Pakistan', 'Bangladesh', 'Népal'),
(137, 1, 12, 'Quel est le plus grand pays du monde en superficie ?', 'Russie', 'États-Unis', 'Chine', 'Canada'),
(138, 1, 12, 'Quel auteur a écrit *Les Misérables* ?', 'Victor Hugo', 'Alexandre Dumas', 'Charles Baudelaire', 'Gustave Flaubert'),
(139, 1, 12, 'Quelle langue est principalement parlée au Brésil ?', 'Portugais', 'Espagnol', 'Français', 'Anglais'),
(140, 1, 12, 'Quel est le symbole chimique de l\'or ?', 'Au', 'Ag', 'Fe', 'Cu'),
(141, 2, 22, 'Quel pays a remporté la Coupe du Monde de la FIFA 2022 ?', 'Argentine', 'Croatie', 'Brésil', 'France'),
(142, 2, 22, 'Combien de joueurs composent une équipe de rugby à XV ?', '15', '13', '18', '11'),
(143, 2, 22, 'Quel joueur de basket est surnommé *King James* ?', 'LeBron James', 'Kobe Bryant', 'Michael Jordan', 'Shaquille O\'Neal'),
(144, 2, 22, 'Combien de manches doit-on gagner pour remporter un match de tennis en Grand Chelem chez les hommes ?', '3', '2', '4', '5'),
(145, 2, 22, 'Quel sport utilise le terme *home run* ?', 'Base-ball', 'Cricket', 'Football américain', 'Hockey'),
(146, 2, 22, 'Dans quel sport trouve-t-on les termes *birdie* et *eagle* ?', 'Golf', 'Tennis', 'Cricket', 'Badminton'),
(147, 2, 22, 'Quel est le pays d\'origine des Jeux olympiques ?', 'Grèce', 'Italie', 'Égypte', 'États-Unis'),
(148, 2, 22, 'Qui détient le record du monde féminin du 100 mètres ?', 'Florence Griffith-Joyner', 'Marion Jones', 'Shelly-Ann Fraser-Pryce', 'Allyson Felix'),
(149, 2, 22, 'Combien de tours un coureur effectue-t-il lors d\'un marathon ?', 'Aucun', '1 tour', '2 tours', '3 tours'),
(150, 2, 22, 'Quel pays a accueilli les Jeux olympiques d\'été de 2016 ?', 'Brésil', 'Japon', 'Chine', 'Grèce'),
(151, 2, 22, 'Combien de trous y a-t-il dans une partie de golf standard ?', '18', '9', '12', '24'),
(152, 2, 22, 'Quel joueur a remporté le plus de titres de NBA ?', 'Bill Russell', 'Michael Jordan', 'Kareem Abdul-Jabbar', 'Shaquille O\'Neal'),
(153, 2, 22, 'Quel sport se pratique avec une raquette et un volant ?', 'Badminton', 'Tennis', 'Squash', 'Tennis de table'),
(154, 2, 22, 'Quel nageur a remporté 8 médailles d\'or lors des Jeux olympiques de Pékin en 2008 ?', 'Michael Phelps', ' Ryan Lochte', 'Ian Thorpe', 'Mark Spitz'),
(155, 2, 22, 'Qui est surnommé *le Roi Pelé* ?', 'Pelé', ' Diego Maradona', 'Johan Cruyff', 'Ronaldinho'),
(156, 2, 22, 'Combien de sets faut-il gagner pour remporter un match de volley-ball ?', '3', '2', '4', '5'),
(157, 2, 22, 'Dans quelle ville se trouve le célèbre circuit de F1 appelé *Monaco* ?', 'Monte-Carlo', 'Silverstone', 'Melbourne', 'Barcelone'),
(158, 2, 22, 'Quel pays détient le record du plus grand nombre de victoires en Coupe du Monde de football ?', 'Brésil', 'Allemagne', 'Argentine', 'Italie'),
(159, 2, 22, 'Quel joueur de football est surnommé *CR7* ?', 'Cristiano Ronaldo', 'Lionel Messi', 'Neymar Jr', 'Karim Benzema'),
(160, 2, 22, 'Qui a remporté le coupe de monde du foot en 2018?', 'France', 'Argentine', 'Brésil', 'Portugal'),
(161, 3, 32, 'Combien vaut 7³ ?', '343', '49', '21', '729'),
(162, 3, 32, 'Quelle est la valeur de cos(90°) ?', '0', '1', '-1', '0,5'),
(163, 3, 32, 'Quel est le résultat de 25 % de 80 ?', '20', '10', '15', '25'),
(164, 3, 32, 'Si un triangle a deux côtés égaux, comment l\'appelle-t-on ?', 'Isocèle', 'Équilatéral', 'Scalène', 'Rectangle'),
(165, 3, 32, 'Quel est le résultat de (5 + 3)² ?', '64', '40', '36', '16'),
(166, 3, 32, 'Quelle est la dérivée de sin(x) ?', 'cos(x)', '-cos(x)', 'sin(x)', '-sin(x)'),
(167, 3, 32, 'Combien de diagonales possède un hexagone régulier ?', '15', '6', '9', '12'),
(168, 3, 32, 'Si f(x) = x² + 2x, quelle est la valeur de f\'(x) ?', '2x + 2', '2x', 'x² + 2x', '2'),
(169, 3, 32, 'Quel est le volume d\'un cube de côté 4 cm ?', '64 cm³', '16 cm³', '32 cm³', '128 cm³'),
(170, 3, 32, 'Quelle est la somme des angles intérieurs d\'un pentagone ?', '540°', '360°', '720°', '900°'),
(171, 3, 32, 'Que vaut log₁₀(100) ?', '2', '10', '1', '100'),
(172, 3, 32, 'Quel est le produit scalaire de deux vecteurs orthogonaux ?', '0', '-1', '2', '1'),
(173, 3, 32, 'Comment s’appelle un polygone à 8 côtés ?', 'Octogone', 'Heptagone', 'Hexagone', 'Dodécagone'),
(174, 3, 32, 'Que vaut 3⁵ ?', '729', '81', '243', '1024'),
(175, 3, 32, 'Si une fonction f(x) est linéaire, de quelle forme est-elle ?', 'f(x) = ax + b', 'f(x) = x²', 'f(x) = 1/x', 'f(x) = x³'),
(176, 3, 32, 'Quelle est l\'aire d\'un triangle de base 8 cm et de hauteur 5 cm ?', '20 cm²', '40 cm²', '30 cm²', '25 cm²'),
(177, 3, 32, 'Combien vaut la somme des chiffres de 12345 ?', '15', '12', '10', '18'),
(178, 3, 32, 'Quelle est la dérivée de ln(x) ?', '1/x', 'ln(x)', 'e^x', 'x'),
(179, 3, 32, 'Quelle est la médiane des nombres 3, 7, 2, 9, et 5 ?', '5', '7', '9', '3'),
(180, 3, 32, 'Quel est le périmètre d\'un cercle de diamètre 14 cm ? (Utilisez π = 3,14)', '44 cm', '22 cm', '88 cm', '28 cm'),
(181, 4, 42, 'Quel est l\'élément chimique dont le symbole est Fe ?', 'Fer', 'Fluor', 'Phosphore', 'Francium'),
(182, 4, 42, 'Quelle est la planète la plus proche du Soleil ?', 'Mercure', 'Vénus', 'Mars', 'Terre'),
(183, 4, 42, 'Quel est l\'acide présent dans l\'estomac humain ?', 'Acide chlorhydrique', 'Acide sulfurique', 'Acide citrique', 'Acide lactique'),
(184, 4, 42, 'Qui a découvert la radioactivité ?', 'Marie Curie', 'Albert Einstein', 'Isaac Newton', 'Michael Faraday'),
(185, 4, 42, 'Quel est le plus grand organe du corps humain ?', 'Peau', 'Cœur', 'Foie', 'Poumons'),
(186, 4, 42, 'Quelle est la formule chimique de l\'eau ?', 'H₂O', 'CO₂', 'H₂SO₄', 'CH₄'),
(187, 4, 42, 'Quelle est la vitesse de la lumière dans le vide ?', '300 000 km/s', '100 000 km/s', '200 000 km/s', '400 000 km/s'),
(188, 4, 42, 'Quel scientifique a découvert la loi de la gravitation universelle ?', 'Isaac Newton', 'Galileo Galilei', 'Albert Einstein', 'Niels Bohr'),
(189, 4, 42, 'Quel est l\'organe responsable de la production de l\'insuline ?', 'Pancréas', 'Foie', 'Estomac', 'Cerveau'),
(190, 4, 42, 'Qu\'est-ce qu\'un neutron ?', 'Une particule sans charge', ' Une particule chargée négativem', 'Une particule chargée positiveme', 'Une onde'),
(191, 4, 42, 'Quel type de roche est le marbre ?', 'Roche métamorphique', 'Roche sédimentaire', 'Roche ignée', 'Roche éruptive'),
(192, 4, 42, 'Dans quel organe du corps humain se trouvent les alvéoles ?', 'Poumons', 'Cœur', 'Foie', 'Rein'),
(193, 4, 42, 'Quel est l\'élément chimique dont le symbole est Au ?', 'Or', 'Aluminium', 'Argent', 'Actinium'),
(194, 4, 42, 'Quelle est la principale source d\'énergie du Soleil ?', 'Fusion nucléaire', 'Fission nucléaire', 'Réactions chimiques', 'Réactions magnétiques'),
(195, 4, 42, 'Quelle planète est surnommée *la planète rouge* ?', 'Mars', 'Jupiter', 'Saturne', 'Neptune'),
(196, 4, 42, 'Quel organe est principalement affecté par la pneumonie ?', 'Les poumons', 'Le foie', 'Le cœur', 'Le cerveau'),
(197, 4, 42, 'Quel est le groupe sanguin universel donneur ?', 'O-', 'A+', 'B-', 'AB+'),
(198, 4, 42, 'Quel est le nom du premier satellite artificiel envoyé dans l’espace par l’URSS ?', 'Sputnik 1', 'Voyager', 'Apollo 11', 'Mir'),
(199, 4, 42, 'Quel gaz est utilisé dans les panneaux lumineux et les enseignes au néon ?', 'Néon', 'Oxygène', 'Argon', 'Hélium'),
(200, 4, 42, 'Qu\'est-ce que le pH mesure ?', 'L\'acidité ou l\'alcalinité', 'La température', 'La densité', 'La conductivité'),
(201, 5, 52, 'Qui est le compositeur de la célèbre symphonie *La Symphonie n°9* ?', 'Ludwig van Beethoven', 'Wolfgang Amadeus Mozart', 'Johann Sebastian Bach', 'Franz Schubert'),
(202, 5, 52, 'Quel groupe a sorti l’album *The Dark Side of the Moon* ?', 'Pink Floyd', 'The Beatles', 'Led Zeppelin', 'The Rolling Stones'),
(203, 5, 52, 'Quelle est la nationalité du compositeur Frédéric Chopin ?', 'Polonais', 'Français', 'Autrichien', 'Allemand'),
(204, 5, 52, 'Quel genre musical est associé à Bob Marley ?', 'Reggae', 'Jazz', 'Rock', 'Blues'),
(205, 5, 52, 'Quel artiste est connu pour avoir popularisé le *Moonwalk *?', 'Michael Jackson', 'Elvis Presley', 'Prince', 'James Brown'),
(206, 5, 52, 'Quelle chanteuse est surnommée *la reine de la pop* ?', 'Madonna', 'Whitney Houston', 'Beyoncé', 'Lady Gaga'),
(207, 5, 52, 'Quel opéra de Georges Bizet raconte l\'histoire de la gitane Carmen ?', 'Carmen', 'La Traviata', 'Tosca', 'Don Giovanni'),
(208, 5, 52, 'Quel instrument de musique est principalement associé à Louis Armstrong ?', 'Trompette', 'Piano', 'Saxophone', 'Guitare'),
(209, 5, 52, 'Quel est le titre de la chanson thème du film *Titanic*, chantée par Céline Dion ?', 'My Heart Will Go On', 'Because You Loved Me', 'The Power of Love', 'All By Myself'),
(210, 5, 52, 'Quel groupe britannique a popularisé la chanson *Bohemian Rhapsody* ?', 'Queen', 'The Rolling Stones', 'The Beatles', 'Pink Floyd'),
(211, 5, 52, 'Quel compositeur a écrit *Les Quatre Saisons* ?', 'Antonio Vivaldi', 'Johann Sebastian Bach', 'Franz Schubert', 'Ludwig van Beethoven'),
(212, 5, 52, 'Quel style musical est originaire de la Nouvelle-Orléans ?', 'Jazz', 'Blues', 'Country', 'Soul'),
(213, 5, 52, 'Qui a popularisé le genre *rock and roll* dans les années 1950 ?', 'Elvis Presley', 'Chuck Berry', 'Little Richard', 'Buddy Holly'),
(214, 5, 52, 'Quel groupe est surnommé *Les Quatre de Liverpool* ?', 'The Beatles', 'The Who', 'The Rolling Stones', 'The Kinks'),
(215, 5, 52, 'Quel chanteur est surnommé *The Boss* ?', 'Bruce Springsteen', 'Billy Joel', 'Elton John', 'Bob Dylan'),
(216, 5, 52, 'Quel célèbre guitariste est à l\'origine de la chanson *Purple Haze* ?', 'Jimi Hendrix', 'Eric Clapton', 'Jimmy Page', ' Santana'),
(217, 5, 52, 'Quel genre musical est caractérisé par l\'utilisation de rimes, de rythmes et de paroles parlées ?', 'Rap', 'Jazz', 'Rock', 'Blues'),
(218, 5, 52, 'Qui a écrit l’opéra *La Flûte enchantée* ?', 'Wolfgang Amadeus Mozart', 'Ludwig van Beethoven', 'Richard Wagner', 'Giuseppe Verdi'),
(219, 5, 52, 'Quel album est l’un des plus vendus de tous les temps, enregistré par Michael Jackson ?', 'Thriller', ' Off the Wall', 'Bad', 'Dangerous'),
(220, 5, 52, 'Doù vient le chanter francais Tsew The Kid ?', 'Madagascar', 'Chine', 'Japon', 'Etats-Unis'),
(221, 6, 62, 'Quel acteur a joué le rôle principal dans le film *Forrest Gump*?', 'Tom Hanks', 'Brad Pitt', 'Leonardo DiCaprio', 'Johnny Depp'),
(222, 6, 62, 'Quel réalisateur a réalisé le film *Inception* ?', 'Christopher Nolan', 'James Cameron', 'Steven Spielberg', 'Quentin Tarantino'),
(223, 6, 62, 'Quel film a remporté l\'Oscar du meilleur film en 2020 ?', 'Parasite', '1917', 'Joker', 'Once Upon a Time in Hollywood'),
(224, 6, 62, 'Qui a réalisé le film *Le Parrain*?', 'Francis Ford Coppola', 'Martin Scorsese', 'Quentin Tarantino', 'Stanley Kubrick'),
(225, 6, 62, 'Quel acteur joue le rôle de Jack Sparrow dans *Pirates des Caraïbes* ?', 'Johnny Depp', 'Orlando Bloom', 'Brad Pitt', 'Robert Downey Jr.'),
(226, 6, 62, 'Dans quel film trouve-t-on le personnage de *Darth Vader*?', 'Star Wars', 'Star Trek', 'Avatar', 'Alien'),
(227, 6, 62, 'Quel réalisateur est connu pour ses films d\'horreur comme *Psycho* et *Les Oiseaux* ?', 'Alfred Hitchcock', 'Stanley Kubrick', 'Wes Craven', 'John Carpenter'),
(228, 6, 62, 'Quelle actrice joue le rôle principal dans le film *La La Land* ?', 'Emma Stone', 'Jennifer Lawrence', 'carlett Johansson', 'Anne Hathaway'),
(229, 6, 62, 'Quel film est célèbre pour la réplique *Je suis le maître du monde !* ?', 'Titanic', 'Braveheart', 'Gladiator', 'Forrest Gump'),
(230, 6, 62, 'Qui est le réalisateur du film *Avatar* ?', 'ames Cameron', 'Steven Spielberg', 'Ridley Scott', 'Peter Jackson'),
(231, 6, 62, 'Quel est le premier film d\'animation en couleur réalisé par Walt Disney ?', 'Blanche-Neige et les Sept Nains', 'Pinocchio', 'Dumbo', 'Cendrillon'),
(232, 6, 62, 'Dans quel film trouve-t-on le personnage de *Rocky Balboa* ?', 'Rocky', 'Raging Bull', 'Million Dollar Baby', 'Creed'),
(233, 6, 62, 'Quel film de science-fiction met en scène un robot nommé T-800 ?', 'Terminator', 'The Matrix', 'Blade Runner', 'RoboCop'),
(234, 6, 62, 'Quel acteur joue le rôle principal dans le film *Gladiator* ?', 'Russell Crowe', 'Mel Gibson', 'Joaquin Phoenix', 'Tom Cruise'),
(235, 6, 62, 'Quelle actrice incarne Katniss Everdeen dans *Hunger Games* ?', 'Jennifer Lawrence', 'Emma Watson', 'Kristen Stewart', 'Shailene Woodley'),
(236, 6, 62, 'Quel film d\'animation de Disney raconte l\'histoire d\'un lion nommé Simba ?', 'Le Roi Lion', 'Bambi', 'Tarzan', 'La Belle et la Bête'),
(237, 6, 62, 'Quel film met en scène un requin tueur qui terrorise une plage ?', 'Les Dents de la mer', 'Abyss', 'Alien', 'King Kong'),
(238, 6, 62, 'Quel acteur a incarné James Bond dans *Casino Royale*(2006) ?', 'Daniel Craig', 'Pierce Brosnan', 'Sean Connery', 'Roger Moore'),
(239, 6, 62, 'Quel film de science-fiction a pour réplique *Hasta la vista, baby* ?', 'Terminator 2', 'The Matrix', 'Blade Runner', 'Flash'),
(240, 6, 62, 'Quel film a remporté l\'Oscar du meilleur film en 1994 ?', 'Forrest Gump', 'Pulp Fiction', 'Les Évadés', 'La Liste de Schindler'),
(241, 1, 13, 'Quel pays a la plus grande population francophone au monde ?', 'République Démocratique du Congo', 'Canada', 'Belgique', 'France'),
(242, 1, 13, 'Quel est le seul pays au monde à avoir une forme de drapeau non rectangulaire ?', 'Népal', 'Bhoutan', 'Maldives', 'Vanuatu'),
(243, 1, 13, 'En quelle année a eu lieu la révolution française ?', '1789', '1689', '1889', '1989'),
(244, 1, 13, 'Quel écrivain a reçu le Prix Nobel de littérature en 1954 ?', 'Ernest Hemingway', 'Albert Camus', 'Gabriel García Márquez', ' William Faulkner'),
(245, 1, 13, 'Quelle ville est surnommée *la Venise du Nord* ?', 'Amsterdam', 'Saint-Pétersbourg', 'Bruges', 'Stockholm'),
(246, 1, 13, 'Quel fleuve traverse la ville de Vienne ?', 'Danube', 'Rhin', 'Elbe', 'Rhône'),
(247, 1, 13, 'Quel est le seul pays d\'Amérique du Sud à avoir une côte sur l\'océan Atlantique et le Pacifique ?', 'Colombie', 'Argentine', 'Brésil', 'Pérou'),
(248, 1, 13, 'Quel est le pays le plus ancien du monde encore existant aujourd\'hui ?', 'Japon', 'Égypte', 'Iran', 'Grèce'),
(249, 1, 13, 'Quel est le pays avec le plus de volcans actifs dans le monde ?', 'Indonésie', 'Islande', 'Japon', 'Italie'),
(250, 1, 13, 'Quel est le plus grand lac d\'eau douce au monde en termes de volume ?', 'Lac Baïkal', 'Lac Supérieur', 'Lac Tanganyika', 'Lac Victoria'),
(251, 1, 13, 'Quel est le plus haut sommet en dehors de l\'Himalaya ?', 'Aconcagua', 'Mont Elbrouz', 'Mont McKinley', 'Mont Blanc'),
(252, 1, 13, 'Quel philosophe grec est le fondateur de l\'Académie d\'Athènes ?', 'Platon', 'Aristote', 'Socrate', 'Héraclite'),
(253, 1, 13, 'Quel artiste est connu pour avoir peint *La Nuit étoilée* ?', ' Vincent van Gogh', 'Pablo Picasso', 'Claude Monet', 'Paul Gauguin'),
(254, 1, 13, 'Quelle est la plus ancienne université encore en activité ?', 'Université Al Quaraouiyine', 'Université de Bologne', 'Université d\'Oxford', 'Université de la Sorbonne'),
(255, 1, 13, 'Qui a été le premier président des États-Unis ?', 'George Washington', 'John Adams', 'Thomas Jefferson', 'James Madison'),
(256, 1, 13, 'Quelle civilisation a construit Machu Picchu ?', 'Incas', 'Mayas', 'Aztèques', 'Olmèques'),
(257, 1, 13, 'Quel événement a déclenché la Première Guerre mondiale ?', 'Assassinat de l\'archiduc Françoi', ' Attaque de Pearl Harbor', 'Révolution russe', 'Chute de l\'Empire ottoman'),
(258, 1, 13, 'Quelle île est la plus grande au monde ?', 'Groenland', 'Nouvelle-Guinée', 'Madagascar', 'Borneo'),
(259, 1, 13, 'Quel pays a gagné la première Coupe du Monde de la FIFA en 1930 ?', 'Uruguay', 'Brésil', 'Argentine', 'Italie'),
(260, 1, 13, 'Dans quelle ville se trouve le quartier d\'affaires La Défense ?', 'Paris', 'Londres', 'Bruxelles', 'Berlin'),
(261, 2, 23, 'Combien de titres Michael Schumacher a-t-il remportés en Formule 1 ?', '7', '6', '8', '5'),
(262, 2, 23, 'Quel pays a remporté le plus de médailles d\'or aux Jeux Olympiques d\'été ?', 'États-Unis', 'Union soviétique', 'Allemagne', 'Chine'),
(263, 2, 23, 'Quel est le record du monde de saut à la perche, détenu par Armand Duplantis en 2023 ?', '6,22 mètres', ' 6,17 mètres', '6,18 mètres', '6,23 mètres'),
(264, 2, 23, 'Quel est le seul pays à avoir participé à toutes les Coupes du Monde de football depuis 1930 ?', 'Brésil', 'Italie', 'Allemagne', 'Argentine'),
(265, 2, 23, 'Qui a été le premier joueur à remporter 3 Ballons d\'Or consécutifs ?', 'Michel Platini', 'Lionel Messi', 'Cristiano Ronaldo', 'Johan Cruyff'),
(266, 2, 23, 'En quelle année Roger Federer a-t-il remporté son premier tournoi de Wimbledon ?', '2003', '2002', '2004', '2005'),
(267, 2, 23, 'Quel footballeur est surnommé *El Fenómeno* ?', 'Ronaldo', 'Diego Maradona', 'Ronaldinho', 'Pelé'),
(268, 2, 23, 'Quelle nation a remporté le plus de titres en Coupe Davis de tennis ?', 'États-Unis', 'France', 'Espagne', 'Australie'),
(269, 2, 23, 'Quel joueur de basket détient le record du plus grand nombre de points marqués en un match NBA (100 points) ?', 'Wilt Chamberlain', 'Michael Jordan', 'LeBron James', 'Kobe Bryant'),
(270, 2, 23, 'Quelle équipe nationale de rugby a remporté le plus de Coupes du Monde ?', 'Nouvelle-Zélande', 'Australie', 'Afrique du Sud', 'Angleterre'),
(271, 2, 23, 'Quel pays a remporté la première Coupe du Monde de rugby en 1987 ?', 'Nouvelle-Zélande', 'Afrique du Sud', 'Australie', 'Angleterre'),
(272, 2, 23, 'Dans quel sport est utilisé le terme *birdie*?', 'Golf', 'Tennis', 'Badminton', 'Cricket'),
(273, 2, 23, 'Quel est le sport national du Japon ?', 'Sumo', 'Kendo', 'Judo', 'Karaté'),
(274, 2, 23, 'Combien de tours compose la course cycliste du Tour de France ?', '21', '18', '20', '22'),
(275, 2, 23, 'Dans quel sport trouve-t-on le terme *love* ?', 'Tennis', 'Cricket', 'Squash', 'Badminton'),
(276, 2, 23, 'Quelle équipe a remporté le plus de Super Bowls en NFL ?', 'New England Patriots', 'San Francisco 49ers', 'Pittsburgh Steelers', 'Dallas Cowboys'),
(277, 2, 23, 'Quel boxeur est surnommé *The Greatest* ?', 'Muhammad Ali', 'Mike Tyson', 'Floyd Mayweather', 'George Foreman'),
(278, 2, 23, 'Quelle athlète est la seule à avoir remporté quatre médailles d\'or aux Jeux Olympiques de Berlin en 1936 ?', 'Jesse Owens', 'Carl Lewis', 'Usain Bolt', 'Florence Griffith-Joyner'),
(279, 2, 23, 'Quel joueur de tennis détient le record de titres en Grand Chelem (simple messieurs) en 2023 ?', 'Novak Djokovic', 'Roger Federer', 'Rafael Nadal', 'Pete Sampras'),
(280, 2, 23, '', 'Lance Armstrong', 'Eddy Merckx', 'Bernard Hinault', 'Jacques Anquetil'),
(281, 3, 33, 'Quelle est la conjecture qui stipule que tout entier naturel pair supérieur à 2 peut être écrit comme la somme de deux nombres premiers ?', 'Conjecture de Goldbach', 'Conjecture de Fermat', 'Conjecture de Poincaré', 'Conjecture de Collatz'),
(282, 3, 33, 'Quel mathématicien a formulé le dernier théorème de Fermat, prouvé en 1994 par Andrew Wiles ?', 'Pierre de Fermat', 'Pierre-Simon Laplace', 'Carl Friedrich Gauss', 'Leonhard Euler'),
(283, 3, 33, 'Quel est le nom du plus grand nombre premier connu en 2023 ?', 'Nombre de Mersenne', 'Nombre de Fermat', 'Nombre de Fibonacci', 'Nombre de Catalan'),
(284, 3, 33, 'Quel est le résultat de la dérivée de la fonction exponentielle exp(x) ?', 'exp(x)', 'x', 'exp(x+1)', 'exp(x-1)'),
(285, 3, 33, 'Quel théorème stipule que le carré de l\'hypoténuse est égal à la somme des carrés des deux autres côtés dans un triangle rectangle ?', 'Théorème de Pythagore', 'Théorème de Thalès', 'Théorème de Fermat', 'Théorème de Pascal'),
(286, 3, 33, 'Quel mathématicien a inventé le calcul différentiel et intégral en même temps que Newton ?', 'Gottfried Wilhelm Leibniz', 'Blaise Pascal', 'René Descartes', 'Isaac Newton'),
(287, 3, 33, 'Comment appelle-t-on une matrice dont le déterminant est égal à zéro ?', 'Matrice singulière', 'Matrice inversible', 'Matrice diagonale', 'Matrice carrée'),
(288, 3, 33, 'Comment s’appelle l’ensemble des nombres qui peuvent être écrits sous la forme d\'une fraction ?', 'Nombres rationnels', 'Nombres réels', 'Nombres irrationnels', 'Nombres entiers'),
(289, 3, 33, 'Comment s\'appelle le point où les trois médianes d\'un triangle se rencontrent ?', 'Centre de gravité', 'Orthocentre', 'Incentre', 'Barycentre'),
(290, 3, 33, 'Quelle fonction trigonométrique donne le rapport entre le côté opposé et l\'hypoténuse dans un triangle rectangle ?', 'Sinus', 'Cosinus', 'Tangente', 'Cotangente'),
(291, 3, 33, 'Dans quelle base de numération le système binaire fonctionne-t-il ?', 'Base 2', 'Base 8', 'Base 10', 'Base 16'),
(292, 3, 33, 'Quelle est la somme des angles intérieurs d\'un pentagone ?', '540°', '720°', '360°', '900°'),
(293, 3, 33, 'Quel est le nom de l\'infinité des décimales après la virgule dans le nombre pi ?', 'Infinité irrationnelle', 'Infinité dénombrable', 'Infinité transcendantale', 'Infinité rationnelle'),
(294, 3, 33, 'Combien y a-t-il de symétries dans un carré ?', '8', '2', '12', '4'),
(295, 3, 33, 'Comment appelle-t-on une suite où chaque terme est la somme des deux précédents, comme la suite de Fibonacci ?', 'Suite récurrente', 'Suite arithmétique', 'Suite géométrique', 'Suite harmonique'),
(296, 3, 33, 'Quel mathématicien grec est considéré comme le père de la géométrie ?', 'Euclide', 'Thalès', 'Archimède', 'Pythagore'),
(297, 3, 33, 'Quel théorème relie les côtés d’un triangle rectangle ?', ' Pythagore', 'Thalès', 'Fermat', 'Descartes'),
(298, 3, 33, 'Quel théorème garantit qu\'une fonction continue sur un intervalle atteint ses bornes ?', ' Bornes atteintes', 'Rolle', ' Bolzano', 'Cauchy'),
(299, 3, 33, 'Quel théorème assure l\'existence d\'un point où la dérivée est nulle entre deux valeurs égales d\'une fonction ?', ' Rolle', 'Lagrange', 'Fermat', 'Newton'),
(300, 3, 33, 'Qui est le père de la géometrie?', 'Euclide', 'Pythagore', 'Aqechimède', 'Al-Khawarizmi'),
(301, 4, 43, 'Quel est l\'élément chimique avec le symbole *Hg* ?', 'Mercure', 'Hydrogène', 'Hélium', 'Hafnium'),
(302, 4, 43, 'Quelle est la particule subatomique responsable de la charge négative dans un atome ?', 'Électron', 'Proton', 'Neutron', 'Quark'),
(303, 4, 43, 'Quelle est la distance approximative entre la Terre et le Soleil ?', '93 000 000 miles', ' 93 000 kilomètres', '150 000 kilomètres', '150 000 000 miles'),
(304, 4, 43, 'Quel est le seul métal liquide à température ambiante ?', 'Mercure', 'Plomb', 'Zinc', 'Or'),
(305, 4, 43, 'Qui a découvert la loi de la gravitation universelle ?', 'Isaac Newton', ' Albert Einstein', 'Galileo Galilei', 'Johannes Kepler'),
(306, 4, 43, 'Quel est le nom de la plus grande lune de Saturne ?', 'Titan', 'Europe', 'Io', 'Callisto'),
(307, 4, 43, 'Quel phénomène est à l\'origine des aurores boréales ?', 'Interactions entre les particule', 'Activité volcanique', 'éflexion de la lumière solaire s', 'Tremblements de terre'),
(308, 4, 43, 'Quelle est la loi qui relie la pression et le volume d\'un gaz à température constante ?', 'Loi de Boyle-Mariotte', 'Loi de Charles', 'Loi d\'Avogadro', 'Loi de Bernoulli'),
(309, 4, 43, 'Quel est l\'organe du corps humain responsable de la production d\'insuline ?', 'Pancréas', 'Foie', 'Reins', 'Thyroïde'),
(310, 4, 43, 'Quelle planète est la plus grande du système solaire ?', 'Jupiter', 'Saturne', 'Neptune', 'Uranus'),
(311, 4, 43, 'Quelle est la vitesse de la lumière dans le vide ?', '300 000 km/s', ' 150 000 km/s', '450 000 km/s', '450 000 km/s'),
(312, 4, 43, 'Quel gaz constitue environ 78% de l\'atmosphère terrestre ?', 'Azote', 'Oxygène', 'Dioxyde de carbone', 'Hélium'),
(313, 4, 43, 'Quel est le nom du processus par lequel les plantes fabriquent de la nourriture à partir de la lumière du soleil ?', 'Photosynthèse', 'Respiration', 'Transpiration', 'Fermentation'),
(314, 4, 43, 'Qui est connu pour avoir formulé la théorie de la relativité restreinte et générale ?', 'Albert Einstein', 'Isaac Newton', 'Nikola Tesla', 'Stephen Hawking'),
(315, 4, 43, 'Quel élément chimique est le plus abondant dans l\'univers ?', 'Hydrogène', 'Oxygène', 'Hélium', 'Carbone'),
(316, 4, 43, 'Quelle est l’unité de mesure de la force dans le Système International (SI) ?', 'Newton', 'Pascal', 'Joule', 'Watt'),
(317, 4, 43, 'Quel est le plus grand os du corps humain ?', 'Fémur', 'Humérus', 'Tibia', 'Radius'),
(318, 4, 43, 'Quel physicien a découvert les lois de l\'électromagnétisme ?', 'James Clerk Maxwell', 'Michael Faraday', 'Heinrich Hertz', 'André-Marie Ampère'),
(319, 4, 43, 'Quel est l\'animal le plus rapide sur terre ?', 'Guépard', 'Faucon pèlerin', 'Antilope', 'Cheval'),
(320, 4, 43, 'Quelle est la couche la plus externe de la Terre ?', 'Croûte', 'Manteau', 'Noyau externe', 'Noyau interne'),
(321, 5, 53, 'Qui est le compositeur de l\'opéra *La Flûte enchantée* ?', 'Wolfgang Amadeus Mozart', 'Ludwig van Beethoven', 'Johann Sebastian Bach', 'Richard Wagner'),
(322, 5, 53, 'Quel est le nom du mouvement musical initié par Claude Debussy et Maurice Ravel ?', 'Impressionnisme', 'Classique', 'Baroque', 'Romantisme'),
(323, 5, 53, 'Quel groupe de rock est à l\'origine de l\'album *The Dark Side of the Moon* ?', 'Pink Floyd', 'Led Zeppelin', 'The Rolling Stones', 'The Beatles'),
(324, 5, 53, 'Quel compositeur a écrit la *Symphonie No. 9* en ré mineur, également appelée *Ode à la Joie* ?', 'Ludwig van Beethoven', 'Franz Schubert', 'Johannes Brahms', 'Joseph Haydn'),
(325, 5, 53, 'Quel compositeur italien est connu pour ses opéras tels que *La Traviata* et *Rigoletto* ?', 'Giuseppe Verdi', 'Giacomo Puccini', 'Gioachino Rossini', 'Antonio Vivaldi'),
(326, 5, 53, 'Quelle chanson de Michael Jackson est le clip vidéo le plus long, durant plus de 13 minutes ?', 'Thriller', 'Billie Jean', 'Beat It', 'Bad'),
(327, 5, 53, 'Quel instrument est souvent appelé *la Reine des instruments* ?', 'Piano', 'Violon', 'Guitare', 'Flûte'),
(328, 5, 53, 'Quel est le nom de l\'album le plus vendu de tous les temps ?', '*Thriller* - Michael Jackson', '*Back in Black* - AC/DC', '*The Wall* - Pink Floyd', '*Abbey Road* - The Beatles'),
(329, 5, 53, 'Qui est le compositeur de la bande originale du film *Star Wars* ?', 'John Williams', 'Hans Zimmer', 'Ennio Morricone', 'Danny Elfman'),
(330, 5, 53, 'Quelle chanteuse est connue pour la chanson *Rolling in the Deep* ?', 'Adèle', 'Beyoncé', 'Rihanna', 'Lady Gaga'),
(331, 5, 53, 'Quel compositeur a écrit le ballet *Le Lac des cygnes* ?', 'Piotr Ilitch Tchaïkovski', 'Sergei Prokofiev', 'Igor Stravinsky', 'Dmitri Chostakovitch'),
(332, 5, 53, 'Quel est le titre de l\'opéra le plus joué dans le monde ?', '*La Traviata* - Verdi', '*Carmen* - Bizet', '*La Bohème* - Puccini', '*Le Barbier de Séville* - Rossin'),
(333, 5, 53, 'Quel chanteur britannique a remporté le plus grand nombre de Grammy Awards ?', 'Adele', 'Paul McCartney', 'Elton John', 'Eric Clapton'),
(334, 5, 53, 'Quel est le nom du groupe mythique à l\'origine de l\'album *Sgt. Pepper\'s Lonely Hearts Club Band* ?', 'The Beatles', 'Queen', 'The Rolling Stones', 'The Who'),
(335, 5, 53, 'Quel compositeur est connu pour sa symphonie inachevée ?', 'Franz Schubert', 'Ludwig van Beethoven', 'hannes Brahms', 'Gustav Mahler'),
(336, 5, 53, 'Quel genre musical a été popularisé par des groupes comme Nirvana et Pearl Jam dans les années 90 ?', 'Grunge', 'Punk', 'Metal', 'Britpop'),
(337, 5, 53, 'Qui a composé la bande originale des films *Le Seigneur des Anneaux* ?', 'Howard Shore', 'Hans Zimmer', 'John Williams', 'James Horner'),
(338, 5, 53, 'Dans quelle ville a eu lieu le festival de musique légendaire Woodstock en 1969 ?', 'New York', 'San Francisco', 'Chicago', 'Los Angeles'),
(339, 5, 53, 'Quel compositeur français est célèbre pour son *Boléro* ?', 'Maurice Ravel', 'Camille Saint-Saëns', 'Claude Debussy', 'Erik Satie'),
(340, 5, 53, 'Quel opéra de Georges Bizet se déroule en Espagne et met en scène une cigarière ?', '*Carmen*', '*La Bohème*', '*Tosca*', '*Don Giovanni*'),
(341, 6, 63, 'Qui est le réalisateur malgache qui a réaliser *Fahavalo, Madagascar 1947 ?', 'Marie-Clémence', 'Avoko', 'Raymond Rajaonarivelo', 'Didier Jean'),
(342, 6, 63, 'Quel film d\'animation se déroule sur une planète lointaine où les humains sont des animaux de companie ?', 'La planète sauvage', 'La planète des singes', 'Jurassic parc', 'Le voyage dans la lune'),
(343, 6, 63, 'Quel film a remporté le palm d\'or en 1984 ?', 'Paris, Texas', 'Taxi driver', 'Back to the future', 'Luppin III'),
(344, 6, 63, 'Quel film est une adaptation d\'un roman des frères Strougatski ?', 'Staller', 'Jarus', 'Taxi Driver', 'Docteur Flamour'),
(345, 6, 63, 'Quel film présente un chevalier jouant aux échecs avec la Mort ?', 'Le septième Sceau', 'Seven', 'Les sept samouraÏs', 'Jeu de la mort'),
(346, 6, 63, 'Dans quel film Japonais un groupe se samouraÏs protège un village contre les bandits ?', 'Les sept samouraÏs', 'Day of heaven', 'Alice in Borderland', 'Brealing in wars'),
(347, 6, 63, 'Quel film Malgache retrace le parcours d\'un Roi Malgache éxilé', 'Tabataba', 'Tolona', 'Fahavalo, Madagascar 1947', 'Fahaleovan-tena'),
(348, 6, 63, 'Quel film aborde la mémoire traumatique liée à Hiroshima ?', 'Hiroshima mon amour', 'Première guerre mondiale', 'Titanic', 'Guerre Froide'),
(349, 6, 63, 'Dans quel film Tom Hanks joue t-il un capitaine de bateau pris en otage par des pirates ?', 'Capitain Phillips', 'Voyage de Guilivert', 'Omma', 'Roi des Pirates'),
(350, 6, 63, 'Quel film d\'animation est basé sur un conte scandinave de Hars Christian ?', 'La Reine des Neiges', 'Ecarto', 'Luca', 'Alladin'),
(351, 6, 63, 'Quel film d\'horreur a popularisé l\'utilisation de la caméra à l\'épaule ?', 'Le projet Blair Witch', 'Sans un bruit', 'Birds', 'The nun'),
(352, 6, 63, 'Qui est l\'acteur qui joue Forest Gump dans le film du même nom', 'Tom Hanks', 'Tom Cruise', 'James Bond', 'John William'),
(353, 6, 63, 'Qui est le compositeur de la bande originale de *Star Wars* et *Harry Potter* ?', 'John Williams', 'Peter Jackson', 'Christopher Nolan', 'Martin Scorsese'),
(354, 6, 63, 'Qui est le réalisateur connu par ses films noirs et cyniques comme *Citizen Kane* ?', 'Orson Welles', 'Bong Joon-ho', 'John Williams', 'Michael Corlene'),
(355, 6, 63, 'Quel est la ville où se déroule la majorité des film ?', 'Los Angeles', 'Las Vegas', 'Californie', 'Paris'),
(356, 6, 63, 'Quel est le film le plus rentable de tous les temps ?', 'Avatar', 'Iron-man', 'Avengers', 'Spider-man'),
(357, 6, 63, 'Dans quel film Léonardo DiCaprio a-t-il enfin remporté l\'Oscar du meilleur acteur ?', 'The Revenant', 'Jurassic parc', 'Gans of New York', 'Captain Phillips'),
(358, 6, 63, 'Quel est le premier film d\'animation en couleurs ?', 'Blanches Neiges et les sept Nain', 'Cendrillon', 'Peter Pan', 'Palais Scout'),
(359, 6, 63, 'Quel film a marqué la première collaboration entre Martin Scorsese et Leonardo DiCaprio ?', 'Gans of New York', 'The Revenant', 'Casino', 'Les Affranchis'),
(360, 6, 63, 'Quel film d\'animation Pixar raconte l\'histoire d\'un rat qui rêve de devenir un chef cuisinier à Paris ?', 'Ratatouille', 'Les Indestructibles', 'Le Monde de Nemo', 'Cars');

-- --------------------------------------------------------

--
-- Structure de la table `score`
--

CREATE TABLE `score` (
  `ID_SCORE` int(2) NOT NULL,
  `ID_JOUEUR` int(2) NOT NULL,
  `USER_NAME` char(20) DEFAULT NULL,
  `SCORE` int(2) DEFAULT NULL,
  `DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `topic`
--

CREATE TABLE `topic` (
  `ID_TOPIC` int(2) NOT NULL,
  `TYPE` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `topic`
--

INSERT INTO `topic` (`ID_TOPIC`, `TYPE`) VALUES
(1, 'Connaissances générales'),
(2, 'Sports'),
(3, 'Maths'),
(4, 'Sciences'),
(5, 'Musiques'),
(6, 'Cinémas');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`ID_JOUEUR`,`ID_QUESTION`),
  ADD KEY `I_FK_ANSWER_PLAYER` (`ID_JOUEUR`),
  ADD KEY `I_FK_ANSWER_QUESTION` (`ID_QUESTION`);

--
-- Index pour la table `competition`
--
ALTER TABLE `competition`
  ADD PRIMARY KEY (`ID_COMPETITION`);

--
-- Index pour la table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`ID_TOPIC`,`CODE_LEVEL`),
  ADD KEY `I_FK_LEVEL_TOPIC` (`ID_TOPIC`);

--
-- Index pour la table `participate`
--
ALTER TABLE `participate`
  ADD PRIMARY KEY (`ID_COMPETITION`,`ID_JOUEUR`),
  ADD KEY `I_FK_PARTICIPATE_COMPETITION` (`ID_COMPETITION`),
  ADD KEY `I_FK_PARTICIPATE_PLAYER` (`ID_JOUEUR`);

--
-- Index pour la table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`ID_JOUEUR`),
  ADD KEY `I_FK_PLAYER_LEVEL` (`ID_TOPIC`,`CODE_LEVEL`),
  ADD KEY `I_FK_PLAYER_SCORE` (`ID_SCORE`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ID_QUESTION`),
  ADD KEY `I_FK_QUESTION_LEVEL` (`ID_TOPIC`,`CODE_LEVEL`);

--
-- Index pour la table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`ID_SCORE`),
  ADD KEY `I_FK_SCORE_PLAYER` (`ID_JOUEUR`);

--
-- Index pour la table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`ID_TOPIC`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `ID_QUESTION` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=842;

--
-- AUTO_INCREMENT pour la table `topic`
--
ALTER TABLE `topic`
  MODIFY `ID_TOPIC` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `FK_ANSWER_PLAYER` FOREIGN KEY (`ID_JOUEUR`) REFERENCES `player` (`ID_JOUEUR`),
  ADD CONSTRAINT `FK_ANSWER_QUESTION` FOREIGN KEY (`ID_QUESTION`) REFERENCES `question` (`ID_QUESTION`);

--
-- Contraintes pour la table `level`
--
ALTER TABLE `level`
  ADD CONSTRAINT `FK_LEVEL_TOPIC` FOREIGN KEY (`ID_TOPIC`) REFERENCES `topic` (`ID_TOPIC`);

--
-- Contraintes pour la table `participate`
--
ALTER TABLE `participate`
  ADD CONSTRAINT `FK_PARTICIPATE_COMPETITION` FOREIGN KEY (`ID_COMPETITION`) REFERENCES `competition` (`ID_COMPETITION`),
  ADD CONSTRAINT `FK_PARTICIPATE_PLAYER` FOREIGN KEY (`ID_JOUEUR`) REFERENCES `player` (`ID_JOUEUR`);

--
-- Contraintes pour la table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `FK_PLAYER_LEVEL` FOREIGN KEY (`ID_TOPIC`,`CODE_LEVEL`) REFERENCES `level` (`ID_TOPIC`, `CODE_LEVEL`),
  ADD CONSTRAINT `FK_PLAYER_SCORE` FOREIGN KEY (`ID_SCORE`) REFERENCES `score` (`ID_SCORE`);

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FK_QUESTION_LEVEL` FOREIGN KEY (`ID_TOPIC`,`CODE_LEVEL`) REFERENCES `level` (`ID_TOPIC`, `CODE_LEVEL`);

--
-- Contraintes pour la table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `FK_SCORE_PLAYER` FOREIGN KEY (`ID_JOUEUR`) REFERENCES `player` (`ID_JOUEUR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
