-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-07-2023 a las 00:38:10
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sigma`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auto`
--

CREATE TABLE `auto` (
  `id` int(8) NOT NULL,
  `sap` int(8) NOT NULL,
  `codauto` int(8) NOT NULL,
  `marca` varchar(15) NOT NULL,
  `descrip` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auto`
--

INSERT INTO `auto` (`id`, `sap`, `codauto`, `marca`, `descrip`) VALUES
(252, 14295, 210011, 'DEL PRADO', 'QUESO TURRIALBA 300GR'),
(3, 983, 195431, 'FUD', 'SALCHICHA DE PAVO HOT DOG 500GR'),
(4, 9147, 179174, 'YOPLAIT', 'YOGURT GRIEGO BATIDO NATURAL 1KG'),
(8, 9296, 1806737, 'YOPLAIT', 'YOGURTFRESA MINI 8PACK 800GR'),
(278, 406126, 216293, 'YOPLAIT', 'YOGURT NARANJA HOLANDESA 200GR'),
(10, 9314, 179173, 'YOPLAIT', ' YOGURT GRIEGO BATIDO NATURAL 442GR'),
(11, 9517, 198447, 'YOPLAIT', 'YOGURT GRIEGO BATIDO S/A NATURAL  1KG'),
(12, 9528, 198448, 'YOPLAIT', 'YOGURT GRIEGO BATIDO S/A FRESA 145GR'),
(14, 9532, 198449, 'YOPLAIT', 'YOGURT GRIEGO BATIDO S/A COCO 145GR'),
(16, 9553, 198446, 'YOPLAIT', 'YOGURT GRIEGO BATIDO S/A NATURAL 145GR'),
(18, 11862, 179494, 'DEL PRADO', 'QUESO SEMIDURO 500GR'),
(275, 405546, 215284, 'FUD', 'SANDWICH PACK 500GR'),
(21, 11888, 180325, 'MONTE VERDE', 'QUESO RICOTTA 300GR'),
(22, 11889, 185302, 'SAN RAFAEL', 'CHORIZO DE CERDO CON CHEDDAR 600GR'),
(23, 11890, 185248, 'SAN RAFAEL', 'CHORIZO DE CERDO CON CHIPOTLE 600GR'),
(24, 11891, 185303, 'SAN RAFAEL', 'CHORIZO DE CERDO FINAS HIERBAS 600GR'),
(25, 13101, 583256, 'ZAR', 'JAMON VIRGINIA GRANEL'),
(26, 13119, 583250, 'ZAR', 'JAMON AHUMADO GRANEL'),
(27, 13122, 584100, 'ZAR', 'JAMON COCIDO GRANEL'),
(28, 13132, 583060, 'SAN RAFAEL', 'PECHUGA DE PAVO AHUMADO BALANCE GRANEL'),
(29, 13136, 104437, 'SAN RAFAEL', 'PIERNA AHUAMADA NAVIDEÃ‘O 1.5KG'),
(30, 13139, 104414, 'FUD', 'JAMON POLLO NAVIDEÑ0 900GR'),
(31, 13156, 583910, 'ZAR', 'JAMON AHUMADO LITE 250GR'),
(32, 13158, 583054, 'ZAR', 'JAMON COCIDO 250GR'),
(33, 13165, 528934, 'ZAR', 'JAMON PRENSADO 250GR'),
(34, 13170, 21540, 'FUD', 'JAMON PAVO 250GR'),
(35, 13173, 27445, 'FUD', 'PECHUGA DE PAVO 250GR'),
(36, 13252, 34436, 'FUD', 'SALCHICHON JAMONADO DE PAVO 500GR'),
(38, 13255, 665103, 'SAN RAFAEL', 'SALCHICHON ITALIANO 500GR'),
(39, 13289, 664400, 'ZAR', 'SALCHICHA HOT DOG'),
(40, 13326, 104672, 'ZAR', 'SALCHICHA AHUMADA 330GR'),
(41, 13334, 663151, 'ZAR', 'SALAME COCIDO GRANEL'),
(42, 13361, 631125, 'ZAR', 'PATE BURBUJA 100GR'),
(43, 13393, 538306, 'ZAR', 'CHORIZO PRECOCIDO 2KG'),
(45, 13403, 538503, 'ZAR', 'CHORIZO PRECOCIDO 600GR'),
(46, 13408, 104435, 'SAN RAFAEL', 'PIERNA AHUAMADA NAVIDEÑO 4-5 KILO'),
(48, 13429, 125472, 'SAN RAFAEL', 'PAVO ASADO NAVIDEÑO'),
(50, 13458, 682450, 'ZAR', 'TOCINETA AHUMADA 300GR'),
(51, 13515, 82166, 'ZAR', 'SALCHICHA COCTEL 300GR'),
(52, 13516, 82167, 'ZAR', 'SALCHICHA DESAYUNO ES 330GR'),
(53, 13538, 81202, 'ZAR', 'SALAME COCIDO 200 GR'),
(54, 13543, 116691, 'FUD', 'SALCHICHA DE PAVO 350GR EMP.SEM.'),
(55, 13561, 191563, 'FUD', 'MORTADELA JAMONADA 250GR'),
(56, 13583, 101363, 'ZAR', 'PECHUGA DE PAVO NATURAL'),
(57, 13600, 198460, 'YOPLAIT', 'YOGURT FRUTAS TROPICALES 1.8L'),
(58, 13602, 699913, 'YOPLAIT', 'YOGURT FRESA 235GR'),
(59, 13603, 699911, 'YOPLAIT', 'YOGURT FRUTAS TROPICALES 235GR'),
(60, 13606, 699916, 'YOPLAIT', 'YOGURT PIÃ‘A COLADA 235GR'),
(61, 13607, 699909, 'YOPLAIT', 'YOGURT MELOCOTON 750GR'),
(62, 13608, 699908, 'YOPLAIT', 'YOGURT FRESA 750GR'),
(63, 13614, 13223, 'YOPLAIT', 'YOGURT MELOCOTON LIGHT 230GR'),
(64, 13615, 13224, 'YOPLAIT', 'YOGURT FRESA LIGHT 230GR'),
(65, 13616, 13222, 'YOPLAIT', 'YOGURT FRUTAS TROPICALES LIGHT 230GR'),
(66, 13618, 43263, 'YOPLAIT', 'YOGURT FRESA LIGHT 750GR'),
(67, 13619, 43262, 'YOPLAIT', 'YOGURT FRUTAS TROPICALES LIGHT 750GR'),
(68, 13636, 198453, 'YOPLAIT', 'YOGURT BATIDO NATURAL 1KG'),
(69, 13651, 197097, 'YOPLAIT', 'DULCE DE LECHE 100GR'),
(70, 13665, 700008, 'YOPLAIT', 'YOGURT FRESA LIGHT 125GR'),
(71, 13667, 700004, 'YOPLAIT', 'YOGURT MELOCOTON LIGHT 125GR'),
(72, 13669, 699902, 'YOPLAIT', 'YOGURT MELOCOTON 125GR'),
(73, 13670, 699901, 'YOPLAIT', 'YOGURT FRESA 125GR'),
(74, 13672, 699921, 'YOPLAIT', 'YOGURT MANZANA 125GR'),
(75, 13673, 699906, 'YOPLAIT', 'YOGURT NATURAL 125GR'),
(77, 13683, 700115, 'YOPLAIT', 'YOGURT NATURAL 500GR'),
(78, 13710, 654105, 'DEL PRADO', 'QUESO PALMITO 400GR'),
(79, 13720, 651451, 'DEL PRADO', 'QUESO TURRIALBA BLOCK'),
(80, 13726, 651452, 'DEL PRADO', 'QUESO SEMIDURO BLOCK'),
(81, 13746, 196866, 'DEL PRADO', 'SALSA DE QUESO 180GR'),
(83, 13828, 86197, 'DEL PRADO', 'QUESO CREMOSO GRANEL'),
(84, 13840, 163950, 'YOPLAIT', 'YOGURT ARANDANOS 750GR'),
(85, 13852, 118389, 'DEL PRADO', 'NATILLA CON SAL DOY PACK 400GR'),
(86, 13862, 115394, 'DEL PRADO', 'QUESO PROCESADO AMERICANO 12 REB.'),
(87, 13888, 192893, 'KRAFT', 'QUESO MOZZARELLA RALLADO 226GR'),
(88, 13905, 196861, 'DEL PRADO', 'NATILLA 12% LIVIANA 700 GR'),
(89, 13909, 27972, 'DEL PRADO', 'NATILLA 18% CON SAL 300GR'),
(90, 14041, 161540, 'SAN RAFAEL', 'JAMON DE CERDO SELECCION NATURAL 2KG'),
(91, 14086, 125035, 'FUD', 'SALCHICHA AHUMADA 500GR'),
(92, 14185, 651449, 'DEL PRADO', 'QUESO MOZZARELLA RALLADO 227GR'),
(93, 14186, 107704, 'DEL PRADO', 'QUESO MEZCLA MOZZ Y CHEDDAR RALLADO 227GR'),
(95, 14274, 187383, 'SAN RAFAEL', 'JAMON DE CERDO SELECCION NATURAL 250GR'),
(96, 14277, 187382, 'SAN RAFAEL', 'PECHUGA DE PAVO SELECCION NATURAL 250GR'),
(254, 11868, 210371, 'YOPLAIT', 'YOGURT FRESA MAX. PROTEINA 230GR'),
(99, 14318, 111803, 'MONTE VERDE', 'QUESO MONTINO TURRIALBA 500GR'),
(100, 14319, 633756, 'MONTE VERDE', 'QUESO MONTINO TRAD. REB 43X1 GRANEL'),
(101, 14321, 115403, 'MONTE VERDE', 'QUESO SEMIDURO MONTINO 500 GR'),
(102, 14322, 100646, 'MONTE VERDE', 'QUESO MONTINO TURRIALBA BLOCK 2.3 KG'),
(103, 14323, 651157, 'MONTE VERDE', 'QUESO SEMIDURO MONTINO BLOCK 2.3KG'),
(104, 14324, 117658, 'MONTE VERDE', 'QUESO MONTINO REB. 250GR'),
(105, 14326, 40907, 'MONTE VERDE', 'SALSA DE QUESO 350GR'),
(106, 14337, 116850, 'MONTE VERDE', 'QUESO MOZZARELLA RALLADO 227GR'),
(107, 14339, 70165, 'LEKKERLAND', 'QUESO MOZZARELLA BOLITA 500GR'),
(108, 14341, 119094, 'MONTE VERDE', 'QUESO RALLADO PARA PIZZA 227GR'),
(109, 14342, 652757, 'MONTE VERDE', 'QUESO MOZZARELLA BLOCK 400GR'),
(110, 14346, 124623, 'MONTE VERDE', 'QUESO MOZZARELLA LIGHT RALLADO 227GR'),
(112, 14348, 96126, 'MONTE VERDE', 'QUESO MOZZARELLA RALLADO 1 KG'),
(113, 14349, 124622, 'MONTE VERDE', 'QUESO MOZZARELLA LIGHT  REB. 250 GR'),
(114, 14363, 651421, 'MONTE VERDE', 'QUESO CREMA 220 GR'),
(115, 14364, 69664, 'MONTE VERDE', 'QUESO CREMA LIGHT 220 GR'),
(116, 14366, 52468, 'MONTE VERDE', 'QUESO CREMA 450 GR'),
(117, 14367, 74767, 'MONTE VERDE', 'QUESO CREMA LIGHT 450 GR'),
(119, 14376, 653750, 'MONTE VERDE', 'QUESO MONTE RICO REBANADO  43 X 1'),
(120, 14377, 651801, 'MONTE VERDE', 'QUESO MONTE RICO REB. 14UND PAQ 280GR'),
(121, 14379, 64603, 'MONTE VERDE', 'QUESO MONTE RICO LIGHT REBANADO 250GR'),
(122, 14383, 65422, 'MONTE VERDE', 'QUESO MONTE RICO LIGHT 43X1  2.25KG'),
(123, 14387, 116851, 'MONTE VERDE', 'QUESO MONTE RICO RALLADO 227 GR'),
(124, 14388, 653350, 'MONTE VERDE', 'QUESO GOUDA REBANADO  43 X 1'),
(125, 14391, 653303, 'MONTE VERDE', 'QUESO GOUDA PAQ 160 GRS (8 REBANADAS)'),
(126, 14393, 118498, 'MONTE VERDE', 'QUESO CHEDDAR PAQUETE 200 GR'),
(127, 14394, 116848, 'MONTE VERDE', 'QUESO CHEDDAR RALLADO  227GR'),
(128, 14395, 652706, 'MONTE VERDE', 'QUESO PARMESANO MOLIDO  BOLSITA 150GR'),
(129, 14398, 87311, 'MONTE VERDE', 'QUESO PARMESANO MOLIDO ENVASE DE 115GR'),
(130, 14399, 96127, 'MONTE VERDE', 'QUESO MONTE RICO JALAPEÑO 300GR'),
(131, 14400, 119095, 'MONTE VERDE', 'QUESO MONTE RICO LIGHT 400GR'),
(132, 14483, 538850, 'ZAR', 'CHULETA AHUMADA 4 UND'),
(133, 14487, 171388, 'CAFE OLE', 'MOKA DESLACTOSADO 281 ML'),
(134, 14490, 168242, 'DEL PRADO', 'QUESO TURRIALBA 500GR'),
(135, 14515, 142580, 'MONTE VERDE', 'QUESO CREMA 330GR'),
(136, 14562, 161541, 'SAN RAFAEL', 'PECHUGA DE PAVO SELECCION NATURAL 2KG '),
(137, 14603, 651506, 'MONTE VERDE', 'QUESO EDAM PARAFINADO 1/2 BOLA 400GR'),
(138, 14604, 116849, 'MONTE VERDE', 'QUESO MONTE RICO LIGHT RALLADO  227GR'),
(139, 14606, 99386, 'MONTE VERDE', 'QUESO CHEDDAR MILD 43X1 2.25 KG'),
(140, 14607, 651045, 'MONTE VERDE', 'QUESO BABY SWISS PAQUETE 300 GR'),
(141, 14610, 116853, 'MONTE VERDE', 'QUESO MONTE RICO CON CHEDDAR RALLADO 227GR'),
(142, 14611, 132824, 'MONTE VERDE', 'QUESO PARMESANO MOLIDO  BOLSITA 50GR'),
(143, 14612, 652707, 'MONTE VERDE', 'QUESO PARMESANO PAQUETE 200 GR'),
(144, 14614, 92342, 'MONTE VERDE', 'GOUDA TOMATE-AJO-PEREJIL 200 GR'),
(145, 14615, 116852, 'MONTE VERDE', 'QUESO PARMESANO RALLADO 227 GR'),
(146, 14617, 653650, 'MONTE VERDE', 'QUESO MONTE RICO 400GR'),
(147, 14618, 653301, 'MONTE VERDE', 'QUESO MONTE RICO PAQUETE 7 REB. 140 GR'),
(148, 14619, 121135, 'MONTE VERDE', 'QUESO GOUDA PAQUETE 200 GR'),
(149, 14623, 74768, 'MONTE VERDE', 'QUESO EDAM PARAFINADO BOLA 800 GR'),
(151, 14637, 125758, 'MONTE VERDE', 'QUESO MANCHEGO 450GR'),
(152, 14641, 124648, 'LEKKERLAND', 'GOUDA GOLD 200GR'),
(153, 14645, 124646, 'LEKKERLAND', 'GOUDA MILD 200GR'),
(154, 14646, 124642, 'LEKKERLAND', 'GOUDA HIERBAS EUROPEAS 200GR'),
(155, 14650, 124643, 'LEKKERLAND', 'GOUDA HIERBAS FINAS 200GR'),
(156, 14651, 95707, 'LEKKERLAND', 'QUESO GOUDA BABY SENCILLO 450GR'),
(157, 14652, 124647, 'LEKKERLAND', 'GOUDA CLASSIC 200GR'),
(158, 14653, 95705, 'LEKKERLAND', 'QUESO EDAM BOLA ROJA BABY 450GR'),
(159, 14660, 124640, 'LEKKERLAND', 'GOUDA PROVENCE 200GR'),
(161, 14666, 124636, 'LEKKERLAND', 'GOUDA LITE MILD 200GR'),
(162, 14669, 124644, 'LEKKERLAND', 'GOUDA ITALIANA 200GR'),
(163, 14674, 124639, 'LEKKERLAND', 'GOUDA LITE HIERBAS 200GR'),
(164, 14689, 651046, 'MONTE VERDE', 'QUESO MONTINO TRADICIONAL 2.3KG'),
(166, 14698, 147605, 'YOPLAIT', 'YOGURT GRIEGO FRESA 145GR'),
(167, 14699, 147602, 'YOPLAIT', 'YOGURT GRIEGO NATURAL 145GR'),
(170, 14756, 152490, 'YOPLAIT', 'YOGURT MINI FRESA 100GR'),
(171, 14757, 198458, 'YOPLAIT', 'YOGURT MINI DURAZNO 100GR'),
(172, 14758, 198457, 'YOPLAIT', 'YOGURT MINI UVA 100GR'),
(173, 14759, 163949, 'YOPLAIT', 'YOGURT ARANDANOS 235GR'),
(175, 14767, 163951, 'YOPLAIT', 'YOGURT BANANO FRESA 750GR'),
(176, 14868, 159723, 'MONTE VERDE', 'QUESO CHEDDAR 300GR'),
(177, 14883, 196862, 'DEL PRADO', 'QUESO MOZZARELLA REBANADO 300GR'),
(178, 14915, 155849, 'YOPLAIT', 'YOGURT FRESA 1.8L'),
(179, 14939, 140922, 'YOPLAIT', 'YOGURT BANANO FRESA 1L'),
(180, 14940, 198459, 'YOPLAIT', 'YOGURT MORA 1L'),
(181, 14941, 119097, 'YOPLAIT', 'YOGURT FRESA 1L'),
(182, 14953, 128190, 'CAFE OLE', 'MOKA CAPPUCCINO BAJO EN GRASA 281ML'),
(183, 14954, 128192, 'CAFE OLE', 'CAPPUCCINO IRLANDES BAJO EN GRASA 281ML'),
(184, 14955, 128189, 'CAFE OLE', 'CLASICO CAPPUCCINO BAJO EN GRASA 281ML'),
(185, 14956, 128191, 'CAFE OLE', 'CLASICO CAPPUCCINO LIGHT 281ML'),
(187, 14971, 187335, 'YOPLAIT', 'YOGURT MORA 235GR'),
(287, 405574, 217450, 'FIORUCCI', 'SALAMI GENOA NATURAL USA 113GR'),
(189, 15884, 161261, 'MONTE VERDE', 'QUESO GOUDA PESTO 300GR'),
(201, 405211, 185168, 'YOPLAIT', 'YOGURT MORA 1.8L'),
(282, 406137, 219297, 'YOPLAIT', 'YOGURT VAINILLA 750GR'),
(204, 405411, 192148, 'LEKKERLAND', 'QUESO GOUDA AHUMADO 420GR'),
(205, 405419, 195433, 'FUD', 'JAMÓN DE PAVO ZIPPAK 450GR'),
(206, 405421, 195432, 'FUD', 'PECHUGA DE PAVO ZIPPAK 450GR'),
(207, 405430, 195428, 'SAN RAFAEL', 'SALCHICHA DE CERDO NATURAL 380GR'),
(208, 405431, 195430, 'SAN RAFAEL', 'SALCHICHA DE PAVO NATURAL 380GR'),
(281, 406138, 216296, 'YOPLAIT', 'YOGURT NARANJA HOLANDESA 750GR'),
(280, 406140, 216295, 'YOPLAIT', 'YOGURT CHOCOMENTA 750GR'),
(211, 405447, 192079, 'MONTE VERDE', 'QUESO CREMA DESLACTOSADO 220GR'),
(212, 405465, 196863, 'DEL PRADO', 'QUESO CREMOSO  500GR'),
(213, 405466, 196864, 'DEL PRADO', 'QUESO FRESCO 500GR'),
(214, 405470, 196865, 'DEL PRADO', 'NATILLA 12% CON SAL 300GR'),
(215, 405476, 192894, 'KRAFT', 'QUESO COLBY MTY JACK RALLADO 226GR'),
(216, 405482, 192892, 'KRAFT', 'QUESO AMERICANO REBANADO 340GR'),
(217, 405485, 203489, 'KRAFT', 'QUESO MOZZARELLA FAT-FREE RALLADO 198GR'),
(218, 405514, 198452, 'YOPLAIT', 'YOGURT FRESA DESLACTOSADO 1 L'),
(219, 405515, 199180, 'MONTE VERDE', 'QUESO TURRIALBA DESLACTOSADO 500GR'),
(220, 405526, 187336, 'DEL PRADO', 'QUESO CREMA 210GR'),
(221, 405535, 202741, 'MONTE VERDE', 'MONTERICO + CAJETA 600GR'),
(222, 405538, 201845, 'SAN RAFAEL', 'CHORIZO CON VINO 600GR'),
(223, 405539, 201846, 'SAN RAFAEL', 'CHORIZO CON HONGOS Y CEBOLLA 600GR'),
(224, 405540, 201847, 'SAN RAFAEL', 'CHORIZO CON VINO 300GR'),
(225, 405541, 201848, 'SAN RAFAEL', 'CHORIZO CON HONGOS Y CEBOLLA 300GR'),
(226, 406053, 208466, 'YOPLAIT', 'YOGURT GRIEGO S/A MARACUYA 230GR'),
(227, 406054, 208465, 'YOPLAIT', 'YOGURT GRIEGO S/A ARANDANOS 230GR'),
(228, 406055, 208464, 'YOPLAIT', 'YOGURT GRIEGO S/A FRESA 230GR'),
(229, 405296, 209547, 'YOPLAIT', 'YOGURT INFANTIL FRESA CHOCO/ARROZ 112GR'),
(230, 405563, 209546, 'YOPLAIT', 'YOGURT SUMMER ARANDANO 1L'),
(279, 406135, 216294, 'YOPLAIT', 'YOGURT VAINILLA 200GR'),
(232, 13837, 209549, 'YOPLAIT', 'YOGURT LIGHT 4 PACK 230GR'),
(284, 406163, 217205, 'DEL PRADO', 'QUESO SEMIDURO RALLADO 200GR'),
(234, 406061, 209555, 'YOPLAIT', 'YOGURT BERRIES LIGHT 750GR'),
(249, 406058, 209553, 'YOPLAIT', 'YOGURT ARANDANO LIGHT 230GR'),
(236, 406059, 209565, 'YOPLAIT', 'YOGURT BERRIES LIGHT 230GR'),
(250, 406060, 209554, 'YOPLAIT', 'YOGURT ARANDANO LIGHT 750GR'),
(238, 11875, 184731, 'YOPLAIT', 'YOGURT SUMMER COCO 235GR'),
(239, 405291, 187333, 'YOPLAIT', 'YOGURT SUMMER COCO 1L'),
(255, 11872, 210370, 'YOPLAIT', 'YOGURT ARANDANO MAX.PROTEINA 230GR'),
(257, 13995, 133420, 'DEL PRADO', 'NATILLA 18% GRASA 130GR'),
(253, 14296, 210012, 'DEL PRADO', 'QUESO SEMIDURO 300GR'),
(261, 406088, 211925, 'MONTE VERDE', 'QUESO MONTE RICO REB. 400GR'),
(258, 405565, 211066, 'FUD', 'JAMON POLLO ZIPPAK 450GR'),
(262, 13428, 599203, 'ZAR', 'MANO DE PIEDRA GRANEL'),
(256, 11871, 210372, 'YOPLAIT', 'YOGURT MARACUYA MAX. PROTEINA 230GR'),
(241, 405573, 208572, 'FIORUCCI', 'PEPPERONI DURO 100% NATURAL 113GR'),
(246, 405594, 208567, 'FIORUCCI', 'SALAME DURO 100% NATURAL 113GR'),
(247, 406056, 208570, 'FIORUCCI', 'SALAME DURO 100% GRANEL'),
(248, 406057, 208571, 'FIORUCCI', 'PEPPERONI DURO 100% GRANEL'),
(259, 405420, 211067, 'FUD', 'JAMON COCIDO ZIPPAK 450GR'),
(260, 14169, 211068, 'FUD', 'SALCHICHA JUMBO 17CM 1k'),
(263, 13431, 682200, 'ZAR', 'TOCINETA AHUMADA GRANEL'),
(265, 14347, 84161, 'LEKKERLAND', 'QUESO MOZZARELLA BOLITA 250GR'),
(266, 11885, 196860, 'DEL PRADO', 'QUESO MOZZARELLA 450GR'),
(267, 406109, 213174, 'LEKKERLAND', 'QUESOS MADURO SURTIDO 600GR'),
(268, 14634, 213173, 'LEKKERLAND', 'QUESO BABY 2PACK 800GR'),
(269, 406097, 213287, 'YOPLAIT', 'YOGURT INFANTIL FRESA CHOCO/CHIP 112GR'),
(270, 406073, 243178, 'YOPLAIT', 'YOGURT ROMPOPE 1L.'),
(271, 406074, 213176, 'YOPLAIT', 'YOGURT ROMPOPE 200GR'),
(272, 406065, 213177, 'YOPLAIT', 'YOGURT CHOCOMENTA 1L.'),
(273, 406066, 213175, 'YOPLAIT', 'YOGURT CHOCOMENTA 200GR.'),
(274, 405582, 208564, 'FUD', 'BAR-S SALCHICHA RES JUMBO 454GR'),
(283, 406133, 217205, 'DEL PRADO', 'QUESO SEMIDURO RALLADO 200CR'),
(288, 406149, 217449, 'FIORUCCI', 'SALAMI GENOA CURADO NATURAL USA GRANEL'),
(289, 406132, 217452, 'FIORUCCI', 'SNACK PANINO PEPPERONI/QUESO 43GR'),
(291, 542, 215286, 'FUD', 'TOCINETA AHUMADA 250GR'),
(292, 406124, 0, 'YOPLAIT', 'YOGURT BATIDO NATURAL AZUCARADO 900GR'),
(293, 406125, 870341, 'YOPLAIT', 'YOGURT BATIDO FRESA 900GR'),
(294, 406126, 870342, 'YOPLAIT', 'YOGURT BATIDO MELOCOTON  900GR'),
(295, 406128, 870339, 'YOPLAIT', 'YOGURT BATIDO LIGHT NATURAL 900GR'),
(296, 406127, 870340, 'YOPLAIT', 'YOGURT BATIDO LIGHT FRESA 900GR'),
(297, 406153, 870331, 'MONTE VERDE', 'QUESO FRESCO CON PROBIOTICOS 300GR'),
(298, 406167, 0, 'MONTE VERDE', 'QUESO FRESCO CON PROBIOTICOS GRANEL'),
(299, 14958, 128308, 'YOPLAIT', 'YOGURT MINI FRESA 110GR'),
(300, 405529, 215285, 'FUD', 'COMBO PARRILLERO 1.1KG'),
(301, 406131, 217451, 'FIORUCCI', 'SNACK SALAMI/QUESO 43GR'),
(304, 13201, 206492, 'FUD', 'MORTADELA JAMONADA GRANEL'),
(307, 406139, 874297, 'YOPLAIT', 'YOGURT MAX PROTEIN ARANDANO 750GR'),
(308, 406171, 874298, 'YOPLAIT', 'YOGURT MAX PROTEIN FRESA 750GR'),
(309, 406204, 875555, 'YOPLAIT', 'YOGURT INFANTIL VAINILLA CHOCO/ARROZ 112GR'),
(310, 406098, 875554, 'YOPLAIT', 'YOGURT FRESA LIGHT 2PACK 1500GR'),
(311, 406173, 875553, 'DEL PRADO', 'NATILLA SIN SAL 12% 700GR'),
(314, 406161, 0, 'SAN RAFAEL', 'SANCHICHON GRANOS ANCESTRALES 500GR'),
(313, 159, 101123, 'SAN RAFAEL', 'JAMON PECHUGA PAVO BALANCE 250GR'),
(316, 406209, 876970, 'YOPLAIT', 'YOGURT TOPPING CHOCO SURTIDO 4U 508GR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `cod_sigma` int(11) NOT NULL,
  `cod_item` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `departamento` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `cod_sigma`, `cod_item`, `marca`, `departamento`, `descripcion`) VALUES
(165, 13615, 9000406, 'YOPLAIT', 90, 'YOGURT YOPLAIT LIGHT FRESA DE 230GR'),
(166, 13608, 9000434, 'YOPLAIT', 90, 'YOGURT YOPLAIT BATGUR DE FRESA 750GR'),
(167, 13618, 9000497, 'YOPLAIT', 90, 'YOGUR YOPLAIT LIQ LIGHT FRES 750GR'),
(168, 13683, 9000560, 'YOPLAIT', 90, 'YOGUR YOPLAIT NATURAL 500GR'),
(169, 14379, 9001295, 'MONTEVERDE', 90, 'QUESO MONTEV LIGHT MONTE R 250 GR'),
(170, 13909, 9002261, 'DEL PRADO', 90, 'NATILLA DEL PRADO CON SAL 300 GR'),
(171, 14321, 9002891, 'MONTEVERDE', 90, 'QUESO GRAN SEMID MONTEV MONTINO 500 GR'),
(172, 14185, 9002919, 'DEL PRADO', 90, 'QUESO DEL PRADO  T MOZZAR RALL 227GR'),
(173, 14363, 9003479, 'MONTEVERDE', 90, 'QUESO CREMA MONTE VERDE 220 GR'),
(174, 14618, 9003619, 'MONTEVERDE', 90, 'QUESO JOVEN MONTEV MONTERR 140GR'),
(175, 14377, 9003976, 'MONTEVERDE', 90, 'QUESO JOVEN MONTEV MONTERR 280 GR'),
(176, 14186, 9044653, 'DEL PRADO', 90, 'QUESO RAY MOZZ Y CHEDDAR 227GR'),
(177, 14318, 9049210, 'MONTEVERDE', 90, 'QUESO MONTEVERDE TURRIALBA 500 GR'),
(178, 13852, 9050183, 'DEL PRADO', 90, 'NATILLA CON SAL DEL PRADO DOY PACK 400GR'),
(179, 14337, 9051268, 'MONTEVERDE', 90, 'QUESO MONTE VERD MOZZAREL RALLADO 227GR'),
(180, 14941, 9051737, 'YOPLAIT', 90, 'YOGURT YOPLAIT LIQUIDO FRESA 1000ML'),
(181, 14947, 9051744, 'YOPLAIT', 90, 'YOGURT YOPLAIT LIQ ALBARICOQUE 1000ML'),
(182, 14933, 9051751, 'YOPLAIT', 90, 'YOGURT YOPLAIT LIQ FRUTA TROPICAL 1000ML'),
(183, 14940, 70012115, 'YOPLAIT', 90, 'YOGURT YOPLAIT MORA 1000ML'),
(184, 14295, 70025823, 'DEL PRADO', 90, 'QUESO DEL PRADO TURRIALBA 300GR'),
(185, 14296, 70025824, 'DEL PRADO', 90, 'QUESO DEL PRADO SEMIDURO 300GR'),
(186, 405211, 70027445, 'YOPLAIT', 90, 'YOGURT BEBER MORA 1800 ML'),
(187, 405221, 70027584, 'YOPLAIT', 90, 'YOGURT BEBER AZUCARADO 2 PACK 375GR'),
(188, 11885, 70027821, 'DEL PRADO', 90, 'QUESO DEL PRADO MOZZARELLA RALLADO 450GR'),
(189, 11862, 70028079, 'DEL PRADO', 90, 'QUESO DEL PRADO SEMIDURO 500GR'),
(190, 14939, 70249096, 'YOPLAIT', 90, 'YOGUR YOPLAIT LIQ BANANO FRESA 1000GR'),
(191, 13651, 70257315, 'YOPLAIT', 90, 'DULCE DE LECHE YOPLAIT 100 GR'),
(192, 14515, 70263899, 'MONTEVERDE', 90, 'QUESO CREMA MONTEVERDE 330GR'),
(193, 405514, 70272028, 'YOPLAIT', 90, 'YOGURT DESLACTOSADO FRESA YOPLAIT 1000ML'),
(194, 405465, 70354435, 'DEL PRADO', 90, 'QUESO DEL PRADO CREMOSO 500 GR'),
(195, 405466, 70354436, 'DEL PRADO', 90, 'QUESO DEL PRADO FRESCO 500 GR'),
(196, 14915, 70372037, 'YOPLAIT', 90, 'YOGURT YOPLAIT FRESA 1800ML'),
(197, 14996, 70372038, 'YOPLAIT', 90, 'YOGURT YOPLAIT BANANO FRESA 1800ML'),
(198, 13600, 70372039, 'YOPLAIT', 90, 'YOGURT YOPLAIT FRUTAS 1800ML'),
(199, 13710, 70384558, 'DEL PRADO', 90, 'QUESO DEL PRADO PALMITO 400GR'),
(200, 14490, 70450838, 'DEL PRADO', 90, 'QUESO DEL PRADO TURRIALBA 500GR'),
(201, 14489, 70450839, 'DEL PRADO', 90, 'NATILLA DEL PRADO CON SAL 500GR'),
(202, 13636, 70483864, 'YOPLAIT', 90, 'YOGURT YOPLAIT NATURAL 1000GR'),
(203, 405296, 70247405, 'YOPLAIT', 90, 'YOGURT YOPLAIT TOPPING CHOCOLATE 127GR'),
(204, 13837, 70676509, 'YOPLAIT', 90, 'YOGURT BEBER LIGHT YOPLAIT SURT 4P 940ML'),
(205, 13836, 70676508, 'YOPLAIT', 90, 'YOGURT BEBIBLE YOPLAIT 4PACK SURTI 940ML'),
(206, 405561, 70035746, 'LA VILLITA', 90, 'QUESO PIZZERO LA VILLITA 200 GR'),
(207, 11868, 70004480, 'YOPLAIT', 90, 'YOGURT FRESA PROTEIN YOPLAIT 230 ML'),
(208, 11871, 70004717, 'YOPLAIT', 90, 'YOGURT MARACUYA PROTEIN YOPLAIT 230 ML'),
(209, 11872, 70004441, 'YOPLAIT', 90, 'YOGURT ARANDANO PROTEIN YOPLAIT 230 ML'),
(210, 405526, 70099736, 'DEL PRADO', 90, 'QUESO CREMA DEL PRADO 210 GR'),
(211, 406097, 70168763, 'YOPLAIT', 90, 'YOGURT INFANTIL FRESA CHOCOCOLORES 127G'),
(212, 406133, 70531769, 'DEL PRADO', 90, 'QUESO SEMIDURO RALLADO DEL PRADO 200 GR'),
(213, 406173, 70214427, 'DEL PRADO', 90, 'NATILLA DEL PRADO LIVIANA 700 GR'),
(214, 406205, 70286237, 'DEL PRADO', 90, '2PACK QUESO CREMA DELPRADO 420GR'),
(215, 406209, 70286240, 'YOPLAIT', 90, '4PACK YOGURT TOPPING YOPLAIT 508GR'),
(216, 406320, 75043932, 'LA VILLITA', 90, 'QUESO TIERNITO LA VILLITA 2 PACK 600GR'),
(217, 14483, 70388642, 'ZAR', 93, 'CHULETA AHUMADA ZAR KG'),
(218, 14401, 9701855, 'ZURQUI', 97, 'SALCHICHA ZURQUI AHUMADA 500GR'),
(219, 13173, 9701890, 'FUD', 97, 'JAMON DE PECHUGA PAVO FUD 250G'),
(220, 13170, 9701897, 'FUD', 97, 'JAMON DE PAVO FUD 250G'),
(221, 13565, 9703521, 'FUD', 97, 'JAMON PRENSADO FUD 250 GRS'),
(222, 14402, 9710304, 'ZURQUI', 97, 'MORTADELA ESPECIAL ZURQUI 500G'),
(223, 13267, 9710311, 'ZURQUI', 97, 'SALCHICHON TOCINO ZURQUI 500G'),
(224, 14403, 9711851, 'ZURQUI', 97, 'MORTADELA SIN TOCINO ZURQUI 500GRM'),
(225, 14484, 70022669, 'ZURQUI', 97, 'CHORIZO ZURQUI 400GR'),
(226, 14493, 70022771, 'ZURQUI', 97, 'SALCHICHA DE POLLO ZURQUI 500GR'),
(227, 14079, 70089642, 'ZURQUI', 97, 'COMBO EMBUTIDOS ZURQUI 1200G'),
(228, 14494, 70340693, 'ZURQUI', 97, 'ZURQUI SALCHICHON POLLO 500G'),
(229, 13543, 70385620, 'FUD', 97, 'SALCHICHA PAVO FUD 350 G'),
(230, 13252, 70385644, 'FUD', 97, 'FUD SALCHON JAMON PAVO 500G'),
(231, 405419, 70466466, 'FUD', 97, 'JAMON DE PAVO FUD ZIPACK 450G'),
(241, 406140, 70655217, 'FUD', 97, 'JAMON DE PECHUGA PAVO FUD 250G'),
(242, 406209, 70286240, 'YOPLAIT', 90, '4PACK YOGURT TOPPING YOPLAIT 508GR'),
(244, 13739, 75025260, 'DEL PRADO', 98, 'QUESO MOLIDO BAGACES DEL PRADO 1000 G'),
(245, 405473, 75025262, 'DEL PRADO', 98, 'NATILLA DEL PRADO CEMOSITA CON SAL 700 G'),
(246, 13718, 75062764, 'DEL PRADO', 98, 'QUESO DEL PRADO 2000GR');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auto`
--
ALTER TABLE `auto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auto`
--
ALTER TABLE `auto`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
