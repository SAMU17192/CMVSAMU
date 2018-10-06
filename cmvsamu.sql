-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 05-Out-2018 às 22:57
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
  `IdEstoque` int(11) NOT NULL AUTO_INCREMENT,
  `NomePeca` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `LocalCompra` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `NotaF` int(11) NOT NULL,
  `ValorCompra` double NOT NULL,
  `DataEstoque` date NOT NULL,
  PRIMARY KEY (`IdEstoque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historicotroca`
--

CREATE TABLE IF NOT EXISTS `historicotroca` (
  `IdHis` int(11) NOT NULL AUTO_INCREMENT,
  `NomeVeiculo` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `NomePeca` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `KmTroca` double NOT NULL,
  `Estoque` int(11) NOT NULL,
  `Valor` double NOT NULL,
  `NumeroNota` int(11) NOT NULL,
  `LocalCompra` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `Data` date NOT NULL,
  PRIMARY KEY (`IdHis`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `historicotroca`
--

INSERT INTO `historicotroca` (`IdHis`, `NomeVeiculo`, `NomePeca`, `KmTroca`, `Estoque`, `Valor`, `NumeroNota`, `LocalCompra`, `Data`) VALUES
(1, 'AMB-1', 'Pastilha de Freio', 35000, 0, 150, 0, 'Teste', '2018-10-04'),
(2, 'AMB-1', 'Pastilha de Freio', 35000, 1, 0, 0, 'Teste', '2018-10-04'),
(3, 'AMB-02', 'Pastilha de Freio', 65000, 0, 250, 0, 'Teste', '2018-10-05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pecas`
--

CREATE TABLE IF NOT EXISTS `pecas` (
  `IdPeca` int(11) NOT NULL AUTO_INCREMENT,
  `NomePeca` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `DescricaoPeca` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `KmLimitePeca` double NOT NULL,
  PRIMARY KEY (`IdPeca`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `pecas`
--

INSERT INTO `pecas` (`IdPeca`, `NomePeca`, `DescricaoPeca`, `KmLimitePeca`) VALUES
(1, 'Pastilha de Freio', 'Para Freiar', 25000),
(2, 'Pneu', 'Grira e faz o carro andar', 65000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `trocas`
--

CREATE TABLE IF NOT EXISTS `trocas` (
  `IdTroca` int(11) NOT NULL AUTO_INCREMENT,
  `IdVeiculo` int(11) NOT NULL,
  `IdPeca` int(11) NOT NULL,
  `KmTroca` double NOT NULL,
  `KmAtual` double NOT NULL,
  `KmLimiite` double NOT NULL,
  `Troca` int(11) NOT NULL,
  PRIMARY KEY (`IdTroca`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `trocas`
--

INSERT INTO `trocas` (`IdTroca`, `IdVeiculo`, `IdPeca`, `KmTroca`, `KmAtual`, `KmLimiite`, `Troca`) VALUES
(1, 1, 1, 35000, 35000, 25000, 0),
(2, 2, 1, 65000, 65000, 25000, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE IF NOT EXISTS `veiculos` (
  `IdVeiculo` int(11) NOT NULL AUTO_INCREMENT,
  `NomeVeiculo` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `PlacaVeiculo` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `KmVeiculo` double NOT NULL,
  PRIMARY KEY (`IdVeiculo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `veiculos`
--

INSERT INTO `veiculos` (`IdVeiculo`, `NomeVeiculo`, `PlacaVeiculo`, `KmVeiculo`) VALUES
(1, 'AMB-1', 'EOB-0001', 10000),
(2, 'AMB-02', 'EOB-0002', 25000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
