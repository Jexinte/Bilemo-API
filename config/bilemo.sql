-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 02 nov. 2023 à 11:52
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
(1, 'Lemke, Kautzer and Gislason', '$2y$10$f97PAA5sRL2ky1YR6VHLF.R1dRXMTOi8Q48WWYtpLkPn33asI5FCK', '[\"ROLE_CUSTOMER\"]'),
(2, 'Cole-Nader', '$2y$10$TY0UESIbPtxcZ1xS63g48.GNECCmJ6Zv3CahKbMNCIPuFYh9Vrt8q', '[\"ROLE_CUSTOMER\"]'),
(3, 'Ernser-Paucek', '$2y$10$k22N5m7TXyv096nWE0ktFuhEFCcWgq.fpFovbz4n23wDbe8JpUl.C', '[\"ROLE_CUSTOMER\"]'),
(4, 'Gislason-Schultz', '$2y$10$I.3gX51L6PKPSWEjwi3u/OwwD/GIJGQKCbvZpkYE90ekWyPsNdNwm', '[\"ROLE_CUSTOMER\"]'),
(5, 'Daniel-Schmitt', '$2y$10$f7EdzjNIexBNyLEQjsTiC.OaERS0GqBo4VrtoVZGCVTT.zvi45xhO', '[\"ROLE_CUSTOMER\"]'),
(6, 'Cronin Group', '$2y$10$4BRuCv926S.cpS/OpPANjOxiUlM/9dDWrfDIqtjYhzzjrJZVaNC02', '[\"ROLE_CUSTOMER\"]'),
(7, 'Hahn-Moore', '$2y$10$pP4i1.y0SAs0Z4P7AHmRWutKdU/JKo1eh7IoIrCgY8ACnF1clZDtu', '[\"ROLE_CUSTOMER\"]'),
(8, 'Weber LLC', '$2y$10$/vbOd2A6hxQAafdEDZXfiOuTnvk9Qp6SFcUFKGrDcATS/JFh24Q..', '[\"ROLE_CUSTOMER\"]'),
(9, 'Schmeler-Mitchell', '$2y$10$RrZMSadqT4LkVw0gGviu2edgO1zUtumlpSA2tIH0NyqITP2lLxK7O', '[\"ROLE_CUSTOMER\"]'),
(10, 'Stark, Cole and Hansen', '$2y$10$1LFWpKPT3BP9TDRymr3gEeUH/8xa3J1SMu.5XUvxRh9fNZczoyk9O', '[\"ROLE_CUSTOMER\"]'),
(11, 'Von Group', '$2y$10$pDAIr7mZlXj.wsHrUc4wp.otM44Y3M0yHciB9evjrwdw9GE4ricq2', '[\"ROLE_CUSTOMER\"]'),
(12, 'O\'Kon-Daniel', '$2y$10$FiosXpSPyoFli0SuFiGgCunSCeitBcyNoo6XneNXRo5/gafhUNqBS', '[\"ROLE_CUSTOMER\"]'),
(13, 'Williamson Ltd', '$2y$10$LHDNnAt9nDRiGY4PXXUSiOQqEeQ0lYtplAW2TX8ADWt0WboTRuRF6', '[\"ROLE_CUSTOMER\"]'),
(14, 'Ebert Group', '$2y$10$3a68Zx0bm4fNFphfZsWuGu5GGkEt0GRmCmeN1tovL0klGn4BHZDwe', '[\"ROLE_CUSTOMER\"]'),
(15, 'Schuppe and Sons', '$2y$10$mdZsJ934jyVBSWc78F/eDu1y6FGX7q9C6gZeEjijZElJmgou5JYyW', '[\"ROLE_CUSTOMER\"]'),
(16, 'Collins, Abernathy and Schroeder', '$2y$10$53FDhTryC28NfP43ysuU7ehp0oxskzRgfubx2QI.3hz8YHN2HHhEu', '[\"ROLE_CUSTOMER\"]'),
(17, 'Kihn, Breitenberg and Labadie', '$2y$10$irhzDxgtHpYoRMhEfIwb7ORuSnJq54Ro8v9xrnSsttbXOrA8AAkta', '[\"ROLE_CUSTOMER\"]'),
(18, 'Luettgen PLC', '$2y$10$K/DBD9rad96C2oGQUO6lVOrg9V8Gph3N7iAwjT1XSCXwKzmYbctcq', '[\"ROLE_CUSTOMER\"]'),
(19, 'Schaden Group', '$2y$10$13w9alXeYhLoVdtaVMekteMxTvNDbKHbNP8yanb7iHJZbNMY82c5q', '[\"ROLE_CUSTOMER\"]'),
(20, 'Greenfelder-Hill', '$2y$10$1jVV.kYfXdXVQbP7W8P5XOitX4bthEl.Lc/jkKkLPuaYorwxR9bee', '[\"ROLE_CUSTOMER\"]'),
(21, 'Abbott-Bailey', '$2y$10$cg2QrqRJdwQos8smQ5tjyuSzHqjRMJDp5.41HiS83EKV7tbvTsDyS', '[\"ROLE_CUSTOMER\"]'),
(22, 'Fritsch-Wiegand', '$2y$10$CubT6c25yJDtJXtJ24t8LO8mdEhgx6vDZrCdcwwhdU/4wdzz2dD2a', '[\"ROLE_CUSTOMER\"]'),
(23, 'Labadie-Hudson', '$2y$10$NCEnD89dXbbNGaMsGuSZ6eRDbzENuiXAVkuQ43pwMO.zjuLtpns5O', '[\"ROLE_CUSTOMER\"]'),
(24, 'Schmidt PLC', '$2y$10$4oWTVVTZ4rsecLb.TdAVpOwSVltOTIpE16eY4aBkja0W4BnIU/Msu', '[\"ROLE_CUSTOMER\"]'),
(25, 'Murphy-Wuckert', '$2y$10$vNLppPj0a5VG8gLf3S7.Ueawk1GmPt2ijk/qp0W8JbrmXxmzbaSLa', '[\"ROLE_CUSTOMER\"]'),
(26, 'Parker, Barton and Graham', '$2y$10$U8EmoICA85Nt20fm4eLUi.GT2frWTPiVyhbc3gVg1zrr/tIRzIBQq', '[\"ROLE_CUSTOMER\"]'),
(27, 'Little, Schmeler and Turner', '$2y$10$rzP.YlYTojX9eU/.YX3IxuojuIuwTe0gEtlMBrSXbaZvZ/RROzoam', '[\"ROLE_CUSTOMER\"]'),
(28, 'Prosacco-Koss', '$2y$10$GCVh.5OHAXU7eV69/LN1pOKhTqc6b310Y8m0jFLOy1GUyvlsPSpmm', '[\"ROLE_CUSTOMER\"]'),
(29, 'Howe and Sons', '$2y$10$Zwoq12U32xLM4SrKFPxHc..k3L4B2CyJyQQbkqNqTxd4xXfTxFEgy', '[\"ROLE_CUSTOMER\"]'),
(30, 'Cummings Inc', '$2y$10$CWab.j9DYE7jJd1oe5LYruVx24IEHTZlhjWN7saqKE3/evTSeZwv.', '[\"ROLE_CUSTOMER\"]'),
(31, 'Koch, Pacocha and Volkman', '$2y$10$TJrDEhJQ24J6MfyAItRtwuZXAtWmHuXwQOsx3GKVDymeZeG3B8mFu', '[\"ROLE_CUSTOMER\"]'),
(32, 'Kautzer, Beier and Strosin', '$2y$10$l7m.w9ue5pyCy4sB7ZzfNOoLpGZ4EW4l12ci3ISYZShFGK.92ORXa', '[\"ROLE_CUSTOMER\"]'),
(33, 'Shanahan-Lakin', '$2y$10$n5nqWdDVJiypnQRQ7g.tCeVFuhLNNt50dMkowcoBUyoWXbaX6uPlO', '[\"ROLE_CUSTOMER\"]'),
(34, 'Klein-Anderson', '$2y$10$in1FTK6v1E2ObVdzANkOPO2pXeKHZGPOiAyyLqhDSDq1zIcO04QSK', '[\"ROLE_CUSTOMER\"]'),
(35, 'Miller-Schumm', '$2y$10$jR/X4eCBMULBZ8bm4Ul62OGW7EE9.LxAZI.L5FVk9dC1wi.mrss0e', '[\"ROLE_CUSTOMER\"]'),
(36, 'Morissette-Stiedemann', '$2y$10$Hl9G1v6hfOi8yOoLtPL6Hex5qbnsVprTup0qRFzR6mcPVlnkkzjyC', '[\"ROLE_CUSTOMER\"]'),
(37, 'Kohler Ltd', '$2y$10$m0oHz1B6wgpm0dybaieCk.S0IF4z2ZJSAn.egL.AQWkiMVlFRjvJG', '[\"ROLE_CUSTOMER\"]'),
(38, 'Blanda, Batz and Waelchi', '$2y$10$ISq85WyNEkW57v.w61WX.uitg2UgFGamUaIfl/hkpuiH.8REalpZG', '[\"ROLE_CUSTOMER\"]'),
(39, 'Abernathy Inc', '$2y$10$Dv7dCd2/OdbuwcESVbKgue5IGWP6yY2nt7C6EHLaHFNmhnjnbon4W', '[\"ROLE_CUSTOMER\"]'),
(40, 'Miller, Ondricka and Labadie', '$2y$10$LbmqM2CCn46EZThxDLSBCesZVnRt0YNmdx3FqhHF3CrYH7G3v8Mnu', '[\"ROLE_CUSTOMER\"]');

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
(1, 27, 'Gwen', 'O\'Reilly'),
(2, 19, 'Sammy', 'Dickinson'),
(3, 24, 'Grady', 'Metz'),
(4, 11, 'Alexander', 'Nitzsche'),
(5, 12, 'Mireya', 'Kohler'),
(6, 21, 'Rosina', 'Vandervort'),
(7, 9, 'America', 'Stamm'),
(8, 25, 'Fern', 'Ziemann'),
(9, 32, 'Priscilla', 'Ankunding'),
(10, 32, 'Oran', 'Quitzon'),
(11, 27, 'Kenyatta', 'Schowalter'),
(12, 33, 'Elmer', 'Hand'),
(13, 1, 'Ayden', 'Hudson'),
(14, 25, 'Berniece', 'West'),
(15, 2, 'Herminia', 'Marks'),
(16, 18, 'Guadalupe', 'Hammes'),
(17, 31, 'Macy', 'Ernser'),
(18, 27, 'Andy', 'Keeling'),
(19, 14, 'Connie', 'Herman'),
(20, 36, 'Nolan', 'Veum'),
(21, 26, 'Zakary', 'Emard'),
(22, 16, 'Marian', 'Champlin'),
(23, 14, 'Aubrey', 'Mraz'),
(24, 30, 'Fernando', 'Ziemann'),
(25, 30, 'Verlie', 'Grady'),
(26, 13, 'Dixie', 'Goyette'),
(27, 39, 'Freda', 'Krajcik'),
(28, 19, 'Reva', 'Keeling'),
(29, 16, 'Rosalee', 'Olson'),
(30, 34, 'Madyson', 'Wintheiser'),
(31, 2, 'Marjory', 'Rice'),
(32, 28, 'Estel', 'Kling'),
(33, 4, 'Lenny', 'Konopelski'),
(34, 32, 'Arno', 'Barrows'),
(35, 37, 'Joan', 'Frami'),
(36, 2, 'Cassidy', 'Roberts'),
(37, 33, 'Georgette', 'Grady'),
(38, 37, 'Valentina', 'Cummings'),
(39, 34, 'Geo', 'Keebler'),
(40, 13, 'Nikita', 'Huels');

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
