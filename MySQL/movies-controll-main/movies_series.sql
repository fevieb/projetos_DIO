-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 30/04/2022 às 01:52
-- Versão do servidor: 10.4.22-MariaDB
-- Versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `controle_filmes_series`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `movies_series`
--

CREATE TABLE `movies_series` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `total_ep` int(11) DEFAULT NULL,
  `atual_ep` int(11) DEFAULT NULL,
  `last_view` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `movies_series`
--

INSERT INTO `movies_series` (`id`, `type`, `name`, `total_ep`, `atual_ep`, `last_view`) VALUES
(1, 0, 'Friends', 236, 1, '2022-04-29'),
(2, 1, 'Avengers', NULL, NULL, '2022-04-29'),
(3, 0, 'Game of Thrones', 73, 1, '2022-04-29'),
(4, 1, 'Lord of the Rings', NULL, NULL, '2022-04-29'),
(5, 1, 'Harry Potter', NULL, NULL, '2022-04-29'),
(6, 0, 'Greek', 74, 1, '2022-04-29'),
(7, 0, 'That\'s 70s Show', 200, 1, '2022-04-29'),
(8, 1, 'Metal Lords', NULL, NULL, '2022-04-29'),
(9, 1, 'Breaking Bad', 62, 1, '2022-04-29');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `movies_series`
--
ALTER TABLE `movies_series`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `movies_series`
--
ALTER TABLE `movies_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
