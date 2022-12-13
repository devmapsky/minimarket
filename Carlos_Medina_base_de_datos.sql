-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2022 a las 21:12:34
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `merca_facil`
--
CREATE DATABASE IF NOT EXISTS `merca_facil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `merca_facil`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(2, 'Bebidas'),
(10, 'Aseo'),
(11, 'Lacteos'),
(12, 'Especias'),
(13, 'Aseo personal'),
(14, 'Desechables'),
(15, 'Embutidos'),
(16, 'Granos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_normal` decimal(10,2) NOT NULL,
  `precio_rebajado` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_normal`, `precio_rebajado`, `cantidad`, `imagen`, `id_categoria`) VALUES
(5, 'Vino', 'Ninguna', '28.00', '20.00', 30, '20211212082421.jpg', 2),
(6, 'Coca cola', '1.5 ml', '5.00', '5.00', 15, '20211212082628.jpg', 2),
(11, 'Gaseosa Sprite', 'Gaseosa Sprite de 2.5 litros', '5000.00', '4300.00', 12, '20221127202837.jpg', 2),
(12, 'Gaseosa Colombiana', 'Gaseosa Colombiana  2.5 litros', '6200.00', '5200.00', 8, '20221127202942.jpg', 2),
(13, 'Yogurt yogoyogo', 'Yogoyogo personal', '1500.00', '0.00', 15, '20221127203042.jpg', 2),
(14, 'Leche por paca de 6', 'Paca de leche ato grande 1000 ml', '18100.00', '15200.00', 8, '20221127203315.jpg', 2),
(15, 'Gatorate', 'Gatorate hidratante por unidad', '2600.00', '0.00', 10, '20221127203511.jpg', 2),
(16, 'Energizante ReD Bull', 'Energizante por unidad ', '4500.00', '0.00', 9, '20221127203544.jpg', 2),
(17, 'Libra de arroz', 'Libra de arroz 500 gr', '3000.00', '0.00', 9, '20221127203840.jpg', 16),
(18, 'lona arroz', 'Lona de arroz roa', '30000.00', '0.00', 5, '20221127203918.jpg', 16),
(19, 'Libra arveja', 'Libra arveja 500 gr', '3000.00', '2800.00', 12, '20221127203958.jpg', 16),
(20, 'Libra Frijol', 'Fijo rojo 500 gr', '2000.00', '1800.00', 7, '20221127204058.jpg', 16),
(21, 'Aceite tamaño familiar', 'Aceite riquisimo', '25000.00', '24000.00', 8, '20221127204134.jpg', 16),
(22, 'Shampoo', 'Shampoo con aceite de argan', '22000.00', '20000.00', 16, '20221127204527.jpg', 10),
(23, 'Jabon liquido para manos', 'Jabon para manos tradicional', '12000.00', '10000.00', 20, '20221127204612.jpg', 10),
(24, 'Jabon liquido Axion', 'Jabon Axion para loza', '15000.00', '12300.00', 12, '20221127204644.jpg', 10),
(25, 'Papel Higienico ', 'Paca papel higienico x 12', '24000.00', '20000.00', 6, '20221127204730.jpg', 10),
(26, 'Jabon savital', 'Jabon para cuerpo savital', '1200.00', '0.00', 25, '20221127204819.jpg', 10),
(27, 'kumis', 'kumis familiar', '3600.00', '0.00', 12, '20221127205151.jpg', 11),
(28, 'leche gloria', 'Leche grupo Gloria', '4500.00', '4200.00', 8, '20221127205222.jpg', 11),
(29, 'Queso', 'Libra de queso', '3500.00', '0.00', 6, '20221127205247.jpg', 11),
(30, 'Yogurt', 'Yogurt tamaño familiar', '15600.00', '14000.00', 10, '20221127205328.jpg', 11),
(31, 'Desodorante', 'Desodorane AXE', '17000.00', '0.00', 8, '20221127205629.jpg', 13),
(32, 'Cepillo dental', 'Cepillo dental colgate', '2000.00', '0.00', 13, '20221127205701.jpg', 13),
(33, 'Cucharas desechables', 'Cucharas desechables por paquete', '6000.00', '0.00', 8, '20221127205946.jpg', 14),
(34, 'Vasos desechables', 'Vasos desechables x10', '12000.00', '9000.00', 9, '20221127210016.jpg', 14),
(35, 'Tenedor desechable', 'Tenedores desechables por paquete', '6000.00', '5200.00', 9, '20221127210619.jpg', 14),
(36, 'Platos desechables', 'Platos por paquete', '6000.00', '0.00', 8, '20221127210655.jpg', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `clave`) VALUES
(1, 'admin', 'Miguel Pinilla', '21232f297a57a5a743894a0e4a801fc3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
