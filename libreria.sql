-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Temps de generació: 25-05-2025 a les 21:25:09
-- Versió del servidor: 10.4.32-MariaDB
-- Versió de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `libreria`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Bolcament de dades per a la taula `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `autor`, `genero`, `descripcion`, `imagen`) VALUES
(1, 'One Piece #1', 'Eiichiro Oda', 'Manga', 'Primer tomo del famoso manga de aventuras piratas.', 'one_piece.jpg'),
(2, 'Percy Jackson', 'Rick Riordan', 'Fantasía', 'Un joven semidiós se enfrenta a los mitos griegos.', 'percy_jackson.jpg'),
(3, 'El Hobbit', 'J.R.R. Tolkien', 'Fantasía épica', 'La aventura de Bilbo Bolsón antes de El Señor de los Anillos.', 'el_hobbit.jpg'),
(4, 'El Imperio Final', 'Brandon Sanderson', 'Fantasía oscura', 'Primer libro de la saga Mistborn. Un imperio dominado por el mal.', 'imperio_final.jpg'),
(5, 'Divergente', 'Veronica Roth', 'Distopía juvenil', 'En una sociedad dividida, una joven descubre que no encaja.', 'divergente.jpg'),
(6, 'Hulk Inmortal #1', 'Al Ewing', 'Cómic', 'Hulk vuelve con un enfoque oscuro y sobrenatural.', 'hulk_inmortal.jpg'),
(7, 'Harry Potter', 'J.K. Rowling', 'Fantasía mágica', 'La historia del niño mago más famoso del mundo.', 'harry_potter.jpg'),
(8, 'Holly', 'Stephen King', 'Thriller', 'Una novela negra con el personaje de Holly Gibney.', 'holly.jpg'),
(9, 'El Estilo del Barça', 'Martí Perarnau', 'Deporte', 'Análisis táctico y filosófico del juego del FC Barcelona.', 'estilo_barca.jpg'),
(10, 'El Arte de la Guerra', 'Sun Tzu', 'Estrategia', 'Clásico texto militar chino sobre estrategia y táctica.', 'arte_guerra.jpg'),
(11, 'Últimos días en Berlín', 'Paloma Sánchez-Garnica', 'Novela histórica', 'Una historia intensa de amor, esperanza y resistencia en tiempos de guerra, ambientada en la Alemania nazi.', 'ultimos_dias_berlin.jpg');

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
