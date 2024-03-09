-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/03/2024 às 02:13
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vendas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade`
--

CREATE TABLE `cidade` (
  `id_cidade` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `cod_ibge` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cidade`
--

INSERT INTO `cidade` (`id_cidade`, `nome`, `cod_ibge`) VALUES
(1, 'Umuarama', 123);

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `id_cidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`id_endereco`, `logradouro`, `bairro`, `id_cidade`) VALUES
(1, 'Rua a', 'centro', 1),
(2, 'Rua a', 'centro', 1),
(3, 'Rua a', 'centro', 1),
(4, 'Rua a', 'centro', 1),
(5, 'Rua a', 'centro', 1),
(6, 'Rua a', 'centro', 1),
(7, 'Rua a', 'centro', 1),
(8, 'Rua a', 'centro', 1),
(9, 'Rua a', 'centro', 1),
(10, 'Rua a', 'centro', 1),
(11, 'Rua a', 'centro', 1),
(12, 'Rua a', 'centro', 1),
(13, 'Rua a', 'centro', 1),
(14, 'Rua a', 'centro', 1),
(15, 'Rua a', 'centro', 1),
(16, 'Rua a', 'centro', 1),
(17, 'Rua a', 'centro', 1),
(18, 'Rua a', 'centro', 1),
(19, 'Rua a', 'centro', 1),
(20, 'Rua a', 'centro', 1),
(21, 'Rua a', 'centro', 1),
(22, 'Rua a', 'centro', 1),
(23, 'Rua ', 'adfa', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbestados`
--

CREATE TABLE `tbestados` (
  `id_estado` int(11) NOT NULL,
  `nome_estado` varchar(100) NOT NULL,
  `sigla_estado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbestados`
--

INSERT INTO `tbestados` (`id_estado`, `nome_estado`, `sigla_estado`) VALUES
(1, 'Umuarama', 'pr'),
(2, 'Mato Grosso', 'MG'),
(3, 'Santa Catarina', 'SC');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id_cidade`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id_endereco`),
  ADD KEY `endereco_FK` (`id_cidade`);

--
-- Índices de tabela `tbestados`
--
ALTER TABLE `tbestados`
  ADD PRIMARY KEY (`id_estado`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `tbestados`
--
ALTER TABLE `tbestados`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_FK` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
