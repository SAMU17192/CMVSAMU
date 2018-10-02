-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 27-Set-2018 às 18:05
-- Versão do servidor: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmvsamu`
--
CREATE DATABASE IF NOT EXISTS `cmvsamu` DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci;
USE `cmvsamu`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

DROP TABLE IF EXISTS `estoque`;
CREATE TABLE IF NOT EXISTS `estoque` (
  `idestoque` int(11) NOT NULL AUTO_INCREMENT,
  `nomepeca` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `quantidade` int(11) NOT NULL,
  `gasto` float NOT NULL,
  `idpeca` int(11) NOT NULL,
  PRIMARY KEY (`idestoque`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`idestoque`, `nomepeca`, `quantidade`, `gasto`, `idpeca`) VALUES
(1, 'pastilha', 1, 50, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pecas`
--

DROP TABLE IF EXISTS `pecas`;
CREATE TABLE IF NOT EXISTS `pecas` (
  `idpeca` int(11) NOT NULL AUTO_INCREMENT,
  `nomepeca` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `kmlimite` double NOT NULL,
  PRIMARY KEY (`idpeca`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Extraindo dados da tabela `pecas`
--

INSERT INTO `pecas` (`idpeca`, `nomepeca`, `kmlimite`) VALUES
(1, 'pastilha', 15000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `troca`
--

DROP TABLE IF EXISTS `troca`;
CREATE TABLE IF NOT EXISTS `troca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idveiculo` int(11) NOT NULL,
  `idpeca` int(11) NOT NULL,
  `kmtroca` double NOT NULL,
  `valor` float NOT NULL,
  `estoque` varchar(5) COLLATE utf8_swedish_ci NOT NULL,
  `kmatual` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

DROP TABLE IF EXISTS `veiculos`;
CREATE TABLE IF NOT EXISTS `veiculos` (
  `idveiculo` int(11) NOT NULL AUTO_INCREMENT,
  `placa` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `nomeveiculo` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `kmveiculo` double NOT NULL,
  `kmup` int(11) NOT NULL,
  PRIMARY KEY (`idveiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Extraindo dados da tabela `veiculos`
--

INSERT INTO `veiculos` (`idveiculo`, `placa`, `nomeveiculo`, `kmveiculo`, `kmup`) VALUES
(1, 'abc-0001', 'amb01', 10000, 25000),
(2, 'abc-0002', 'amb02', 15000, 15000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
