-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2024 a las 03:39:50
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adminseg_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `icon`) VALUES
(1, 'Stylish', 'https://th.bing.com/th?id=OIP.N9Tu8ZNcgCcpEVNd44swXQHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2'),
(2, 'Casual Sneaker', 'https://th.bing.com/th/id/OIP.pZ4BKD7y8IqzU3A0U2nIwgHaHa?w=182&h=182&c=7&r=0&o=5&pid=1.7'),
(3, 'Sport', 'https://th.bing.com/th/id/OIP.1O1usDbnEIA977CIBB1T5gHaEH?w=300&h=180&c=7&r=0&o=5&pid=1.7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `category_id`) VALUES
(13, 'BlackWhite Snekaer', 'https://media.istockphoto.com/id/1663937651/es/foto/concepto-de-tienda-de-moda-o-revista-zapatos-casuales-cl%C3%A1sicos-en-dise%C3%B1o-minimalista-creativo.jpg?s=612x612&w=is&k=20&c=75PKwfUouMU9dBVRW_-bKmYcQ01V_1c1bQ5_VOWmfHM=', 2),
(14, 'Pink Snekaer', 'https://media.istockphoto.com/id/1436061606/es/foto/zapatilla-de-mujer-voladora-y-colorida-aislada-sobre-fondo-blanco-zapato-deportivo-elegante-de.jpg?s=612x612&w=0&k=20&c=qlI4Cs064MYmir5RnBNfzxLOMjT7Av4NW58wLXffRY8=', 3),
(15, 'Running Sneaker', 'https://media.istockphoto.com/id/1346094881/es/foto/foto-recortada-de-una-mujer-irreconocible-at%C3%A1ndose-los-cordones-de-los-zapatos-mientras-hac%C3%ADa.jpg?s=612x612&w=0&k=20&c=CfL53vTm7uQZNNxGGITYJQmDEHHkfHjWXLu21y-6A_U=', 3),
(16, 'Blue Snekaer', 'https://media.istockphoto.com/id/1249496770/es/foto/zapatillas.jpg?s=612x612&w=0&k=20&c=Arj4lfGFm1ifhSbgn-fC3OZjMzTi34xE1EHdT3Dknmo=', 3),
(17, 'Black Shoe', 'https://media.istockphoto.com/id/172417586/es/foto/elegante-zapatos-de-cuero-negro.jpg?s=612x612&w=0&k=20&c=y0HIZ1DX6qnFfHOKH7KzIM2S6g8Wl1IO5pDy6LrjWoE=', 1),
(18, 'Natural Sneaker', 'https://media.istockphoto.com/id/1339440288/es/foto/zapatos-de-zapatillas-blancas-y-piernas-de-ni%C3%B1a-sobre-fondo-nude-calzado-casual.jpg?s=612x612&w=0&k=20&c=w3c8iNswcY7jeAPuXy67q2p_P86gDA-8eiZrrh1RgJY=', 2),
(19, 'Yellow Sneaker', 'https://media.istockphoto.com/id/171224469/es/foto/zapatos-de-lona.jpg?s=612x612&w=0&k=20&c=DqWaqD5s54W-IkoH9M_UbvzwFlzOG_GA5nX0yUFn0_Y=', 2),
(20, 'Brown Shoe', 'https://media.istockphoto.com/id/187310279/es/foto/zapato-de-cuero-marr%C3%B3n.jpg?s=612x612&w=0&k=20&c=j5XzNWO7EVBeU0THtZNJOTAoiAwj12YyueC8H9Ny1RI=', 1),
(21, 'Red Shoe', 'https://media.istockphoto.com/id/172421765/es/foto/zapatillas-rojas.jpg?s=612x612&w=0&k=20&c=apMbQNHphG5KUEnWONo7d06XLmjpX7BexC4wm4RjsGs=', 1),
(22, 'Green Sneaker', 'https://media.istockphoto.com/id/471916961/es/foto/sneaker-verde-sobre-un-fondo-blanco.jpg?s=612x612&w=0&k=20&c=UCpk4JBGspIfb4G31nk3LhasPTfDQQNMSk7AXS99fd8=', 2),
(23, 'White Sneaker', 'https://media.istockphoto.com/id/695474472/es/foto/tiro-arriba-de-zapatillas-blancas-en-fondo-rosa.jpg?s=612x612&w=0&k=20&c=4gcZ-p26sPMrXboP-Lb17PdFwBJUSRZBRGXm4VEchYk=', 2),
(24, 'Purple Shoe', 'https://media.istockphoto.com/id/682005668/es/foto/fotograf%C3%ADa-de-moda.jpg?s=612x612&w=0&k=20&c=CBJnSnJHlEH3k6qLHh0qpyybFpjLNqgH2qNbK1CIUU0=', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `roles`) VALUES
(7, 'adminseg', 'adminseg@mail.com', '$2y$13$az0VEIXGwqRamEjuwkKoNeP3lYbjOc6UiCK8K4pgmkt8X27w.4euS', '[\"ROLE_ADMIN\"]');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
