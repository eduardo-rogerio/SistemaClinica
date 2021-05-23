-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 23-Maio-2021 às 12:40
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamento`
--

DROP TABLE IF EXISTS `agendamento`;
CREATE TABLE IF NOT EXISTS `agendamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` varchar(8) NOT NULL,
  `especialidade` varchar(25) NOT NULL,
  `medico` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_paciente` (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `agendamento`
--

INSERT INTO `agendamento` (`id`, `id_paciente`, `data`, `hora`, `especialidade`, `medico`) VALUES
(1, 2, '2020-05-25', '08:00', 'Cardiologista', 'Dr.José'),
(2, 4, '2020-06-01', '14:00', 'Ortopedista', 'Dr.Junio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `celular` varchar(16) NOT NULL,
  `data_cadastro` date NOT NULL,
  `cpf` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`id`, `nome`, `celular`, `data_cadastro`, `cpf`) VALUES
(1, 'Danilo Kaique Freitas', '(27)9.8903-7853', '2021-05-22', '255.999.542-50'),
(2, 'Julio Nathan Lopes', '(19)9.9440-5664', '2021-05-22', '322.359.202-41'),
(3, 'Daiane Lorena Gomes', '(98)9.8356-6096', '2021-05-22', '209.614.388-86'),
(4, 'Sophie Olivia Carvalho', '(65)9.8458-9606', '2021-05-22', '591.167.264-21'),
(5, 'Fernanda Allana Ferreira', '(91)9.9896-1834', '2021-05-22', '056.635.232-00'),
(6, 'Benício Nicolas Monteiro', '(96)9.8505-8552', '2021-05-22', '747.328.262-02'),
(7, 'Igor Thiago Almada', '(42)9.8885-0218', '2021-05-22', '299.247.700-13'),
(8, 'Allana Andrea Gonçalves', '(34)9.9131-4813', '2021-05-22', '083.843.152-64'),
(9, 'Martin Lucas Campos', '(68)9.9220-2623', '2021-05-22', '014.338.152-06'),
(10, 'Manuela Fernanda Regina Nascimento', '(81)9.8897-7856', '2021-05-22', '855.167.791-89');

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD CONSTRAINT `agendamento_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
