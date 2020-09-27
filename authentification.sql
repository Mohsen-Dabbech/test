-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 26 sep. 2020 à 03:01
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `authentification`
--

-- --------------------------------------------------------

--
-- Structure de la table `loginlogs`
--

CREATE TABLE `loginlogs` (
  `id_log` int(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `loginlogs`
--

INSERT INTO `loginlogs` (`id_log`, `user`, `action`, `date`) VALUES
(5, 'admin@gmail.com', 'Log in', '0000-00-00 00:00:00'),
(6, 'admin@gmail.com', 'Log in', '0000-00-00 00:00:00'),
(8, 'admin@gmail.com', 'Log in', '0000-00-00 00:00:00'),
(10, 'user@gmail.com', 'Log in', '0000-00-00 00:00:00'),
(12, 'admin@gmail.com', 'Log in', '0000-00-00 00:00:00'),
(13, 'admin@gmail.com', 'Log in', '0000-00-00 00:00:00'),
(15, 'admin@gmail.com', 'Log in', '0000-00-00 00:00:00'),
(17, 'admin@gmail.com', 'Log in', '0000-00-00 00:00:00'),
(19, 'user@gmail.com', 'Log in', '0000-00-00 00:00:00'),
(20, 'user@gmail.com', 'Log out', '0000-00-00 00:00:00'),
(21, 'admin@gmail.com', 'Log in', '0000-00-00 00:00:00'),
(22, 'admin@gmail.com', 'Log out', '0000-00-00 00:00:00'),
(23, 'admin@gmail.com', 'Log in', '0000-00-00 00:00:00'),
(24, 'admin@gmail.com', 'Log out', '0000-00-00 00:00:00'),
(25, 'admin@gmail.com', 'Log in', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(100) NOT NULL,
  `login_user` varchar(100) NOT NULL,
  `mdp_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `login_user`, `mdp_user`) VALUES
(1, 'admin@gmail.com', 'admin123'),
(2, 'user@gmail.com', 'user123');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `loginlogs`
--
ALTER TABLE `loginlogs`
  ADD PRIMARY KEY (`id_log`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `loginlogs`
--
ALTER TABLE `loginlogs`
  MODIFY `id_log` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
