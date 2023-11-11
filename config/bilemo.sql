-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 11 nov. 2023 à 10:11
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bilemo`
--

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`id`, `company`, `password`, `roles`) VALUES
(1, 'Dicki Inc', '$2y$10$yfR5AvRlqw5RxLIFeScceuoea4LGcaZc5u80ClKI15OjvHtJekxFC', '[\"ROLE_CUSTOMER\"]'),
(2, 'Altenwerth, Schinner and Gerlach', '$2y$10$y1HFDfMZMGuH2A.NEQUtc.PyiggSUIrzyjpFl8f73TObMj9E.jiMO', '[\"ROLE_CUSTOMER\"]'),
(3, 'Hagenes Ltd', '$2y$10$bAXmu8CdMLl7JhRY3oHqnOW.lcqkDE0Gbp/isLLAmPmD3WmYtpqaG', '[\"ROLE_CUSTOMER\"]'),
(4, 'Sauer, Russel and Medhurst', '$2y$10$OpdgqH1LaVXlVn6KELBENO/YGmXTYKW65q8.T89RNl72u.kkmNlSK', '[\"ROLE_CUSTOMER\"]'),
(5, 'Wisozk, Swift and Effertz', '$2y$10$KEZHHr5yB9mpCQR7SqJzrOAXxuS.qqDHBExTDFv6DOA8q2QPejqZy', '[\"ROLE_CUSTOMER\"]'),
(6, 'Greenfelder LLC', '$2y$10$1vxVXxs4VSXdETmikFigI.e8LhTRhNIYlprS2Y8byGCAS2vYn4DG.', '[\"ROLE_CUSTOMER\"]'),
(7, 'Eichmann-Williamson', '$2y$10$zRYGZjLwTWaGHjJULY8OaeipNgMoE6WyP1D8SFprnFgQ8PSRm269u', '[\"ROLE_CUSTOMER\"]'),
(8, 'Nikolaus-Haag', '$2y$10$uFzY4kIyJMiOAZOp1mazbOEPYt02P4ay3K4p5vX2BRTTir4jL9dpW', '[\"ROLE_CUSTOMER\"]'),
(9, 'Gaylord, Keebler and Cruickshank', '$2y$10$t71R4iymleQhSIk6fj/VzOD.eOughgtKaJzSVYcHXCWEBjTviImk2', '[\"ROLE_CUSTOMER\"]'),
(10, 'Torphy PLC', '$2y$10$0mpU5d3X626uIq11RUwGX.rUYvQ15xKUK6oOpAA5mQDXyqJQxL2lO', '[\"ROLE_CUSTOMER\"]'),
(11, 'Roob, Hintz and Strosin', '$2y$10$SH9qcvNde7kIjIjMFvkYzuXauiIsFfotUEX3bs9QXN4/.BIrMe8mW', '[\"ROLE_CUSTOMER\"]'),
(12, 'Kessler Ltd', '$2y$10$PSW/TjUFdifqudxtcazRNO.I4kLw./3MFWv61eo3HMZplEquhNq4C', '[\"ROLE_CUSTOMER\"]'),
(13, 'O\'Kon, Ullrich and Lehner', '$2y$10$dU9L4DRcoFzUz3kEmRTLt.m5gAzhwwtl9FhOp9lJZuJP6OydPFGni', '[\"ROLE_CUSTOMER\"]'),
(14, 'Kautzer Group', '$2y$10$PEP2xKDHnhuLT2uuH3yHhuI2IyhUryImeXLQm2GM3sBeVFML5GPU6', '[\"ROLE_CUSTOMER\"]'),
(15, 'Flatley and Sons', '$2y$10$zYQDcNFV7UOpJ6EeB5yCIeA3kMp0M1gGBNwCy6./xZDdx/uuTMRdK', '[\"ROLE_CUSTOMER\"]'),
(16, 'Halvorson-Romaguera', '$2y$10$FfrQ0/SS8fSOpfipmyc5keb9hbdV/EpBGxlReOAvZMAV3WbpMNa3W', '[\"ROLE_CUSTOMER\"]'),
(17, 'Kemmer, Pfeffer and Batz', '$2y$10$SsZym3Cc8qQyw823AitqkezlckVqfNHJicYwstjFZZpYS7livMq9i', '[\"ROLE_CUSTOMER\"]'),
(18, 'Crona, Gleichner and Powlowski', '$2y$10$8JuXkcLda9ZSAjEQQ32wdenZS80raZXtYuYPQTcX4TupkAebygTZu', '[\"ROLE_CUSTOMER\"]'),
(19, 'Christiansen-Hermiston', '$2y$10$aP8ZLZQdWWIhhnDtXLn07OwZIcgIsNrgrPgblXSuspERUfvJHTnnm', '[\"ROLE_CUSTOMER\"]'),
(20, 'Osinski-Harvey', '$2y$10$OlWZAuOUux/X1oyDhZMomOQSl0Rdvdoi6bc46kd2QxkJV/jyZ6hDa', '[\"ROLE_CUSTOMER\"]'),
(21, 'Morar, Balistreri and Torp', '$2y$10$oxDH.yxb5jZycbj62hbQ0O2wXNDdgw5ajv4A5GYlXP0xgLt3H1FxO', '[\"ROLE_CUSTOMER\"]'),
(22, 'Reynolds Ltd', '$2y$10$9cu9yUaeBGQpztiY1fCsKui90ExhCqSOK1XaPR0Naci2vqnbLNS4e', '[\"ROLE_CUSTOMER\"]'),
(23, 'Bins-Nicolas', '$2y$10$/ZisvHMaD6AQinZqSYFBt.H.rNtVFSP094RCri9LM/nJHopbrI0yK', '[\"ROLE_CUSTOMER\"]'),
(24, 'Goyette-Buckridge', '$2y$10$1I5vfSYiBSz970d5VGsQHuNDJEXfJrIyGYJTM/Bb2fdKBbK.jqZNW', '[\"ROLE_CUSTOMER\"]'),
(25, 'Little-Anderson', '$2y$10$H7T6.wt.RPx3juCk2zPsheJJTsoKDXxWG6o6rOR2NAwmnwbkeFe4e', '[\"ROLE_CUSTOMER\"]'),
(26, 'Hansen, Kohler and Mosciski', '$2y$10$I0T7/1m20VwCcjy.5yWtwukP3GrTlFVIX9Kmkm90x6tW6iQiQ8tuG', '[\"ROLE_CUSTOMER\"]'),
(27, 'Lueilwitz, Satterfield and Legros', '$2y$10$wv4qz8v8T07OwrMVifPkbejMSq176kYuB6.QMP7hnjxa6EWFn1hIG', '[\"ROLE_CUSTOMER\"]'),
(28, 'Boyle, Brekke and Hackett', '$2y$10$a2Hyvznvf0h/HVwbOIYwTuULh88zpptmAfKFB02xEUVtUGmeByS.O', '[\"ROLE_CUSTOMER\"]'),
(29, 'Schmidt-Kuphal', '$2y$10$W33DKONqONCfPAIxmgUn0OaFH7rYNW6cU.jHzjqJVUcFcG5/KBsDi', '[\"ROLE_CUSTOMER\"]'),
(30, 'Ankunding, Howell and Ratke', '$2y$10$N482B3pVBcDcZ72ide9rtuTTuQ8rMWr.TufnEb9cjIhnijlVs82b2', '[\"ROLE_CUSTOMER\"]'),
(31, 'Ratke Ltd', '$2y$10$sfenkY0DXsKs1Fiblb5.Qu.JjfqZQcqc4IAsbU3Luhlf3/yKN2jUy', '[\"ROLE_CUSTOMER\"]'),
(32, 'Kilback PLC', '$2y$10$p7M2j1KzXWtDZ2GWDDlYuuPnDgPrRoDOP88ke9yvySlH9AMFUisjG', '[\"ROLE_CUSTOMER\"]'),
(33, 'Mueller-Streich', '$2y$10$effd4AOzB.d0fTDAb3UkWe5g1uJHQIXvC/8zFXC0GQm.oVI6QB2ca', '[\"ROLE_CUSTOMER\"]'),
(34, 'Cummings-Kshlerin', '$2y$10$dICzI2iyw7SXjIUGvgAzXuV3ZJVpolliDwQyMhHjAeFS0uuQ4jY8K', '[\"ROLE_CUSTOMER\"]'),
(35, 'Schaden, Emmerich and Effertz', '$2y$10$U6hgSsdJcjNYY4/YuVcRDuAwTfl20Gpc/4BnUrGJuU2q6bmfi3nMC', '[\"ROLE_CUSTOMER\"]'),
(36, 'Gorczany LLC', '$2y$10$jMK8VbxzvcZ2qHx4mNjCteaskjTqY4YwhGhxUZnqkQE/Vk8LA/Zgm', '[\"ROLE_CUSTOMER\"]'),
(37, 'Okuneva, Kirlin and Hand', '$2y$10$GsH.3um.e/wrXczQa4dS8Oq8/xd.FbjqVqu0iyXTdrLwEur6m0912', '[\"ROLE_CUSTOMER\"]'),
(38, 'Orn, Heidenreich and DuBuque', '$2y$10$NHVzmqErlNfSVG8dysjAfednl2faTYOneVtv7KhYftJ5LREjqffEi', '[\"ROLE_CUSTOMER\"]'),
(39, 'Becker, Hirthe and Brekke', '$2y$10$t7hlLeqRp.CUpYFSDxD7WebSE/s7tCfE1BbZYHe09s4uH.UyOIe6m', '[\"ROLE_CUSTOMER\"]'),
(40, 'Reichel, McDermott and Denesik', '$2y$10$0Z/nQQs8BKy9LwpF69BfA.02M40SpimUgmHAmOO/wIrWpeVryORHm', '[\"ROLE_CUSTOMER\"]');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `os` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `brand`, `name`, `price`, `os`, `color`, `storage`, `slug`) VALUES
(1, 'BileMo', 'BileMo 1', 857.61, 'Android', 'Black', '128GB', 'bilemo-1'),
(2, 'BileMo', 'BileMo 2', 920.26, 'Android', 'Black', '128GB', 'bilemo-2'),
(3, 'BileMo', 'BileMo 3', 265.43, 'Android', 'Black', '128GB', 'bilemo-3'),
(4, 'BileMo', 'BileMo 4', 187.21, 'Android', 'Black', '128GB', 'bilemo-4'),
(5, 'BileMo', 'BileMo 5', 810.18, 'Android', 'Black', '128GB', 'bilemo-5'),
(6, 'BileMo', 'BileMo 6', 560.09, 'Android', 'Black', '128GB', 'bilemo-6'),
(7, 'BileMo', 'BileMo 7', 631.94, 'Android', 'Black', '128GB', 'bilemo-7'),
(8, 'BileMo', 'BileMo 8', 533.26, 'Android', 'Black', '128GB', 'bilemo-8'),
(9, 'BileMo', 'BileMo 9', 598.39, 'Android', 'Black', '128GB', 'bilemo-9'),
(10, 'BileMo', 'BileMo 10', 373.11, 'Android', 'Black', '128GB', 'bilemo-10'),
(11, 'BileMo', 'BileMo 11', 392.34, 'Android', 'Black', '128GB', 'bilemo-12'),
(12, 'BileMo', 'BileMo 12', 813.05, 'Android', 'Black', '128GB', 'bilemo-12'),
(13, 'BileMo', 'BileMo 13', 650.82, 'Android', 'Black', '128GB', 'bilemo-13'),
(14, 'BileMo', 'BileMo 14', 613.18, 'Android', 'Black', '128GB', 'bilemo-14'),
(15, 'BileMo', 'BileMo 15', 182.22, 'Android', 'Black', '128GB', 'bilemo-15'),
(16, 'BileMo', 'BileMo 16', 922.05, 'Android', 'Black', '128GB', 'bilemo-16'),
(17, 'BileMo', 'BileMo 17', 644.2, 'Android', 'Black', '128GB', 'bilemo-17'),
(18, 'BileMo', 'BileMo 18', 740.61, 'Android', 'Black', '128GB', 'bilemo-18'),
(19, 'BileMo', 'BileMo 19', 655.74, 'Android', 'Black', '128GB', 'bilemo-19'),
(20, 'BileMo', 'BileMo 20', 262.36, 'Android', 'Black', '128GB', 'bilemo-20'),
(21, 'BileMo', 'BileMo 21', 783.52, 'Android', 'Black', '128GB', 'bilemo-21'),
(22, 'BileMo', 'BileMo 22', 898.07, 'Android', 'Black', '128GB', 'bilemo-22'),
(23, 'BileMo', 'BileMo 23', 490.78, 'Android', 'Black', '128GB', 'bilemo-23'),
(24, 'BileMo', 'BileMo 24', 814.13, 'Android', 'Black', '128GB', 'bilemo-24'),
(25, 'BileMo', 'BileMo 25', 779.24, 'Android', 'Black', '128GB', 'bilemo-25'),
(26, 'BileMo', 'BileMo 26', 123.45, 'Android', 'Black', '128GB', 'bilemo-26'),
(27, 'BileMo', 'BileMo 27', 234.56, 'Android', 'White', '64GB', 'bilemo-27'),
(28, 'BileMo', 'BileMo 28', 345.67, 'iOS', 'Gold', '256GB', 'bilemo-28'),
(29, 'BileMo', 'BileMo 29', 456.78, 'Android', 'Silver', '128GB', 'bilemo-29'),
(30, 'BileMo', 'BileMo 30', 567.89, 'iOS', 'Rose Gold', '64GB', 'bilemo-30'),
(31, 'BileMo', 'BileMo 31', 678.9, 'Android', 'Black', '128GB', 'bilemo-31'),
(32, 'BileMo', 'BileMo 32', 789.01, 'iOS', 'Gold', '256GB', 'bilemo-32'),
(33, 'BileMo', 'BileMo 33', 890.12, 'Android', 'White', '128GB', 'bilemo-33'),
(34, 'BileMo', 'BileMo 34', 901.23, 'iOS', 'Silver', '64GB', 'bilemo-34'),
(35, 'BileMo', 'BileMo 35', 123.45, 'Android', 'Black', '128GB', 'bilemo-35'),
(36, 'BileMo', 'BileMo 36', 234.56, 'iOS', 'Gold', '256GB', 'bilemo-36'),
(37, 'BileMo', 'BileMo 37', 345.67, 'Android', 'White', '64GB', 'bilemo-37'),
(38, 'BileMo', 'BileMo 38', 456.78, 'iOS', 'Rose Gold', '128GB', 'bilemo-38'),
(39, 'BileMo', 'BileMo 39', 567.89, 'Android', 'Silver', '128GB', 'bilemo-39'),
(40, 'BileMo', 'BileMo 40', 678.9, 'iOS', 'Gold', '256GB', 'bilemo-40'),
(41, 'BileMo', 'BileMo 41', 789.01, 'Android', 'Black', '128GB', 'bilemo-41'),
(42, 'BileMo', 'BileMo 42', 890.12, 'iOS', 'Silver', '64GB', 'bilemo-42'),
(43, 'BileMo', 'BileMo 43', 901.23, 'Android', 'White', '128GB', 'bilemo-43'),
(44, 'BileMo', 'BileMo 44', 123.45, 'iOS', 'Gold', '256GB', 'bilemo-44'),
(45, 'BileMo', 'BileMo 45', 234.56, 'Android', 'Black', '128GB', 'bilemo-45'),
(46, 'BileMo', 'BileMo 46', 345.67, 'iOS', 'Rose Gold', '64GB', 'bilemo-46'),
(47, 'BileMo', 'BileMo 47', 456.78, 'Android', 'Silver', '128GB', 'bilemo-47'),
(48, 'BileMo', 'BileMo 48', 567.89, 'iOS', 'Gold', '256GB', 'bilemo-48'),
(49, 'BileMo', 'BileMo 49', 678.9, 'Android', 'Black', '128GB', 'bilemo-49'),
(50, 'BileMo', 'BileMo 50', 789.01, 'iOS', 'Silver', '64GB', 'bilemo-50');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `customer_id`, `first_name`, `last_name`) VALUES
(1, 16, 'Liliane', 'Price'),
(2, 30, 'Soledad', 'Lemke'),
(3, 5, 'Tate', 'Barrows'),
(4, 22, 'Raphaelle', 'Davis'),
(5, 30, 'Natasha', 'Boehm'),
(6, 13, 'Patricia', 'Weimann'),
(7, 25, 'Brooklyn', 'Bailey'),
(8, 11, 'Rebeka', 'Ferry'),
(9, 17, 'Nathaniel', 'Rohan'),
(10, 13, 'Jakayla', 'Schaden'),
(11, 33, 'Leora', 'Graham'),
(12, 4, 'Bill', 'Fadel'),
(13, 18, 'Nichole', 'Murazik'),
(14, 25, 'Tania', 'Ryan'),
(15, 26, 'Amelia', 'Roberts'),
(16, 27, 'Dudley', 'Johns'),
(17, 5, 'Dovie', 'Adams'),
(18, 14, 'Alanis', 'Leffler'),
(19, 13, 'Juliet', 'McLaughlin'),
(20, 35, 'Molly', 'Moore'),
(21, 11, 'America', 'Kris'),
(22, 11, 'Eugenia', 'Mraz'),
(23, 11, 'Kaleigh', 'Ledner'),
(24, 23, 'Martina', 'Crona'),
(25, 6, 'Taylor', 'Beatty'),
(26, 13, 'Kamren', 'Schulist'),
(27, 19, 'Zetta', 'Strosin'),
(28, 33, 'Nathen', 'Luettgen'),
(29, 40, 'Ludie', 'Howell'),
(30, 33, 'Charlotte', 'Heller'),
(31, 21, 'Dillon', 'Ortiz'),
(32, 16, 'Samir', 'Prohaska'),
(33, 23, 'Ardith', 'Parisian'),
(34, 17, 'Tavares', 'Wiza'),
(35, 30, 'Syble', 'Russel'),
(36, 16, 'Kyler', 'Wiegand'),
(37, 14, 'Hazel', 'Jacobs'),
(38, 21, 'Pat', 'Purdy'),
(39, 19, 'D\'angelo', 'Rodriguez'),
(40, 7, 'Donald', 'Kuhic');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8D93D6499395C3F3` (`customer_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D6499395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
