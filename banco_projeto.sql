-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para banco_projeto
DROP DATABASE IF EXISTS `banco_projeto`;
CREATE DATABASE IF NOT EXISTS `banco_projeto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `banco_projeto`;

-- Copiando estrutura para tabela banco_projeto.contato
DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id_fale` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `assunto` varchar(100) NOT NULL,
  `mensagem` varchar(100) NOT NULL,
  `telefone` int(11) DEFAULT NULL,
  `status_lei` varchar(50) NOT NULL,
  `dthr_status` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_fale`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Copiando dados para a tabela banco_projeto.contato: ~5 rows (aproximadamente)
DELETE FROM `contato`;
INSERT INTO `contato` (`id_fale`, `nome`, `email`, `assunto`, `mensagem`, `telefone`, `status_lei`, `dthr_status`) VALUES
	(1, 'Melissa Cristina', 'melissacristina@gmail.com', 'lento e dificil', 'dkfjkjkel', NULL, '', '0000-00-00 00:00:00'),
	(2, 'Melissa Cristina', 'melissacristina@gmail.com', 'lento e dificil', 'dkfjkjkel', NULL, '', '0000-00-00 00:00:00'),
	(3, 'Melissa Cristina', 'melissacristina@gmail.com', 'lento e dificil', 'dkfjkjkel', NULL, '', '0000-00-00 00:00:00'),
	(4, 'Michele Pasquini', 'michelepasquini@email.com', 'Ela é linda e maravilhosa', 'Muito Eficiente e rápido', NULL, 'Aguardando resposta', '2025-11-18 17:27:34'),
	(5, 'Maria Laura ', 'marialaura@email.com', 'Ela é linda e maravilhosa', 'Muito Eficiente e rápido', NULL, 'Aguardando resposta', '2025-11-18 18:19:32');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
