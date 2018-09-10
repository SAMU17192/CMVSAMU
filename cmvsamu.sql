-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09-Set-2018 às 20:18
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cmvsamu`
--
CREATE DATABASE IF NOT EXISTS `cmvsamu` DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci;
USE `cmvsamu`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE IF NOT EXISTS `estoque` (
  `idestoque` int(11) NOT NULL AUTO_INCREMENT,
  `nomepeca` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `quantidade` int(11) NOT NULL,
  `gasto` float NOT NULL,
  PRIMARY KEY (`idestoque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pecas`
--

CREATE TABLE IF NOT EXISTS `pecas` (
  `idpeca` int(11) NOT NULL AUTO_INCREMENT,
  `nomepeca` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `kmlimite` double NOT NULL,
  PRIMARY KEY (`idpeca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `troca`
--

CREATE TABLE IF NOT EXISTS `troca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idveiculo` int(11) NOT NULL,
  `idpeca` int(11) NOT NULL,
  `kmtroca` double NOT NULL,
  `troca` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE IF NOT EXISTS `veiculos` (
  `idveiculo` int(11) NOT NULL AUTO_INCREMENT,
  `placa` varchar(8) COLLATE utf8_swedish_ci NOT NULL,
  `nomeveiculo` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `kmveiculo` double NOT NULL,
  PRIMARY KEY (`idveiculo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `veiculos`
--

INSERT INTO `veiculos` (`idveiculo`, `placa`, `nomeveiculo`, `kmveiculo`) VALUES
(1, 'abc-0001', 'amb01', 10000),
(2, 'abc-0002', 'amb02', 15000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
