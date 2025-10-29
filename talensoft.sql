-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2024 a las 16:57:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `talensoft`
--
CREATE DATABASE IF NOT EXISTS `talensoft` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `talensoft`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acudientes`
--

DROP TABLE IF EXISTS `acudientes`;
CREATE TABLE `acudientes` (
  `documento` varchar(50) NOT NULL,
  `tipo_doc` varchar(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `barrio` varchar(50) NOT NULL,
  `estrato` int(2) NOT NULL,
  `nivel_educativo` varchar(50) NOT NULL,
  `ocupacion` varchar(50) NOT NULL,
  `tipo_empleo` varchar(50) NOT NULL,
  `medio_contacto` varchar(50) NOT NULL,
  `ciu_exp` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `acudientes`
--

INSERT INTO `acudientes` (`documento`, `tipo_doc`, `nombre`, `apellido`, `telefono`, `direccion`, `correo`, `barrio`, `estrato`, `nivel_educativo`, `ocupacion`, `tipo_empleo`, `medio_contacto`, `ciu_exp`, `estado`) VALUES
('1', 'CC', '', '', '', '', '', '', 0, '', '', '', '', '', 'Acivo'),
('1002732449', 'CC', 'FERNEY ALVARO', 'GALVIS VALENCIA', '3212843536', 'MZ 24 CASA 18', 'FERNEY@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Básica Secundaria', 'ASESOR COMERCIAL', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1006208868', 'CC', 'LINDA MILENA', 'MALDONADO MONSALVE', '3188298550', 'CORR LA MARINA SANTA MARTA 11', 'estrellita-linda37@hotmail.com', 'Maracaibo ', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', '', 'Activo'),
('1006426017', 'CC', 'LAURA ISABEL', 'VELOZA RICO', '3155090242', 'MZ 16 CASA 36', 'IANSTI2017@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Básica Secundaria', 'ESTILISTA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1006433309', 'CC', 'NANCY', 'OCAMPO FLOREZ', '3152815620', 'KR 21 # 6 45', 'NANCYOCAMPO730@GMAIL.COM', 'LA INDEPENDENCIA', 2, 'Básica Secundaria', 'ESTILISTA', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('1006433764', 'CC', 'BRAYAN ANDRES', 'GALLEGO OSPINA', '3158168261', 'MZ 16 CASA 30', 'NA@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Técnico', 'OFICIAL DE CONSTRUCION', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1006465980', 'CC', 'LUISA FERNANDA', 'LARGO MESA', '3170796291', 'CL 9 # 18 70', 'NA@GMAIL.COM', 'FLOR DE LA CAMPANA', 2, 'Básica Primaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1006466208', 'CC', 'LAURA DANIELA', 'PARRA ATEHORTUA', '3147724404', 'CL 6 A # 22D - 32', 'LPARRAATEHORTUA@GMAIL.COM', 'VILLA COLOMBIA', 2, 'Técnico', 'ASESORA DE VENTAS', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1006490758', 'CC', 'WENDI DAHIANA ', 'GUERRERO VARGAS', '3185643134', 'CR 28 B # 12C -58', 'WEN.ISA18@GMAIL.COM', 'SAN ANTONIO', 1, 'Básica Secundaria', 'MANICURISTA ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1006490973', 'CC', 'JULIAN DAVID ', 'VILLAMIL CARO', '3172209450', 'CL 16 # 4-21', 'JUDA-VI@HOTMAIL.COM', 'Buenos Aires ', 2, 'Básica Secundaria', 'COMERCIANTE', 'Temporal', 'Whatsapp', '', 'Activo'),
('1006491371', 'CC', 'JUAN DAVID', 'FLOREZ QUINTERO', '3182790546', 'CL 4 A 24 81', 'JFLOREZQ28@HOTMAIL.COM', 'PORTALES DEL RIO', 2, 'Profesional', 'TECNICO MOVISTAR', 'Permanente', 'Whatsapp', '', 'Activo'),
('1006492046', 'CC', 'YULIANA ANDREA', 'LONDOÑO HURTADO', '3188540772', 'CALLE 22 # 24 28', 'Yuli2001lh@gmail.com', 'SAMAN DEL NORTE', 2, 'Básica Secundaria', 'ASESOR VENTAS', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1006494254', 'CC', 'STEPHANIE', 'PARRA ALAVREZ', '3225417172', 'CL 16 # 4-21', 'JUDA-VI@HOTMAIL.COM', 'Buenos Aires ', 2, 'Básica Secundaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', '', 'Activo'),
('1007650241', 'CC', 'YEISIN KATHERINE', 'REYES SARMIENTO', '3146106040', 'CR 21 # 5B 77', 'reyeskatherine574@gmail.com', 'SANTA INES DE COMFAMILIAR', 2, 'Técnico', 'AMA', 'No Tiene', 'Whatsapp', 'LERIDA', 'Activo'),
('1007756664', 'CC', 'MARIA ALEXANDRA', 'MERCADO MARTINEZ', '3146052729', 'BLOQUE E APTO 302', 'MERRCADOOPOLITO@GMAIL.COM', 'SAN LUIS', 2, 'Básica Secundaria', 'VENTAS', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1010053419', 'CC', 'DIANA MARCELA', 'VALENCIA LOPEZ', '3105085778', 'AV PPAL 26-75', 'ANAPARLOPEZ@GMAIL.COM', 'AGUACLARA', 3, 'Básica Secundaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1013611137', 'CC', 'WILMAN FERNANDO', 'BARON ROJAS', '3154026660', 'KR 25 B 7 32', 'FERNANDOBARON2305@GMAIL.COM', 'SIETE DE AGOSTO', 2, 'Básica Secundaria', 'CONDUCTOR ', 'Permanente', 'Whatsapp', 'VILLAPINZON', 'Activo'),
('1014200524', 'CC', 'ROBERTH ALEJANDRO', 'PELAEZ GIRALDO', '3177633320', 'CL 8A # 28A 116', 'NA@GMAIL.COM', 'SANTA RITA DEL RIO', 2, 'Profesional', 'INDEPENDIENTE', 'Temporal', 'Whatsapp', 'BOGOTA', 'Activo'),
('1014215479', 'CC', 'MARIA ISABEL', 'OCAMPO ALVAREZ', '3154071442', 'CL 8A # 28A 116', 'ISABELOCAMPO.90@HOTMAIL.COM', 'SANTA RITA DEL RIO', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'BOGOTA', 'Activo'),
('10188199', 'CC', 'ARLEY ', 'CEBALLOS USUGA', '3223633886', 'N/A', 'NA@GMAIL.COM', 'JORGE ELIECER GAITAN', 2, 'Profesional', 'CONTADOR', 'Permanente', 'Whatsapp', 'CHIGORODO', 'Activo'),
('1030545065', 'CC', 'ADALBERTO', 'CORDOBA PEÑA', '3242134622', 'CL 4A # 20 30', 'VAQUI2002@GMAIL.COM', 'EL PALMAR', 2, 'Básica Secundaria', 'COMERCIANTE ', 'Permanente', 'Whatsapp', 'BOGOTA', 'Activo'),
('1042425212', 'CC', 'LUISA FERNANDA ', 'LONDOÑO MAYOR', '3154270189', 'CR 24A # 15 63', 'Luisaferlondomayor@hotmail.com', 'MARACAIBO', 2, 'Tecnológico', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'SOLEDAD', 'Activo'),
('10496123', 'CC', 'JHONATAN ALBERTO', 'ROJAS MAFLA', '3105308111', 'CR 23 # 4A 23', 'NA@GMAIL.COM', 'ALAMEDA', 2, 'Profesional', 'ADMON EMPRESAS', 'Permanente', 'Whatsapp', 'SANTANDER DE QUILICHAO', 'Activo'),
('1058845413', 'CC', 'NATALIA ANDREA', 'GARCIA ARIAS', '3226228695', 'MZ F CASA 13', 'NATALIAANDREAGARCIA1992@GMAIL.COM', 'AGUACLARA', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Temporal', 'Whatsapp', 'PENSILVANIA', 'Activo'),
('1058846948', 'CC', 'KELLY JOHANNA', 'CASTAÑO ARBOLEDA', '3212643536', 'MZ 24 CASA 18', 'KEJOCAR@HOTMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Tecnológico', 'ASESOR COMERCIAL', 'Permanente', 'Whatsapp', 'PENSILVANIA', 'Activo'),
('1061765683', 'CC', 'TANIA VANESSA ', 'DOMINGUEZ GOMEZ', '3126002034', 'CR 25A # 13B17', 'TANIAVDOMINGUEZ@HOTMAIL.COM', 'LA GRACIELA', 2, 'Técnico', 'EMPLEADA DROGUERIA', 'Permanente', 'Whatsapp', 'POPAYAN', 'Activo'),
('1069258319', 'CC', 'WILMAR ERNEY', 'VALENZUELA ZAMORA', '3103030845', 'MZ F CASA 4', 'VALENZUELA038@HOTMAIL.COM', 'AGUACLARA', 2, 'Básica Secundaria', 'CONDUCTOR ', 'Permanente', 'Whatsapp', 'CHOCONTA', 'Activo'),
('1082687803', 'CC', 'ARLENIS JHOANNA ', 'CORTES MACUACE', '3225898166', 'CL 6 25 B 99 ', 'ARLENISMACUACEMACUACE@GMAIL.COM', 'SIETE DE AGOSTO', 2, 'Básica Secundaria', 'AUX VENTAS', 'Permanente', 'Whatsapp', 'BARBACOAS ', 'Activo'),
('1086134282', 'CC', 'ORBAY NARCES', 'FAJARDO ROSERO', '3146106040', 'CR 21 # 5B 77', 'NA@HOTMAIL.COM', 'SANTA INES DE COMFAMILIAR', 2, 'Básica Secundaria', 'SUB OFICIAL', 'Permanente', 'Whatsapp', 'SANDONA', 'Activo'),
('1088017981', 'CC', 'RUBY YULIETH', 'SEPULVEA RESTREPO', '3054286137', 'CL 10 # 9A 28', 'JULI_CM123@HOTMAIL.COM', 'EL REFUGIO', 2, 'Profesional', 'DOCENTE', 'Permanente', 'Whatsapp', 'DOSQUEBRADAS', 'Activo'),
('1088239365', 'CC', 'WILINTON', ' POSADA RESTREPO', '3218300562', 'MZ 32  CASA 01', 'BETTYKM1986@HOTMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Técnico', 'POLICIA', 'Permanente', 'Whatsapp', 'PEREIRA', 'Activo'),
('1088294461', 'CC', 'DANIEL ', 'HERRERA ORTIZ', '3245228911', 'Campestre d mz 8 casa 62', 'danii041112@gmail.com', 'DOCE DE OCTUBRE', 2, 'Tecnológico', 'OFICIOS VARIOS ', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1088335956', 'CC', 'DANIELA ', 'DOMINGUEZ SUAZA', '3156226566', 'CALLE 22 # 30 27', 'SUAZA3DANI@GMAIL.COM', 'CESPEDES', 3, 'Técnico', 'COMERCIANTE ', 'Permanente', 'Whatsapp', 'PEREIRA', 'Activo'),
('1089479951', 'CC', 'ANGELA MAYERLY', 'MELENDEZ GOMEZ', '3146963191', 'CL 5B # 13 46', 'ANGELAMAYERLYMELENDEZGOMEZ@GMAIL.COM', 'SIETE DE AGOSTO', 2, 'Tecnológico', 'ESTUDIANTE', 'No Tiene', 'Whatsapp', 'LA UNION', 'Activo'),
('1089510242', 'CC', 'DIANA CAROLINA DEL CARMEN ', 'LOPERA MONSALVE ', '3148699891', 'CL 6 # 23 A  - 45', 'CALOMO87@AUTLOOK.ES', 'ALAMEDA', 3, 'Básica Secundaria', 'INDEPENDIENTE ', 'Permanente', 'Whatsapp', 'MAGUI', 'Activo'),
('1093738954', 'CC', 'CARLOS ALBERTO ', 'PINZON ANGARITA', '3232911682', 'N/A', 'N/A@GMAIL.COM', 'INTERNACIONAL', 2, 'Profesional', 'POLICIA', 'Permanente', 'Whatsapp', 'CUCUTA', 'Activo'),
('1094900556', 'CC', 'JUAN CARLOS', 'GARCIA RAMIREZ', '3154998547', 'CL 4 A 20 81', 'CALIJUAN200@HOTMAIL.COM', 'JORGE ELIECER GAITAN', 2, 'Profesional', 'POLICIA', 'Permanente', 'Whatsapp', 'ARMENIA', 'Activo'),
('1094961545', 'CC', 'FABIAN ANDRES', 'BASTIDAS AGUDELO', '3106410738', 'CL 4B #23B -09', 'FABIAN@GMAIL.COM', 'ALAMEDA', 2, 'Técnico', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1098774948', 'CC', 'MARLY ROSALBA', 'GUZMAN SUAREZ', '3015439842', 'CR 2 # 20 18', 'mrguzman_2610@outlook.com', 'FARFAN', 2, 'Básica Secundaria', 'VENDEDOR PREVENTA', 'Permanente', 'Whatsapp', 'BUCARAMANGA', 'Activo'),
('1111335487', 'CC', 'CARMEN TULIA ', 'MASMELA ', '3223633886', 'CL 4 A 20 56 ', 'ALEJANDRAGARZONMASMELA@GMAIL.COM', 'JORGE ELIECER GAITAN', 2, 'Técnico', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'SAN ANTONIO', 'Activo'),
('1111798127', 'CC', 'RUTH', 'PEÑA MURILLO', '3153775349', 'CL 22 # 22 22', 'ROXITA@HOTMAI.ES', 'PALOBONITO', 3, 'Tecnológico', 'INDEPENDIENTE', 'Temporal', 'Whatsapp', 'BUENAVENTURA', 'Activo'),
('1112098127', 'CC', 'JESUS DAVID', 'VALENCIA FRANCO', '3105085778', 'AV PPAL 26-75', 'ANAPARLOPEZ@GMAIL.COM', 'AGUACLARA', 3, 'Básica Secundaria', 'CONSTRUCTOR', 'Temporal', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112099128', 'CC', 'LORENA ANDREA', 'LOZANO BOTELLO', '3152673360', 'KR 26 # 22 40', 'LORENALOBO1@YAHOO.OM', 'TOMAS URIBE', 2, 'Profesional', 'TESORERA', 'Permanente', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112099558', 'CC', 'SANDRA MARCELA', 'CASTAÑO VALLEJO', '3152406780', 'KR 23# 4B 03', 'SANRAPITI19@HOTMAIL.COM', 'EL PALMAR', 2, 'Tecnológico', 'AUX. DE CAMPO', 'Permanente', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112100230', 'CC', 'JHONNY FERNANDO', 'SILVA GIL', '3122751725', 'CL 8 # 19A 20', 'NA@GMAIL.COM', 'HORIZONTE SANTA ISABEL', 2, 'Básica Secundaria', 'CONDUCTOR ', 'Permanente', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112100400', 'CC', 'ALBERTO ALEXANDER', 'ALAYON IBARGUEN', '3183211222', 'MZ 66 CASA 30', 'ALEXTULUA@GMAIL.COM', 'Bosques de Maracaibo ', 2, 'Técnico', 'INGENIERO DE SISTEMAS', 'Temporal', 'Whatsapp', '', 'Activo'),
('1112100754', 'CC', 'JACKELINE', 'OSORIO ARIAS', '3188602239', 'KR 11 # 26B 18', 'YAKILIZZA@HOTMAIL.COM', 'BOLIVAR', 2, 'Posgrado', 'GERENTE ADMINISTRATIVA', 'Permanente', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112100946', 'CC', 'ABEL ANTONIO', 'TRUJILLO HERNANDEZ', '3186109658', 'CL 26 E #1-51', 'ANTONIO89PK2@GMAIL.COM', 'BUENOS AIRES', 3, 'Básica Secundaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112101244', 'CC', 'ALEXANDRA', 'MORALES HERRERA', '3178386867', 'CR 17 # 2 19', 'JUANALEX2328@OUTLOOK.ES', 'TERCER MILENIO', 2, 'Técnico', 'CAJERA', 'Permanente', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112101351', 'CC', 'MARTHA CECILIA', 'MORALES PERALTA', '31745480666', 'CJ MARTINEZ # 29 59', 'MARTHISMORALES1989@GMAIL.COM', 'AGUACLARA', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112101672', 'CC', 'EULIS ADRIANA ', 'PEREZ VERGARA', '3177005247', 'CL 5A # 17 17', 'JORGELUISJARAMILLOSO@GMAIL.COM', 'TERCER MILENIO', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112101729', 'CC', 'FABIAN ANDRES', 'GORDILLO OROZCO', '3118969048', 'MZ 1 38B 08', 'GINA149AZUL@GMAIL.COM', 'LA VILLA', 2, 'Tecnológico', 'COMERCIANTE ', 'Temporal', 'Whatsapp', '', 'Activo'),
('1112101782', 'CC', 'JOHN JAIRO', 'LONDOÑO JARAMILLO', '3206057004', 'CL 8 #17 100', 'NA@GMAIL.COM', 'FLOR DE LA CAMPANA', 2, 'Básica Secundaria', 'TRANSPORTADOR', 'Permanente', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112101792', 'CC', 'YENNY ANDREA', 'MUÑOZ SANCHEZ', '3164037882', 'CL 5A # 22A 03', 'MUNOZSANCHEZYENNYANDREA@GMAIL.COM', 'INTERNACIONAL', 2, 'Técnico', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112101986', 'CC', 'MARGARITA ROSA', 'ALZATE FLOREZ', '3215315231', 'CL 1 # 24 108', 'NA@GMAIL.COM', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'VENDEDORA', 'Permanente', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112102209', 'CC', 'CHARLI TATIANA', 'GONZALEZ ROMERO', '3176328919', 'CL 3C # 22C -36', 'CHARLI@GMAIL.COM', 'EL PALMAR', 2, 'Básica Secundaria', 'ASESOR COMERCIAL', 'Permanente', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112102959', 'CC', 'LUZ AMPARO ', 'MEJIA QUEVEDO ', '3157669601', 'KR 25 B 7 32', 'LUZMEJIA2305@GMAIL.COM', 'SIETE DE AGOSTO', 2, 'Profesional', 'AUDITORA MEDICA ', 'Permanente', 'Whatsapp', 'TRUJILLO', 'Activo'),
('1112103578', 'CC', 'HAROLD ALEXIS', 'MONTOYA ESTRADA', '3153825774', 'CL 22 # 22 22', 'NA@GMAIL.COM', 'PALOBONITO', 3, 'Técnico', 'POLICIA', 'Permanente', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112103622', 'CC', 'SONIA', 'OSORIO PEREZ', '3183780331', 'MZ F CASA 18', 'SONIAOSORIOPEREZE@GMAIL.COM', 'URBANIZACION LA PAZ', 2, 'Profesional', 'SUPERVISORA DE OBRA', 'Permanente', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112103708', 'CC', 'ERIKA ANDREA ', 'HENAO RODRIGUEZ', '3168658110', 'CL 3 22 03 ', 'N/A@GMAIL.COM', 'SAMAN DEL NORTE', 2, 'Profesional', 'ASESORA COMECIAL', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1112104004', 'CC', 'ALEJANDRO', 'CORTES MARTINEZ', '3106269014', 'CALLE 22 # 30 27', 'ALEJOCORTEZMARTINEZ@MSN.COM', 'CESPEDES', 3, 'Básica Secundaria', 'COMERCIANTE ', 'Permanente', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1112107204', 'CC', 'LAURA DAHIANA', 'CELADA AZCARATE', '3177702704', 'CL 6 A # 25B - 40', 'ISAOSABELLA@GMAIL.COM', 'SIETE DE AGOSTO', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1112220032', 'CC', 'JHON RAUL', 'DORADO GOMEZ', '3023019215', 'KR 24 # 3 - 39', 'JHON@GMAIL.COM', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'CONSTRUCTOR', 'Permanente', 'Whatsapp', 'PRADERA', 'Activo'),
('1112299289', 'CC', 'MARIA DEL PILAR', 'PAILLA LORZA', '3175561857', 'CL 17 # 38A 36', 'WAR75@LIVE.COM', 'ENTRE RIOS', 3, 'Básica Secundaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'RIOFRIO', 'Activo'),
('1112299983', 'CC', 'MARLYM', 'VARELA GALLEGO', '3158808105 ', 'CL 21 # 1OESTE 09', 'nannysavva123@gmail.com', 'NUEVO FARFAN', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'RIOFRIO', 'Activo'),
('11123009825', 'CC', 'JAROL EISON', 'CESPEDES CORREA', '3167935981', 'CL 3 B 24 A 34', 'CLAUDIALADIINO28@GMAIL.COM', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'CONSTRUCCION', 'Temporal', 'Whatsapp', 'RIOFRIO', 'Activo'),
('1112760128', 'CC', 'LEIDY JOHANNA ', 'PEREZ LOPEZ', '3137475188', 'MZ 22 CASA 36', 'JL961089@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Básica Secundaria', 'VENDEDORA ', 'Permanente', 'Whatsapp', 'CARTAGO', 'Activo'),
('1112761394', 'CC', 'DIEGO ALEXANDER', 'GONZALEZ CALLEJAS', '3158808105 ', 'CL 21 # 1OESTE 09', 'nannysavva123@gmail.com', 'NUEVO FARFAN', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'cartago', 'Activo'),
('1112764823', 'CC', 'JAIME FERNANDO', 'MINDINERO ANGULO', '3126028593', 'CL 9 # 23 - 104', 'NA@GMAIL.COM', 'LA GRACIELA', 3, 'Técnico', 'OPERARIO', 'Permanente', 'Whatsapp', 'ZARZAL', 'Activo'),
('111281784', 'CC', 'MARIA LISETH ', 'OSPINA RAMIREZ', '3187587415', 'LAS VEGAS LOTE 26', 'marialisethospinaramirez@gmail.com', 'SAN ANTONIO', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1112880714', 'CC', 'GERALDINE', 'GONZALEZ CANO', '3173248984', 'KR 28A # 12 00', 'GERALDINGONZALEZ825@GMAIL.COM', 'AGUACLARA', 2, 'Técnico', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'CALIMA', 'Activo'),
('1113036026', 'CC', 'HUGO HERNAN ', 'PEREZ ISAZA', '3023352595', 'MZ F CASA 16 ', 'MARLENY12-27@HOTMAIL.COM', 'URBANIZACION LA PAZ', 2, 'Profesional', 'OPERARIO ', 'Permanente', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('1113036169', 'CC', 'JHON BLADIMIR', 'VARGAS CASTILLO', '3137302945', 'CL26 C #10-47', 'LINAMARIABERRIOMEDINA@GMAIL.COM', 'BOLIVAR', 2, 'Tecnológico', 'POLICIA', 'Permanente', 'Whatsapp', '', 'Activo'),
('1113037674', 'CC', 'YULIETH ALEXANDRA ', 'GOMEZ RAMIREZ', '3184687574', 'CARRERA 23 #3A 21', 'ALEXAGOMEZ8815@HOTMAIL.COM', 'EL PALMAR', 2, 'Técnico', 'TEC. RADIOLOGIA ORAL', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1113041205', 'CC', 'JUAN FELIPE ', 'MAYA QUINTERO', '3122967986', 'MZ 53 C 4 ', 'MAYAQUINTEROJUANFELIPE@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Técnico', 'OPERARIO DE PRODUCCION', 'Permanente', 'Whatsapp', 'BUGALAGRANDE', 'Activo'),
('1113041828', 'CC', 'VALERIA', 'VERGARA PADILLA', '3127486707', 'MZ 53 C 4 ', 'VALEVERGARA997@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Profesional', 'CONTADORA PUBLICA', 'Permanente', 'Whatsapp', 'BUGALAGRANDE', 'Activo'),
('1113308629', 'CC', 'JHONATAN ', 'RAMIREZ MUÑOZ', '3146038756', 'CL 4 22 27', 'JHONATANRAMIREZM61@GMAIL.COM', 'Saman del Norte ', 2, 'Básica Secundaria', 'SEGURIDAD', 'Permanente', 'Whatsapp', '', 'Activo'),
('1113309132', 'CC', 'LEONARDO FABIO ', 'HINCAPIE MONTENEGRO ', '3164774856', 'KR 22 8 03 ', 'NA@GMAIL.COM', 'MUNICIPAL', 2, 'Básica Secundaria', 'OPERARIO DE AVICOLA ', 'Permanente', 'Whatsapp', 'SEVILLA ', 'Activo'),
('1113311817', 'CC', 'LUISA MARIA', 'MARTINEZ OSORIO', '3123079659', 'CL 4 22 27', 'LUISAMARIAMARTINEZOSORIO6@GMAIL.COM', 'Saman del Norte ', 2, 'Técnico', 'ESTUDIANTE', 'No Tiene', 'Whatsapp', '', 'Activo'),
('1113788876', 'CC', 'JHON MARIO', 'GARCIA CLAVIJO', '3163391696', 'CALLE 7A # 18 53', 'NA@HOTMAIL.COM', 'FLOR DE LA CAMPANA', 2, 'Profesional', 'CONTADOR ', 'Permanente', 'Whatsapp', 'ROLDANILLO', 'Activo'),
('1113790546', 'CC', 'VERONICA ', 'GARCIA ARBOLEDA', '3158047670', 'N/A', 'NA@GMAIL.COM', 'AGUACLARA', 2, 'Ninguno', 'N/A', 'No Tiene', 'Whatsapp', '', 'Activo'),
('1114058172', 'CC', 'WILFREDO ', 'ROJAS VILLADA', '3183193957', 'CL 23 # 23 - 50', 'WILFRE_820@HOTMAIL.COM', 'CENTRO', 3, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'SAN PEDRO', 'Activo'),
('1114060906', 'CC', 'YESSENIA', 'REYES GOMEZ', '3234361638', 'KR 30 #11 -02', 'SALOME1023@HOTMAIL.COM', 'BRISAS DEL MORALES', 3, 'Tecnológico', 'ESTUDIANTE', 'No Tiene', 'Whatsapp', '', 'Activo'),
('1114061652', 'CC', 'JORGE ANTONIO ', 'GOMEZ GRAJALES', '3127748822', 'CR 24 B Nº 3 BIS 27', 'jg489074@gmail.com', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'METALURGIA ', 'Permanente', 'Whatsapp', '', 'Activo'),
('1115078998', 'CC', 'WILLIAM ANDRES', 'HERRERA LOAIZA', '3114069037', 'CL 4A # 20 30', 'ANDRESH.06@HOTMAIL.COM', 'Jorge E. Gaitan ', 2, 'Profesional', 'DESARROLLADOR', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116232442', 'CC', 'DIEGO FERNANDO', 'ARIAS GARCIA', '3235895082', 'CL 22 # 24 63', 'NA@HOTMAIL.COM', 'PALOBONITO', 2, 'Básica Secundaria', 'COMERCIANTE ', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116232443', 'CC', 'DIANA MILENA', 'OSORIO LASSO', '3186424538', 'KR 24 # 4 16', 'DIANAMILEOS85@GMAIL.COM', 'ALAMEDA', 2, 'Técnico', 'INDEPENDIENTE', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('1116233542', 'CC', 'JARRISON ', 'GORDILLO LASSO', '3103646098', 'CL 6A # 19 51', 'NA@GMAIL.COM', 'SAN LUIS', 2, 'Tecnológico', 'ADMINISTRADOR DE EMPRESAS', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116234080', 'CC', 'LINA MARIA ', 'BERRIO MEDINA', '3103755639', 'CL26 C #10-47', 'LINAMARIABERRIOMEDINA@GMAIL.COM', 'BOLIVAR', 2, 'Técnico', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', '', 'Activo'),
('1116234156', 'CC', 'LUIS GUILLERMO ', 'PAZMIÑO CORAL', '3153142368', 'CL 19 3 83', 'WWW.MEMO1103@GMAIL.COM', 'GUAYACANES', 2, 'Básica Secundaria', 'INGENIERO EN SISTEMAS ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116235044', 'CC', 'ADRIAN ALBERTO', 'CRUZ ORDOÑEZ', '3165179051', 'CJ MARTINEZ # 29 59', 'NA@GMAIL.COM', 'AGUACLARA', 2, 'Básica Secundaria', 'OPERADOR NESTLE ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116235066', 'CC', 'YOLANDA', 'LOZANO NUÑEZ', '3156023226', 'KR 9 #10-19', 'YOLANDA@GMAIL.COM', 'EL REFUGIO', 3, 'Básica Secundaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1116235681', 'CC', 'BETTY', 'TORRES GRANJA', '3216416170', 'MZ 32  CASA 01', 'BETTYKM1986@HOTMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Técnico', 'POLICIA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116236064', 'CC', 'LILIAN FERNANDA', 'OSORIO ARIAS', '3162826504', 'CL 4ª # 23 – 04 ', 'fercha-tato2806@hotmail.com', 'EL PALMAR', 2, 'Básica Secundaria', 'COMERCIANTE ', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116236151', 'CC', 'LINA MARIA', 'RIVERA LARGO', '3188540772', 'CL 7ª # 22C – 20 ', 'linamaririv@hotmail.com', 'VILLA COLOMBIA', 2, 'Posgrado', 'EMPLEAD SANITAS', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116236164', 'CC', 'YORFAN ALFONSO', 'MELENDEZ GIRALDO', '3215766475', 'DG 20 # T -646', 'm3154603685@hotmail.com', 'BELLO HORIZONTE', 3, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116236358', 'CC', 'YAMIL', 'BANGUERO SANDOVAL ', '3147916101', 'KR 24 4 A 40 ', 'YBANGUEROSANDOVAL@GMAIL.COM', 'ALAMEDA', 2, 'Tecnológico', 'JEFE OPERACIONES INGENIO SAN CARLOS ', 'Permanente', 'Whatsapp', 'PUERTO TEJADA', 'Activo'),
('1116236799', 'CC', 'YELEN MAXNEY', 'ZUÑIGA GUZMAN', '3136251155', 'CL 15A # 15E 07', 'NA@GMAIL.COM', 'LA CAMPIÑA', 2, 'Profesional', 'ING INDUSTRIAL', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116236807', 'CC', 'CARLOS ALBERTO', 'BALLESTEROS', '3175274405', 'CL 9 # 17 118', 'NA@GMAIL.COM', 'SANTA INES DE COMFAMILIAR', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('1116236899', 'CC', 'MARIO ALFONSO', 'MORENO GOMEZ', '3163996797', 'CR 9A # 7A 14', 'NA@HOTMAIL.COM', 'LA INDEPENDENCIA', 2, 'Básica Primaria', 'CONDUCTOR', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116237530', 'CC', 'TERESA ', 'DIUZA CAICEDO', '3182465472', 'CL 19 3 83', 'TERESADIUSACAICEDO@GMAIL.COM', 'GUAYACANES', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1116237768', 'CC', 'JOSE NELSON', 'VELEZ GIRALDO', '3103540719', 'N/A', 'NA@GMAIL.COM', 'LA INDEPENDENCIA', 2, 'Tecnológico', 'TECNOLOGO EN SISTEMAS', 'No Tiene', 'Whatsapp', 'RIO FRIO ', 'Activo'),
('1116237782', 'CC', 'YURI ALEXANDRA', 'RAMIREZ CORTES', '3054433366', 'CL 9 # 19A 19', 'ABE.RIOS1789@GMAIL.COM', 'HORIZONTE SANTA ISABEL', 2, 'Básica Primaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116238145', 'CC', 'ALVARO ANDRES ', 'BEDOYA RODRIGUEZ', '3225267548', 'CL 13 28 B11 ', 'ANDRESBEDOYA207@GMAIL.COM', 'EL BOSQUE', 3, 'Técnico', 'POLICIA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116239112', 'CC', 'JAVIER HERNAN', 'TOBON GONZALEZ', '3207916581', 'CL 4B # 21 10', 'jawei007.jt@gmail.com', 'SAMAN DEL NORTE', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116239255', 'CC', 'LORENA', 'HERRERA SAMPEDRO', '3026468743', 'CARRERA 18 # 23 59', 'LORENASAM3038@HOTMAIL.COM', 'ROJAS', 2, 'Tecnológico', 'ASESORA DE VENTAS', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116239545', 'CC', 'PAULA ANDREA', 'SANCHEZ LOPEZ', '3174201763', 'CR 23 # 4A 23', 'FLACA-PAULA25@HOTMAIL.COM', 'ALAMEDA', 2, 'Profesional', 'ENFERMERA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116240735', 'CC', 'LINA VANESSA', 'SUAREZ ARCILA ', '3152903452', 'CL 13 4 94 ', 'VANE_SSA0614@HOTMAIL.COM', 'PORTALES DE SAN FELIPE', 3, 'Técnico', 'AUX ENFERMERIA ', 'Temporal', 'Whatsapp', '', 'Activo'),
('1116241268', 'CC', 'ELY JULIETH', 'ALFONSO ESTRADA', '3186771369', 'TZ 12 #23 35', 'PAYASITOSLOSCHIQUIS@HOTMAIL.COM', 'RUBEN CRUZ VELEZ', 2, 'Técnico', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116241584', 'CC', 'MILLERLANDY', 'GARZON JACOBO', '3186109659', 'CL 4 B #19-38', 'MILLERLANDY988@GMAIL.COM', 'JORGE ELIECER GAITAN', 3, 'Básica Secundaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116242279', 'CC', 'JOHANA ALEXANDRA ', 'VALENCIA BEJARANO', '3114027680', 'CR 23A # 4 28', 'JOHANAALEXA_VB27@HOTMAIL.COM', 'ALAMEDA', 2, 'Técnico', 'CAJERA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116242610', 'CC', 'RODOLFO ENRIQUE', 'GIRALDO', '3104338656', 'CJ MARTINEZ ', 'RODOLFO@HOTMAIL.COM', 'AGUACLARA', 2, 'Básica Secundaria', 'PINTOR', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('1116242677', 'Sel', 'LUISA FERNANDA', 'ZABALA PACHECO', '3053809566', 'TV 12 # 6 -11', 'nanadanna1002@gmail.com', 'SIETE DE AGOSTO', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1116243202', 'CC', 'NANCY', 'MUÑOZ CASTRO', '3177051287', 'CL EL DELIRIO PASAJE 1 # 4A 01', 'NANCYMUOZCASTRO2009@GMAIL.COM', 'AGUACLARA', 2, 'Técnico', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116243210', 'CC', 'PAOLA ANDREA', 'RIVAS HERRERA', '3162476188', 'CL 8 A # 28A -44', 'PAOLA@GMAIL.COM', 'SANTA RITA DEL RIO', 2, 'Básica Secundaria', 'MANICURISTA ', 'No Tiene', 'Whatsapp', 'ANTIOQUIA', 'Activo'),
('1116243323', 'CC', 'LILIANA', 'RIVERA CASTAÑEDA', '3160554826', 'CL 13 28 B11 ', 'LILIRIVERA26@GMAIL.COM', 'EL BOSQUE', 3, 'Técnico', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1116244330', 'CC', 'MONICA ALEJANDRA', 'ROSERO MOSQUERA', '3122015476', 'CALLE 8 # 19A 20', 'MONIK.0228@HOTMAIL.COM', 'BELLO HORIZONTE', 2, 'Básica Secundaria', 'ASESORA DE VENTAS', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116244354', 'CC', 'YEISON DAVID', 'GALLEGO CORTES', '3114936405', 'AV PPAL 26 # 22', 'YEISON.GALLEGO1406@OUTLOOK.COM', 'AGUACLARA', 2, 'Técnico', 'POLICIA', 'Permanente', 'Whatsapp', 'PENSILVANIA', 'Activo'),
('1116244456', 'CC', 'DIANA MARCELA ', 'RAMIREZ PEREZ ', '3178608121', 'N/A', 'NA@GMAIL.COM', 'ALAMEDA', 2, 'Básica Secundaria', 'IMPULSADORA ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116244883', 'CC', 'GLADYS', 'PEDROZA DOMINGUEZ', '3152241626', 'CL 4A # 22C -22', 'GLADYS@GMAIL.COM', 'EL PALMAR', 2, 'Tecnológico', 'CAJERA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116245070', 'CC', 'VICTORIA EUGENIA', 'MOSQUERA AYALA', '3155007800', 'KR 28 # 20 60', 'VICKYMOSQUERA5@GMAIL.COM', 'TOMAS URIBE', 2, 'Profesional', 'DOCENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116245230', 'CC', 'CAROL VIVIANA ', 'ALFONSO OSPINA', '3205709985', 'CL 5 B 22 A 45', 'CAROLVIVIANA186@GMAIL.COM', 'INTERNACIONAL', 2, 'Técnico', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1116245274', 'CC', 'HECTOR ALFONSO', 'QUIÑONEZ RAMIREZ', '3228308789', 'CR 4A # 22 21', 'HECTORQ60@GMAIL.COM', 'SAMAN DEL NORTE', 2, 'Tecnológico', 'SUP DE CARGA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116245312', 'CC', 'ABELARO DE JESUS', 'RIOS AGUELO', '3106829786', 'CL 9 # 19A 19', 'ABE.RIOS1789@GMAIL.COM', 'HORIZONTE SANTA ISABEL', 2, 'Básica Secundaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116245467', 'CC', 'DIANA KATHERINE ', 'ARANGO HOLGUIN', '3152888962', 'CL 10C 27D03', 'DIANAKT8@HOTMAIL.COM', 'Peñaranda ', 2, 'Básica Secundaria', 'ASESORA COMERCIAL', 'Permanente', 'Email', '', 'Activo'),
('1116245924', 'CC', 'SANDRA MARCELA', 'RESTREPO VILLA', '3187308813', 'CALLE 7A # 18 53', 'marcelarestrepovilla@hotmail.com', 'FLOR DE LA CAMPANA', 2, 'Tecnológico', 'REGENTE', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116246150', 'CC', 'ANDRES FELIPE ', 'MILLAN ROJAS', '3113142385', 'CL 3C # 22 58', 'ANDRESMILLANCECI@HOTMAIL.COM', 'SAMAN DEL NORTE', 2, 'Técnico', 'AUX OPERATIVO', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116246183', 'CC', 'ALEJANDRO', 'HERNANDEZ MONSALVE', '3107103114', 'KR 24 5 26', 'NA@GMAIL.COM', 'Alameda', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116246266', 'CC', 'MARIA LILIAN ', 'CARVAJAL TRUJILLO', '3158201984', 'CL 6 # 19 48', 'MARIALILIANCARVALJALTRUJILLO9@GMAIL.COM', 'San Luis ', 2, 'Básica Secundaria', 'OPERADORA DE PLANTA ', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116246273', 'CC', 'ALEXANDER', 'TENGONO CASAS', 'N/A', 'CL 15A # 15E - 07', 'A@GMAIL.COM', 'LA CAMPIÑA', 3, 'Ninguno', 'N/A', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116247657', 'CC', 'JUAN GABRIEL', 'LOPEZ CRUZ', '3188540772', 'CALLE 22 # 24 28', 'gl6791877@gmail.com', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116247976', 'CC', 'HILDA PATRICIA', 'DIAZ MONSALVE', '3173495593', 'CL 7A # 22A 36', 'DIAZMONSALVEPATRICIA@GMAIL.COM', 'VILLA COLOMBIA', 2, 'Profesional', 'TRAAJADDORA SOCIAL', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116248096', 'CC', 'CRISTHIAN EDUARDO', 'LOPEZ PRADA', '3148147940', 'CL 16 # 28A 42', 'CRISTHIANEDULOP@GMAIL.COM', 'POPULAR', 2, 'Técnico', 'CHEF', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116248674', 'CC', 'GEORGINA', 'CORREA SABOGAL', '3167980117', 'CL 8 #17 100', 'SABOGALCLAUDIA43@GMAIL.COM', 'FLOR DE LA CAMPANA', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1116249439', 'CC', 'LINA MARCELA', 'GIRALDO GALLEGO', '3016378793', 'MZ 16 CASA 40', 'LINITAGIRALDO1@HOTMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Profesional', 'ENFERMERA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116250492', 'CC', 'DANIELA MARIA', 'PIEDRAHITA PINEDA', '3225941950', 'KR 20 # 7-11', 'DANIELA@GMAIL.COM', 'BELLO HORIZONTE', 2, 'Profesional', 'DOCENTE DE AULA ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116251158', 'CC', 'VERONICA', 'ACEVEDO BETANCOURT', '3156231721', 'CR 10 # 25B 08', 'VEROACEVEDOBETANCOURT@GMAIL.COM', 'MARANDUA', 2, 'Básica Secundaria', 'ENFERMERA ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116251253', 'CC', 'CAROLI YAMILE', 'CORTES RESTREPO', '+1262960451', 'CJ SAN ANTONIO 30-71', 'NA@GMAIL.COM', 'AGUACLARA', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', '', 'Activo'),
('1116251723', 'CC', 'LEIDY JOHANNA', 'GONZALEZ ACEVEDO', '3023019215', 'KR 24 # 3 - 39', 'LEIDY@HOTMAIL.COM', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1116251892', 'CC', 'CLAUDIA ROCIO', 'VELEZ RICAURTE', '3187739961', 'FUERA DEL PAIS', 'NA@GMAIL.COM', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', '', 'Activo'),
('1116252367', 'CC', 'LEIDY JOHANNA ', 'ZAPATA ZAPATA', '3152787704', 'TZ 20 # 2 119', 'LJZAPATA76@GMAIL.COM', 'Portales del Rio ', 2, 'Tecnológico', 'AUX. PUESTOS DE PAGO', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116252372', 'CC', 'JONATHAN ALEXANDER', 'GUARIN VALENCIA', '3186700119', 'MZ O CASA 8', 'NA@GMAIL.COM', 'URBANIZACION LA PAZ', 2, 'Básica Secundaria', 'CONSTRUCTOR ', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('1116252509', 'CC', 'LEIDY XIOMARA', 'MORENO VARGAS', '3203250953', 'CR 24A #4A 03', 'LEI-DY-XIOMARA@HOTMAIL.COM', 'ALAMEDA', 2, 'Tecnológico', 'ASESOR COMERCIAL', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116252982', 'CC', 'DURLAND ALEXANDER', 'BENAVIDES MEJIA', '3214827780', 'CL 1 # 24 84', 'NA@GMAIL.COM', 'PORTALES DEL RIO', 2, 'Técnico', 'POLICIA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116253030', 'CC', 'RUBIEL ', 'MARIN QUITIAN', '3162385029', 'N/A', 'NA@GMAIL.COM', 'SAN LUIS', 2, 'Profesional', 'POLICIA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116253216', 'CC', 'FABIAN ANDRES', 'GUTIERREZ RIVERA', '3166377646', 'CL 15  # 25-14', 'FGR020317@GMAIL.COM', 'LA GRACIELA', 3, 'Básica Secundaria', 'ASESOR COMERCIAL', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116253733', 'CC', 'JANSEN', 'DITTA GAÑAN', '3106394722', 'MZ 58 CASA 29', 'J.DITTA0322@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Profesional', 'AUXILIAR DE ALMACEN', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116253955', 'CC', 'KATHERINE ', 'JARAMILLO GUERRA ', '3162532789', 'CL 4 B 22 A 1 23 ', 'KATHE0320@OUTLOOK.COM', 'INTERNACIONAL', 2, 'Técnico', 'AUX ENFERMERIA ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116254259', 'CC', 'CAROLINA ', 'MORENO LOPEZ', '3104395998', 'MZ 45 CASA 19', 'KARO0315@HOTMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Profesional', 'ENFERMERA', 'Permanente', 'Email', '', 'Activo'),
('1116254751', 'CC', 'HECTOR FABIO', 'POSADA CORTES', '3208131993', 'CL 6 # 19 48', 'NA@GMAIL.COM', 'San Luis ', 2, 'Básica Secundaria', 'SUPERVISOR', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116254858', 'CC', 'ERIKA VANESSA', 'ARANGO GONZALEZ', '3158921463', 'AV PPAL · 26 -22', 'ERIKA@HOTMAIL.COM', 'AGUACLARA', 3, 'Básica Secundaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1116255506', 'CC', 'CESAR MAURICIO', 'JARAMILLO ESCOBAR', '3174974641', 'CR 28F # 4A 85', 'elcesar.mje@gmail.com', 'AGUACLARA', 2, 'Técnico', 'COMERCIANTE ', 'Permanente', 'Whatsapp', 'tulua', 'Activo'),
('1116255655', 'CC', 'MONICA JARITZA', 'MURILLO', '3146740742', 'CR 4A # 22 21', 'MONICAJARITZA@GMAIL.COM', 'SAMAN DEL NORTE', 2, 'Tecnológico', 'ASESORA COMERCIAL', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116255714', 'CC', 'CARLOS ALBERTO', 'RESTREPO LOPEZ', '3242159918', 'CL 2A # 24 09', 'NA@GMAIL.COM', 'Portales del Rio ', 2, 'Básica Secundaria', 'OFICIOS VARIOS', 'Temporal', 'Whatsapp', '', 'Activo'),
('1116255836', 'CC', 'CRISTIAN ADRIAN', 'BEJARANO TRUJILLO', '3155954198', 'CL 6 # 19 30', 'ct955556@gmail.com', 'SAN LUIS', 2, 'Básica Secundaria', 'SOLDADOR', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116256187', 'CC', 'JOSE GREGORIO', 'ACEVEDO BETANCOURT', '3103739386', 'CR 3 # 14 04', 'NA@GMAIL.COM', 'VILLA LILIANA', 2, 'Básica Secundaria', 'CONTRATISTA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116256776', 'CC', 'DIEGO FERNANDO', 'ESCOBAR GARCIA', '3234871469', 'N/A', 'NA@GMAIL.COM', 'AGUACLARA', 2, 'Básica Secundaria', 'N/A', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116257048', 'CC', 'JOHN ANDERSON ', 'QUICENO VELEZ', '3154227189', 'CL 16 4-33 ', 'ANDERZON_19@HOTMAIL.ES', 'Portales del Rio ', 3, 'Básica Secundaria', 'CONDUCTOR', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116257183', 'CC', 'ANDREA CATHERINE', 'GRAJALES PASIMINIO', '3117988461', 'CL 3C # 22 58', 'ANDREITAGRAJALES13@HOTMAIL.COM', 'SAMAN DEL NORTE', 2, 'Profesional', 'CONTADORA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116258304', 'CC', 'JOHAN STEVEN', 'GARCIA CORREA', '3117520101', 'CL 3B # 24A 52', 'JOHANSTIVENGARCIA@HOTMAIL.COM', 'PORTALES DEL RIO', 2, 'Tecnológico', 'MECANICO', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116258916', 'CC', 'ALBA LORENA', 'BETANCOURT PRIETO', '3185314263', 'CL 16 4-33 ', 'LORENA-731@HOTMAIL.COM', 'Portales del Rio ', 3, 'Profesional', 'EMPLEADA', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116259066', 'CC', 'LINA VANESSA', 'PATIÑO PINEDA', '3218461773', 'DG 20 # T -646', 'm3154603685@hotmail.com', 'BELLO HORIZONTE', 3, 'Básica Secundaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1116259093', 'CC', 'JHON HAROLD', 'MONTOYA ZAPATA', '3233626603', 'MZ 45 CASA 19', 'KAROYHAROLD0315@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Técnico', 'COORDINADOR E SEGURIDAD ', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116259547', 'CC', 'YULENY LISETH', 'QUINTERO SERNA', '3103644313', 'CL 6A # 19 51', 'YULIQUIS_07@HOTMAIL.COM', 'SAN LUIS', 2, 'Técnico', 'AUXILIAR ADMINISTRATIVA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116260031', 'CC', 'MARIA ALEJANDRA', 'HENAO TOVAR', '3178740910', 'CL 22 # 24 63', 'ALEJANDRAHT-93@HOTMAIL.COM', 'PALOBONITO', 2, 'Tecnológico', 'COMERCIANTE ', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116260427', 'CC', 'STEPHANIE', 'MARIN GONZALEZ ', '3155837912', 'CL 6 A 19 33', 'LUZES93@HOTMAIL.COM', 'SAN LUIS', 2, 'Profesional', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116260522', 'CC', 'YULI STEFANI', 'ROA VELEZ', '3163309885', 'KR 21 TZ 20 - 36', 'STEFANNIRV@GMAIL.COM', 'HORIZONTE SANTA ISABEL', 2, 'Profesional', 'ENFERMERA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116260549', 'CC', 'JUAN CAMILO', 'BEDOYA TABARES', '3105114013', 'KR 21 TZ 20 - 36', 'CAMILOBEDOYAT@GMAIL.COM', 'HORIZONTE SANTA ISABEL', 2, 'Profesional', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116260702', 'CC', 'NATALIA VANESSA ', 'CAÑAS MURILLO', '3156346983', 'CL 3 21 16', 'NATALIVANESSA_119@HOTMAIL.COM', 'ALAMEDA', 2, 'Técnico', 'AUXILIAR CONTABLE ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116261215', 'CC', 'CINDY ESMERALDA', 'CRUZ VALENCIA', '3157025596', 'CALLE 16 # 28A 42', 'NA@GMAIL.COM', 'POPULAR', 2, 'Técnico', 'VENTAS', 'Temporal', 'Whatsapp', '', 'Activo'),
('1116261283', 'CC', 'MARIA ALEJANDRA', 'GORDILLO VELASQUEZ', '3043315119', 'MZ F CASA 4', 'VALENZUELA038@HOTMAIL.COM', 'AGUACLARA', 2, 'Profesional', 'ING CIVIL', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116261408', 'CC', 'MARYI JASBLEIDY', 'GOMEZ FRANCO', '3217803497', 'MZ G CASA 10 LOTE 1', 'MARYIJASBLEIYGOMEZFRANCO@GMAIL.COM', 'SAN FRANCISCO', 1, 'Técnico', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1116261436', 'CC', 'LEIDY TATIANA', 'ARCINIEGAS LEON', '3178154169', 'CL 9 # 17 118', 'LEIDY.LEON3616@GMAIL.COM', 'SANTA INES DE COMFAMILIAR', 2, 'Básica Secundaria', 'ASESORA DE VENTAS', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('1116261521', 'CC', 'GINA MARCELA', 'MONTEZUMA GARCIA', '3113411210', 'MZ 1 38B 08', 'GINA149AZUL@GMAIL.COM', 'LA VILLA', 2, 'Posgrado', 'PSICOLOGA', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116261554', 'CC', 'YESICA LORENA', 'TORRES GUTIERREZ', '3183211222', 'MZ 66 CASA 30', 'ALEXTULUA@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Profesional', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116261652', 'CC', 'YEFERSON STIVEN', 'MORALES OSORIO', '3145106535', 'CR 3OE # 25B 27', 'NA@GMAIL.COM', 'SAN PEDRO CLAVER', 2, 'Básica Secundaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116261766', 'CC', 'LUISA FERNANDA ', 'ALZATE LOPEZ', '3153148100', 'CL 15A # 15E - 07', 'VIMAVIGO68@HOTMAIL.COM', 'LA CAMPIÑA', 3, 'Tecnológico', 'VARIOS', 'Temporal', 'Whatsapp', '', 'Activo'),
('1116261781', 'CC', 'MARIA ALEJANDRA', 'BARRADA ALVAREZ', '3104348764', 'CL 14A # 20 23', 'ONEWAYJESUS2013@HOTMAIL.COM', 'BELLO HORIZONTE', 2, 'Profesional', 'ORIENTADORA ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116262037', 'CC', 'LINA ANDREA', 'QUEVEDO BEDOYA', '3053352589', 'KR 24 5 26', 'LINAANDREA2007@HOTMAIL.COM', 'Alameda', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', '', 'Activo'),
('1116262335', 'CC', 'SHIRLEY CATERINE', 'GOMEZ MARIN', '3186924505', 'Cr 25C # 5 A 11', 'emilymarulanda123@gmail.com', 'SIETE DE AGOSTO', 2, 'Básica Secundaria', 'EMPLEADA VENTAS', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116263070', 'CC', 'ANGELA MARCELA', 'GOYES RAMIREZ', '3103948701', 'CL 4A # 20 30', 'MARCELA.GOYES02@GMAIL.COM', 'Jorge E. Gaitan ', 2, 'Profesional', 'AMA DE CASA', 'No Tiene', 'Whatsapp', '', 'Activo'),
('1116263107', 'CC', 'SEBASTIAN ', 'HINOJOSA REBELLON', '3133930151', 'KR 4A# 22C - 49', 'ADGONZALEZ33@GMAIL.COM', 'El Palmar ', 2, 'Profesional', 'POLICIA', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116263118', 'CC', 'JUAN DAVID', 'ORTIZ ARISTIZABAL', '3182301935', 'CL 7 # 18 86', 'NA@GMAIL.COM', 'Flor de la Campana ', 2, 'Tecnológico', 'LIDER DE PRODUCCION', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116263695', 'CC', 'LUZ KARIME ', 'BAQUERO BETANCOURT', '3159261084', 'CL 12 A 24 04', 'LUZBAQUEROBETA@GMAIL.COM', 'EL JARDIN', 3, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'BUGA', 'Activo'),
('1116263840', 'CC', 'LUCERO', 'HURTADO BETANCOURT', '3122741016', 'CL 3 # 23 24', 'LUCERO.HURTADO@HOTMAIL.COM', 'JUAN XXIII', 2, 'Básica Secundaria', 'MERCADERISTA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116264010', 'CC', 'YESICA ANDREA', 'VARGAS ESPINAL', '3184065121', 'CR 8OESTE # 25 56', 'YESICA.VARGAS452@GMAIL.COM', 'LAS NIEVES', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116264203', 'CC', 'TATIANA MARCELA', 'MONADA PINILLA', '3225029262', 'MZ 58 CASA 29', 'J.DITTA0322@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Básica Secundaria', 'MANICURISTA ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116264714', 'CC', 'LEIDY VANESSA ', 'SANCHEZ LOPEZ ', '3234994960', 'CR 22 A # 7-05', 'JHOANASANCHEZ823@GMAIL.COM', 'VILLA COLOMBIA', 2, 'Básica Primaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1116265644', 'CC', 'FABER SEBASTIAN ', 'GOMEZ CASTRO', '3154140937', 'CL 5BC # 19 21', 'SEBAGOCA2411@GMAIL.COM', 'SAN LUIS', 2, 'Tecnológico', 'NO APLICA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1116265743', 'CC', 'ANDRES FELIPE', 'RIVERA LOAIZA', '3183255890', 'MZ 55 CASA 29', 'andres-1312@hotmail.com', 'BOSQUES DE MARACAIBO', 2, 'Tecnológico', 'AUX PANADERIA ', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116265931', 'CC', 'STEFANY', 'SANCHEZ ACOSTA', '3176927535', 'CL 7 # 18 86', 'SANCHEZ.STEFANY.@HOTMAIL.COM', 'Flor de la Campana ', 2, 'Técnico', 'INDEPENDIENTE', 'No Tiene', 'Whatsapp', '', 'Activo'),
('1116265937', 'CC', 'MARCO ANDRES', 'MARULANDA SANCHEZ', '3188540772', 'CR 25C # 5A 11', 'NA@HOTMAIL.COM', 'SIETE DE AGOSTO', 2, 'Básica Primaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116265982', 'CC', 'DIANA MARCELA', 'VALENCIA OCAMPO', '3217584413', 'CL 4B #23B -09', 'DIANAVAO94@GMAIL.COM', 'ALAMEDA', 2, 'Técnico', 'OPERARIA DE PRODUCCION', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116266789', 'CC', 'ELIANA ALEJANDRA', 'ALZATE LADINO', '3152806098', 'CL 2A # 24 09', 'LADIINOALEJA@GMAIL.COM', 'Portales del Rio ', 2, 'Básica Secundaria', 'OPERARIA DE MAQUINA', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116266918', 'CC', 'DUPARFAY', 'GIRON ROJAS', '3168733239', 'CL 3 # 23 24', 'NA@GMAIL.COM', 'JUAN XXIII', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116266932', 'CC', 'BRIAN', 'MORENO ROJAS', '3163799534', 'CL 7 # 22 BIS - 19', 'BRIAN.MORENO01@UCEVA.EDU.CO', 'MUNICIPAL', 2, 'Profesional', 'DOCENTE UNIVERSITARIO', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116266949', 'CC', 'CLAUDIA PATRICIA', 'ARANGO GONZALEZ ', '3128539386', 'CJ PEÑARANDA 29 83 ', 'CLAUPAARANGO@HOTMAIL.COM', 'AGUACLARA', 2, 'Básica Secundaria', 'CAJERA ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116269382', 'CC', 'BRAHIAM ALEXIS', 'JIMENEZ BERMUDEZ', '3154073727', 'CORR LA MARINA SANTA MARTA 11', 'na@gmail.com', 'Maracaibo ', 2, 'Básica Secundaria', 'CANCHERO', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116269735', 'Sel', 'LINA FERNANDA', 'QUESADA HERNANDEZ', '3207828727', 'MZ 12 CASA 32', 'LINA_QUESADA26@HOTMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Tecnológico', 'OPERARIA PRODUCCION', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('1116270188', 'CC', 'PAOLA ANDREA', 'VARGAS GARCIA', '3154778289', 'CL 15  # 25-14', 'PAOLAVARGAS0296@GMAIL.COM', 'LA GRACIELA', 3, 'Técnico', 'ESTETICISTA ', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116270208', 'CC', 'MAURICIO ', 'MORENO HENAO', '3014057785', 'CALLE 5A # 22 21', 'ANAMARVIC217@GMAIL.COM', 'SAMAN DEL NORTE', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'tulua', 'Activo'),
('1116270441', 'CC', 'JHON HAROLD', 'SUAREZ AGUDELO', '3188540772', 'LAS VEGAS LOTE 26', 'marialisethospinaramirez@gmail.com', 'SAN ANTONIO', 2, 'Básica Secundaria', 'CONDUCTOR', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116270922', 'CC', 'JEISON STIF', 'LARGO MESA', '3104907192', 'CR 24 # 5 22', 'PELUK2010@GMAIL.COM', 'ALAMEDA', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116271208', 'CC', 'LUISA MARIA', 'GONZALEZ CARVAJAL', '3154140937', 'CL 5C # 19 21', 'SEBAGOCA2411@GMAIL.COM', 'SAN LUIS', 2, 'Técnico', 'ENFERMERA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116271276', 'CC', 'YEFERSSON', 'GOMEZ GARCIA', '3128517280', 'CR 49B # 14B 32', 'NA@GMAIL.COM', 'LAS ACACIAS', 2, 'Profesional', 'ING INDUSTRIAL', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116271644', 'CC', 'BAYRON YESID ', 'NARANJO CASTAÑO ', '3146213222', 'TZ 20 # 3 -21', 'cristhinita12@hotmail.com', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'CONDUCTOR ', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116272563', 'CC', 'DIANA MARCELA ', 'CUERO REQUEJO ', '3184449202', 'CL 23 B 4 03 ', 'DCUEROREQUEJO@GMAIL.COM', 'ALAMEDA', 2, 'Básica Secundaria', 'OPERARIA ', 'Permanente', 'Whatsapp', 'TULUA ', 'Activo'),
('1116272988', 'CC', 'ALEJANDRO DAVID', 'TABIMBA ATEHORTUA', '3152352622', 'CR 24 # 4A-09', 'ALEJANDRODAVIDTABIMBA463@GMAIL.COM', 'LA INDEPENDENCIA', 2, 'Técnico', 'TECNICO FIBRA OPTICA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116273114', 'CC', 'LUISA MARIA ', 'DUQUE GUARNIZO', '3162457726', 'kr 24 B 3 BIS 27', 'luisamariaduqueg@gmail.com', 'PORTALES DEL RIO', 2, 'Tecnológico', 'LOGISTICA ', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116273482', 'CC', 'DANIELA', 'ROMERO GIRALDO', '9086771095', 'CL 20 # 13 - 02', 'DANI16241@OUTLOOK.ES', 'RUBEN CRUZ VELEZ', 2, 'Básica Primaria', 'ESTILISTA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116273570', 'CC', 'HASLY DAYANN', 'QUIROGA PEREZ', '3186771369', 'TZ 12 #23 35', 'PAYASITOSLOSCHIQUIS@HOTMAIL.COM', 'RUBEN CRUZ VELEZ', 2, 'Técnico', 'SECRETARIA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116273637', 'CC', 'ANGIE DANIELA ', 'GONZALEZ RODRIGUEZ', '3001629691', 'KR 4A# 22C - 49', 'ADGONZALEZ33@GMAIL.COM', 'El Palmar ', 2, 'Técnico', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', '', 'Activo'),
('1116274012', 'CC', 'ISABEL CRISTINA ', 'VALENCIA ZORRILLA ', '3233964543', 'TZ 20 # 3 -21', 'cristhinita12@hotmail.com', 'PORTALES DEL RIO', 2, 'Técnico', 'AUXILIAR SASLUD ORAL ', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116275486', 'CC', 'DANIELA', 'COLORADO ARANDA ', '311 8215218', 'MZ 55 CASA 29', 'andres-1312@hotmail.com', 'BOSQUES DE MARACAIBO', 2, 'Tecnológico', 'SEGURIDAD Y SALUD', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116275558', 'CC', 'JUAN ESTEBAN', 'CARDONA CAMPUZANO', '3126641678', 'MZ H CASA 15', 'JUANES-516@OUTLOOK.COM', 'URBANIZACION LA PAZ', 2, 'Profesional', 'INGENIERO', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116276034', 'CC', 'MARIA CAMILA', 'RIVERA VELEZ', '3158571720', 'MANZANA 12 CASA 36', 'camilajohan1801@gmail.com', 'BOSQUES DE MARACAIBO', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116276074', 'CC', 'ANGIE MELISA', 'POSSO MENDEZ', '3188864923', 'CJ MATE # 27-6', 'ANGIEMELISSA.97@HOTMAIL.COM', 'AGUACLARA', 2, 'Tecnológico', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1116276816', 'CC', 'ELIZABETH', 'HIGUITA ASPRILLA', '3163616705', 'MZ D CASA 3', 'LILIADEYANIRAASPRILLA@GMAIL.COM', 'URBANIZACION LA PAZ', 2, 'Técnico', 'CUIDADORA', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116277114', 'CC', 'ANAMARIA', 'VICTORIA POTES', '3016756581', 'CALLE 5A # 22 21', 'ANAMARVIC217@GMAIL.COM', 'SAMAN DEL NORTE', 2, 'Profesional', 'ADMON EMPRESAS', 'Permanente', 'Whatsapp', 'tulua', 'Activo'),
('1116277328', 'CC', 'NATHALIA VANESSA', 'GIRALDO OSORIO', '3233529372', 'DG 20 TZ 20 22', 'NATH.GIRALDO2715@GMAIL.COM', 'HORIZONTE SANTA ISABEL', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('1116277782', 'CC', 'LAURA ALEJANDRA', 'ZAPATA VARON', '3126588249', 'CALLE 16 # 1 29', 'CELESTE97MARIN@ICLOUD.COM', 'VILLA LILIANA', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116278291', 'CC', 'CLAUDIA PATRICIA', 'ZAPATA LADINO', '3167313645', 'CL 3 B 24 A 34', 'CLAUDIALADIINO28@GMAIL.OM', 'PORTALES DEL RIO', 2, 'Técnico', 'DESEMPLEADO', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('1116279878', 'CC', 'EFRAIN ALEXIS', 'PIEDRAHITA NARVAEZ ', 'N/A', 'N/A', 'E@HOTMAIL.COM', 'LA CAMPIÑA', 3, 'Seleccione una opción', 'N/A', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116280053', 'CC', 'ANGIE LORENA', 'SAENZ VELEZ', '3148165017', 'CL 19 # 15A 05 ', 'saaenz14@gmail.com', 'LOS OLMOS', 2, 'Técnico', 'AUX ENFERMERIA ', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('1116280898', 'CC', 'LEIDY JOHANNA ', 'RUIZ GIRALDO', '3016776362', 'CR 23 # 14 27', 'LEIDYJHOANNARUIZGIRALDO@GMAIL.COM79', 'MARACAIBO', 3, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116281162', 'CC', 'CLAUDIA VANESSA', 'RAMIREZ GAVIRIA ', '3173107652', 'KR 23 A 5-24 ', 'VANEGAVIRIA1205@GMAIL.COM', 'ALAMEDA', 2, 'Básica Secundaria', 'OFICIOS VARIOS ', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('1116281268', 'CC', 'YULIANA ', 'CASTAÑEDA BRAM', '3152506049', 'CL 6 # 22 - 25', 'YULIALUCES@HOTMAIL.COM', 'MUNICIPAL', 2, 'Técnico', 'HIGIENISTA ORAL', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116281785', 'CC', 'DANIELA', 'ZAMUDIO ARIAS', '3116469010', 'CL 3B # 24A 52', 'JHOANSTIVENGARCIA@HOTMAIL.COM', 'PORTALES DEL RIO', 2, 'Técnico', 'AUX. CONTABLE ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116284029', 'CC', 'JOHAN STEVEN', 'GARCIA CORREA', '3152352622', 'CARRERA 22S # 7 05', 'GARCIA.LEIDY25@GMAIL.COM', 'VILLA COLOMBIA', 2, 'Técnico', 'AUX. ENFERMERIA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1116433651', 'CC', 'MARISEL ', 'ARCOS RENTERIA', '3146369729', 'CL 9 # 23 - 104', 'MA.ARCO22@HOTMAIL.COM', 'LA GRACIELA', 3, 'Técnico', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'ZARZAL', 'Activo'),
('1116438621', 'CC', 'YEIMER YAIR ', 'ROBAYO BURITICA ', '3162377335', 'KR 17 26 35 ', 'YEIMERYAIRROBAYO@GMAIL.COM', 'LAS DELICIAS', 3, 'Técnico', 'TECNICO ELECTRICISTA ', 'Permanente', 'Whatsapp', 'ZARZAL', 'Activo'),
('1116446896', 'CC', 'DEICY YOLIMA', 'TUSARMA PARRA', '3103784368', 'CR 3 # 14 04', 'MACEBEDOTUSARMA@GMAIL.COM', 'VILLA LILIANA', 2, 'Básica Secundaria', 'ESTETICISTA', 'Permanente', 'Whatsapp', 'ZARZAL', 'Activo'),
('1116722383', 'CC', 'JOHN EDISSON ', 'CASTAÑO LOZANO', '3206756721', 'CR 25A # 13B17', 'NA@GMAIL.COM', 'LA GRACIELA', 2, 'Técnico', 'POLICIA', 'Permanente', 'Whatsapp', 'TRUJILLO', 'Activo'),
('1116723874', 'TI', 'MARIA FERNANDA', 'GIRALDO SANTA', '3128763904', 'MZ B CASA 26', 'MARIAFER715@HOTMAIL.COM', 'La Paz', 2, 'Profesional', 'PSICOLOGA', 'Permanente', 'Whatsapp', '', 'Activo'),
('1116724190', 'CC', 'JAVIER ANDERSON', 'DUQUE VALENCIA', '3225965774', 'CL 15 # 4 75', 'NA@GMAIL.COM', 'PORTALES DE SAN FELIPE', 2, 'Tecnológico', 'VENDEDOR VIVERO EL ROSAL', 'Permanente', 'Whatsapp', 'TRUJILLO', 'Activo'),
('1117018500', 'CC', 'MARIA FERNANDA', 'PERLAZA SOLIS', 'N/A', 'N/A', 'N@GMAIL.COM', 'La Paz', 2, 'Seleccione una opción', 'N/A', 'No Tiene', 'Whatsapp', '', 'Activo'),
('1120362802', 'CC', 'DAVINSON ', 'HERNANDEZ RESTREPO', '3148011032', 'MZ 9 CASA 46', 'LINDASPIRATAS364@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('1122138209', 'CC', 'DANIELA', 'VELEZ ROA', '3168674770', 'CR 49B # 14B 32', 'DANIELAVELEZROA@GMAIL.COM', 'LAS ACACIAS', 2, 'Profesional', 'PSICOLOGA', 'Permanente', 'Whatsapp', 'ACACIAS', 'Activo');
INSERT INTO `acudientes` (`documento`, `tipo_doc`, `nombre`, `apellido`, `telefono`, `direccion`, `correo`, `barrio`, `estrato`, `nivel_educativo`, `ocupacion`, `tipo_empleo`, `medio_contacto`, `ciu_exp`, `estado`) VALUES
('1122724027', 'CC', 'JULIE PAOLA ', 'ROSERO PERDOMO', '3102805498', 'CL 1 # 24 84', 'ING.PAOLAROSERO@GMAIL.COM', 'PORTALES DEL RIO', 2, 'Profesional', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'PUERTO LEGGUIZAMO', 'Activo'),
('1122810504', 'CC', 'CARLOS ALBERTO', 'TEJEDA GOMEZ ', '3026639352', 'N/A', 'NA@GMAIL.COM', 'AGUACLARA', 2, 'Básica Secundaria', 'MILITAR ', 'Permanente', 'Whatsapp', 'MAICAO ', 'Activo'),
('1123201376', 'CC', 'PAULA ANDREA', 'BURGOSHERNANDEZ', '3187539266', 'CL 3B # 22 10', 'LAFLAK802@GMAIL.COM', 'EL PALMAR', 2, 'Básica Secundaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'PUERTO ASIS ', 'Activo'),
('1126244311', 'CC', 'MIGUEL ANGEL', 'CASTRO VELASQUEZ', '3122841845', 'KR 18 A 1 31 22', 'MIGUELANGELCASTROC@GMAIL.COM', 'LA HERRADURA', 3, 'Básica Secundaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'VENEZUELA', 'Activo'),
('1140814042', 'CC', 'RAFAEL ANTONIO', 'AHUMADA PEREZ', '3154270189', 'CR 24A # 15 63', 'NA@HOTMAIL.COM', 'MARACAIBO', 2, 'Profesional', 'ASESOR COMERCIAL', 'Permanente', 'Whatsapp', 'BARRANQUILLA', 'Activo'),
('1143848141', 'CC', 'VANESSA ', 'LOPEZ LOZANO', '3013854448', 'CR 23A # 2 -03', 'VANESSALOPEZLOZANO156@GMAIL.COM', 'PORTALES DEL RIO', 2, 'Técnico', 'IMPULSADORA', 'Permanente', 'Whatsapp', 'CALI', 'Activo'),
('1143934129', 'CC', 'JHON HERNAN', 'CAPOTE GONZALEZ', '3182311676', 'KR 23# 4B 03', 'NA@GMAIL.COM', 'EL PALMAR', 2, 'Tecnológico', 'TRABAJADOR OFIIAL ', 'Permanente', 'Whatsapp', 'CALI', 'Activo'),
('1144209999', 'CC', 'YINETH MARCELA', 'DIAZ TAPIAS', '3184698306', 'MZ G CASA 1', 'YMDT1999@GMAIL.COM', 'URBANIZACION LA PAZ', 2, 'Básica Secundaria', 'SECRETARIA', 'Permanente', 'Whatsapp', 'CALI', 'Activo'),
('11444792', 'CC', 'JONH WILLIAN ', 'DUQUE PEREZ', '3007559259', 'MZ 64 CASA 25', 'NA@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Técnico', 'PENSIONADO', 'No Tiene', 'Whatsapp', 'FACATATIVA', 'Activo'),
('1151936983', 'CC', 'CARLOS ANDRES', 'LENIS CHAGUENDO', '3185463086', 'CL 3C # 22C -36', 'CARLOSLENISCH@GMAIL.COM', 'EL PALMAR', 2, 'Técnico', 'CHEF', 'Temporal', 'Whatsapp', 'CALI', 'Activo'),
('1232393590', 'CC', 'JAIVER ANDRES', 'JIMENEZ RORIGUEZ', '3187774729', 'CL 9A DG 23 67', 'NA@GMAIL.COM', 'SANTA INES DE COMFAMILIAR', 2, 'Profesional', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'SAN CRISTOBAL VENEZUELA', 'Activo'),
('14795352', 'CC', 'LUIS FERNANDO', 'RIOS SANCHEZ', '3188253565', 'KR 11 # 26B 18', 'NA@GMAIL.COM', 'BOLIVAR', 2, 'Básica Primaria', 'COMERCIANTE ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('14795490', 'CC', 'JOSE MIGUEL ', 'CORTES AGUILAR ', '3163222653', 'N/A', 'N/A@GMAIL.COM', 'SAMAN DEL NORTE', 2, 'Básica Secundaria', 'MECANICO', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('14795746', 'CC', 'OVIDIO', 'MONCADA LARGO', '3104963609', 'CL 6 #19 89', 'OVIDIOMONCADA33@GMAIL.COM', 'SAN LUIS', 2, 'Técnico', 'AUX. ADMINISTRATIVO', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('14797723', 'CC', 'FRANCISCO ANTONIO', 'LASSO JARAMILLO', '3041200760', 'CL 9 5 82', 'NA@GMAIL.COM', 'SANTA INES DE COMFAMILIAR', 2, 'Básica Secundaria', 'INDEPENDIENTE/ AGRICULTOR', 'Permanente', 'Whatsapp', '', 'Activo'),
('14798373', 'CC', 'JEYSSON OSWALDO', 'HENAO MEJIA', '3233470434', 'KR 10 # 14A - 53', 'JMAY1422@HOTMAIL.COM', 'DIABLOS ROJOS I', 2, 'Básica Secundaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('14798506', 'CC', 'CARLOS ANDRES', 'MARDONES SALDARRIAGA', '3023184604', 'CARRERA 18 # 23 59', 'LORENASAM3038@HOTMAIL.COM', 'ROJAS', 2, 'Básica Secundaria', 'SUPERNUMERARIO ING CARMELITA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('14798844', 'CC', 'DIEGO FERNANDO', 'ROMERO GONZALEZ', '3178320895', 'CL 6 # 22C 28', 'NA@GMAIL.COM', 'VILLA COLOMBIA', 2, 'Básica Secundaria', 'MENSAJERO', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('14799474', 'CC', 'RUBEN DARIO', 'HINCAPIE ROBLES', '3154339105', 'KR 47 35 B 05', 'ruben@igocolombia.co', 'Villa Campestre', 6, 'Profesional', 'EMPRENDEDOR', 'Permanente', 'Whatsapp', '', 'Activo'),
('14799746', 'CC', 'JONNY ANDRES', 'VASQUEZ ZAPATA', '3113836014', 'CR 8OESTE # 25 56', 'JONNYANDRESVASQUEZZAPATA@GMAIL.COM', 'LAS NIEVES', 2, 'Básica Secundaria', 'PENSIONADO', 'No Tiene', 'Whatsapp', 'TULUÁ', 'Activo'),
('14800052', 'CC', 'OSCAR ARLEY', 'BALDION DUEÑAS', '3164023003', 'TZ  12 # 23 35', 'PAYASITOSLOSCHIQUIS@HOTMAIL.COM', 'RUBEN CRUZ VELEZ', 2, 'Técnico', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('14800386', 'CC', 'WILMAR ANDRES', 'OSPINA', '3225941950', 'KR 20 # 7-11', 'WILMER@HOTMAIL.COM', 'BELLO HORIZONTE', 2, 'Básica Secundaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('14800672', 'Sel', 'JESUS DAVID', 'MELENDEZ POSSO', '3168701208', 'VIA LOS CAIMOS # 28 102', 'JUANMAMOR@HOTMAIL.ES', 'AGUACLARA', 2, 'Profesional', 'EMPLEADO EL TREBOL', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('14801856', 'CC', 'JHON FREDY ', 'ALVAREZ ORDOÑEZ', '3226539330', 'CL 1 # 24 108', 'JHON.ALVAREZ.PANA@HOTMAIL.COM', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'COMERCIANTE', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('14801912', 'CC', 'YULIAN', 'GOMEZ MUÑOZ', '3104207370', 'CJ EL DELIRIO PASAJE 1 # 4A 01 ', 'NA@GMAIL.COM', 'AGUACLARA', 2, 'Básica Secundaria', 'AUX. OPERARIO', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('14802239', 'CC', 'BERNANDO ', 'CRUZ HURTADO', '3172193411', 'CL 13 4 94 ', 'NA@GMAIL.COM', 'PORTALES DE SAN FELIPE', 3, 'Ninguno', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', '', 'Activo'),
('14802337', 'CC', 'MILTON FABIAN ', 'SOLANILLA ARIAS', '3225134407', 'CL 10C 27D03', 'MILTON.SOLANILLA@CORREO.POLICIA.GOV.CO', 'Peñaranda ', 2, 'Profesional', 'POLICIA', 'Permanente', 'Whatsapp', '', 'Activo'),
('14837021', 'CC', 'GUILLERMO ANDRES ', 'VALENCIA GOMEZ', '3172541856', 'CL 7 25 C 13', 'ANDRES_CAMI09@HOTMAIL.COM', 'SIETE DE AGOSTO', 2, 'Básica Secundaria', 'OPERARIO', 'Permanente', 'Whatsapp', 'PALMIRA', 'Activo'),
('14894983', 'CC', 'JHON JAIRO', 'ORTIZ GONZALEZ', '3174312052', 'KR 24 # 4 16', 'NA@GMAIL.COM', 'ALAMEDA', 2, 'Básica Secundaria', 'VENTAS', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('15989657', 'CC', 'RODOLFO', 'RESTREPO LOPEZ ', '3135002833', 'MZ 29 CASA 1 ', 'NA@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Básica Primaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'PENSILVANIA', 'Activo'),
('16075623', 'CC', 'JUAN ALEJANDRO', 'ACOSTA', '3186912827', 'CL 7ª # 22C – 20 ', 'NA@HOTMAIL.COM', 'VILLA COLOMBIA', 2, 'Posgrado', 'EMPLEADO', 'Permanente', 'Whatsapp', 'MANIZALEZ', 'Activo'),
('16354688', 'CC', 'FULGENCIO ', 'CAÑAS RAMIREZ ', '3154833082', 'CL 3 21 16', 'NA@GMAIL.COM', 'ALAMEDA', 2, 'Básica Secundaria', 'PENSIONADO', 'No Tiene', 'Whatsapp', 'RIOSUCIO', 'Activo'),
('16360467', 'CC', 'JOSE FRANCISCO', 'TORO VICTORIA', '3105207118', 'CL 4B # 24A – 19', 'elenajuanema@gmail.com', 'ALAMEDA', 2, 'Básica Secundaria', 'PENSIONADO', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('16365307', 'CC', 'CARLOS ALBERTO', 'GARZON GOMEZ', '3157418399', 'CL 5A # 22A 03', 'NA@GMAIL.COM', 'INTERNACIONAL', 2, 'Básica Primaria', 'MAESTRO DE OBRA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('16365720', 'CC', 'VICTOR MANUEL', 'VICTORIA GONZALEZ', '3137578892', 'CL 15A # 15E 07', 'VIMAVIGO68@HOTMAIL.COM', 'LA CAMPIÑA', 2, 'Tecnológico', 'PENSIONADO', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('16368488', 'CC', 'DIEGO FERNANDO', 'GUTIERREZ GIL', '3163648280', 'CL 10 #  28A 123', 'DIEGOYEVALUNA@GMAIL.COM', 'SANTA RITA DEL RIO', 2, 'Técnico', 'TECNIO EN ELECTRONICA', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('16511863', 'CC', 'JAIR ', 'CAICEDO SAAVEDRA', '3218898271', 'N/A', 'YECELIAARBOLEDA@GMAIL.COM', 'EL BOSQUECITO', 2, 'Básica Secundaria', 'FUERA DEL PAIS ', 'No Tiene', 'Whatsapp', 'BUENAVENTURA', 'Activo'),
('16846825', 'CC', 'CARLOS ANDRES', 'LUCUMI GUTIERREZ', '3174897372', 'CL 16 # 3 03', 'ISAKARITO@HOTMAIL.OM', 'PORTALES DEL RIO', 2, 'Técnico', 'POLICIA', 'Permanente', 'Whatsapp', 'JAMUNDI', 'Activo'),
('18103773', 'CC', 'JHON JAIRO ', 'TORRES LOPERA ', '3143320636', 'CL 6 # 23 A  - 45', 'JJTORRESL04@HOTMAIL.COM', 'ALAMEDA', 3, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Seleccione una opción', 'VILLA GARZON ', 'Activo'),
('18553958', 'CC', 'JOSE LUIS', 'CAJIGAS RENDON', '3168562572', 'CL', 'DANI16241@OUTLOOK.ES', 'RUBEN CRUZ VELEZ', 2, 'Básica Primaria', 'BARBERO', 'Permanente', 'Whatsapp', 'ROLDANILLO', 'Activo'),
('21945177', 'CC', 'LILIA DEL SOCOROO', 'GONZALEZ BAENA', '3222336537', 'CL 4B # 21 10', 'jawei007.jt@gmail.com', 'SAMAN DEL NORTE', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'REMEDIOS', 'Activo'),
('2336627', 'CC', 'JHON FREDY', 'GONZALEZ HERNANDEZ', '3158841819', 'MZ 40 CASA 19', 'NA@HOTMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'IBAGUE', 'Activo'),
('23544792', 'CE', 'ROSSANA FABIOLA', 'PERNIA LEON', '3166880952', 'CL 9A DG 23 67', 'FABIOLA2994@GMAIL.COM', 'SANTA INES DE COMFAMILIAR', 2, 'Profesional', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'VENEZUELA', 'Activo'),
('24687550', 'CC', 'CLAUDIA MILENA', 'ROMERO HOYOS', '3104220826', 'N/A', 'CLAU_2977@HOTMAIL.COM', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'GUATICA', 'Activo'),
('24873351', 'CC', 'NIDIA ESPERANZA', 'ZULUAGA MURILLO', '3128730047', 'MZ 29 CASA 1 ', 'NA@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'PENSILVANIA', 'Activo'),
('2631895', 'CC', 'LUIS ALFONSO', 'CRUZ GONZALEZ', '3164310927', 'ANALUCIA', 'NA@GMAIL.COM', 'CENTRO', 2, 'Básica Secundaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'SAN PEDRO', 'Activo'),
('27333420', 'CC', 'MARLENY DEL SOCORRO', 'MARTINEZ MADROÑERO', '3114263890', 'MZ F CASA 16 ', 'MARLENY12-27@HOTMAIL.COM', 'URBANIZACION LA PAZ', 2, 'Técnico', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'PUEBLO VIEJO ', 'Activo'),
('29231704', 'CC', 'YECELIA ', 'ARBOLEDA GARCIA', '3218898271', 'KR 23 A 3 B 04', 'YECELIAARBOLEDA@GMAIL.COM', 'EL BOSQUECITO', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'BUENAVENTURA', 'Activo'),
('29314823', 'CC', 'MONICA ', 'SEPULVEDA REYES ', '3184524786', 'KR 22 8 03 ', 'MONICASEPULVEDA953@GMAIL.COM', 'MUNICIPAL', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'SEVILLA ', 'Activo'),
('29464109', 'CC', 'ANA PATRICIA', 'LOPEZ RESTREPO', '3105085778', 'AV PPAL 26-75', 'ANAPARLOPEZ@GMAIL.COM', 'AGUACLARA', 3, 'Básica Primaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'EL CAIRO', 'Activo'),
('29663277', 'CC', 'LUZ ELENA', 'OCORO ZAMBRANO', '3207108404', 'CL 4B # 24A – 19', 'elenajuanema@gmail.com', 'ALAMEDA', 2, 'Básica Secundaria', 'CONFECCION', 'Permanente', 'Whatsapp', 'PALMIRA', 'Activo'),
('29760486', 'CC', 'MARIA LINDELIA ', 'COLORADO GUTIERREZ', '3235142119', 'MZ 9 CASA 46', 'LINDASPIRATAS364@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('29760820', 'CC', 'LEIDY YOHANA', 'GIRALDO GALLEGO', '3103540719', 'MZ 16 CASA 8 ', 'CHECHIGIRALDO@OUTLOOK.ES', 'BOSQUES DE MARACAIBO', 2, 'Profesional', 'MANICURISTA', 'Permanente', 'Whatsapp', 'RIO FRIO ', 'Activo'),
('29761023', 'CC', 'DEICY VIVIANA', 'LOAIZA GIRALDO', '3184202838', 'DG 23 #9A -25', 'ISABELLAFLOREZLOAIZA@GMAIL.COM', 'SANTA INES DE COMFAMILIAR', 2, 'Básica Secundaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'RIOFRIO', 'Activo'),
('29819430', 'CC', 'MARLEY', 'GONZALEZ TABORA', '3143806431', 'MZ A CASA 16', 'MARLEYTABORDA.21@GMAIL.COM', 'URBANIZACION LA PAZ', 2, 'Tecnológico', 'VENTAS', 'Permanente', 'Whatsapp', 'SEVILLA ', 'Activo'),
('29873359', 'CC', 'MARIA EUGENIA', 'LOPEZ RODRIGUEZ', '3162394520', 'CL 6 # 22C 28', 'MARULOPEZ1836@HOTMAIL.COM', 'VILLA COLOMBIA', 2, 'Básica Secundaria', 'AUX. ADMINISTRATIVO', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('29873837', 'CC', 'MARTHA LILIANA', 'RESTREPO CAÑAS', '3178355653', 'CL 4 # 22B -42', 'MARTHA@GMAIL.COM', 'EL PALMAR', 2, 'Tecnológico', 'AUXILIAR CONTABLE ', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('29874463', 'CC', 'MORELIA', 'RIOS ARROYAVE ', '3164478432', 'CL 5 # 22C -15', 'NA@GMAIL.COM', 'EL PALMAR', 2, 'Básica Primaria', 'AMADE CASA ', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('29876904', 'CC', 'VIVIANA ANDREA', 'GIL PEDRAZA', '3182321330', 'MZ O CASA 8', 'VIVIGILPEDRAZA@HOTMAIL.COM', 'URBANIZACION LA PAZ', 2, 'Básica Secundaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('29877092', 'CC', 'CLAUDIA LILIANA', 'CEBALLOS LOAIZA', '3183396369', 'CL 23 # 23 - 50', 'CLAU.820@HOTMAIL.COM', 'CENTRO', 3, 'Básica Secundaria', 'ESTILISTA', 'Permanente', 'Whatsapp', 'HUILA', 'Activo'),
('29877988', 'CC', 'ROSITA PIEADAD', 'NARVAEZ DIAZ', '3122438546', 'CL 6 #19 89', 'OVIDIOMONCADA33@GMAIL.COM', 'SAN LUIS', 2, 'Básica Primaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('29878190', 'CC', 'ORFA NELLY', 'MARIN MORALES ', '3185873941', 'MZ D CASA 5', 'NELLY452008@GMAIL.COM', 'CASAS HUERTAS', 3, 'Básica Primaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('29973504', 'CC', 'SANDRA MILENA', 'GONZALEZ GAVIRIA', '3108281770', 'CL 11 # 23 71', 'sandramilenagonzalez@gmail.com', 'LA GRACIELA', 2, 'Básica Secundaria', 'ESTILISTA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('30406128', 'CC', 'LILIA AMPARO', 'RESTREPO LOPEZ', '3155621082', 'CJ SAN ANTONIO 30-71', 'NA@GMAIL.COM', 'AGUACLARA', 2, 'Básica Primaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', '', 'Activo'),
('30946547', 'CC', 'ERIKA', 'MIRANDA BARRETO', '3175493665', 'CL 15 # 3 63', 'ERIKAMB84@HOTMAIL.COM', 'PORTALES DE SAN FELIPE', 2, 'Básica Secundaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'ACACIAS', 'Activo'),
('31192743', 'CC', 'FLORALBA ', 'CAÑAS OSORIO', '032349220', 'CL 4 # 22B -42', 'FLORALBA@HOTMAIL.COM', 'EL PALMAR', 2, 'Básica Primaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('31204684', 'CC', 'MAIDA ESTELLA', 'PRADA GALINDO', '3184020049', 'CL 16 # 28A 42', 'NA@GMAIL.COM', 'POPULAR', 2, 'Técnico', 'AMA DE CASA', 'No Tiene', 'Whatsapp', '', 'Activo'),
('31432369', 'CC', 'ALEJANDRA', 'FRANCO RAMIREZ', '3155874026', 'KR 23A # 4 16', 'FRANCORAMIREZALEJANDRA7@GMAIL.COM', 'ALAMEDA', 2, 'Básica Secundaria', 'MUSICO', 'Permanente', 'Whatsapp', 'CARTAGO', 'Activo'),
('31490199', 'CC', 'LILIA DEYANIRA', 'ASPRILLA', '3163616705', 'MZ D CASA 3', 'LILIADEYANIRAASPRILLA@GMAIL.COM', 'URBANIZACION LA PAZ', 2, 'Básica Secundaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', '', 'Activo'),
('31790433', 'CC', 'FRANCY YOLIMA', 'BEDOYA CAMPOS', '3158841819', 'MZ 40 CASA 19', 'francybedoya.20@gmail.com', 'BOSQUES DE MARACAIBO', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('31791024', 'CC', 'LUZ ADRIANA ', 'LOPEZ ROJAS ', '3154952876', 'CL 4 A 20 81', 'LUZADRIANALOPEZ10@HOTMAIL.COM', 'JORGE ELIECER GAITAN', 2, 'Tecnológico', 'EMPLEADA DE UMATA ', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('31791579', 'CC', 'MARIA GRACIELA', 'GUERRERO NARVAEZ', '3188424395', 'CL 10 # 28 21', 'GRACENARVAEZ0721@GMAIL.COM', 'ALAMEDA', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('31792571', 'CC', 'NAYIBY ', 'LOZANO CASTRO', '3147800739', 'CL 6 # 19 08', 'ENLACE.NET4@HOTMAIL.COM', 'SAN LUIS', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('31793192', 'CC', 'KATHERINE', 'HEDMON SANCHEZ', '3163752017', 'CL 15 # 4 75', 'HEDMONTKATHERINE@GMAIL.COM', 'PORTALES DE SAN FELIPE', 2, 'Profesional', 'INSTRUCTORA DEL SENA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('31793676', 'CC', 'XIMENA', 'CUASIALPUD MARULANDA', '3015744909', 'CL 20 # 3 73', 'XIMENA.CUASIALPUD@GMAIL.COM', 'Guayacanes', 2, 'Técnico', 'PENSIONADO', 'No Tiene', 'Whatsapp', '', 'Activo'),
('31793823', 'CC', 'GLORIA ISABEL', 'CARO LEESMA ', '3153573718', 'CL 16 # 3 03', 'ISAKARITO@HOTMAIL.OM', 'PORTALES DEL RIO', 2, 'Tecnológico', 'ADMINISTRADOR DE EMPRESAS', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('31794054', 'Sel', 'JACKELINE', 'AGUDELO MARIN', '3188540772', 'CALLE 22 # 24 28', 'gl6791877@gmail.com', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'ESTILISTA', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('36294525', 'CC', 'DIANA MILENA', 'CUELLAR ARANDA', '3138770171', 'CR 28F # 4A 85', 'NA@HOTMAIL.COM', 'AGUACLARA', 2, 'Técnico', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'PITALITO', 'Activo'),
('38755965', 'CC', 'ALBA NELLY', 'CASTILLO MARIN', '3155099789', 'MZ 41 CASA 26', 'ALBANELLY1982SEVILLA@HOTMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Básica Secundaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'SEVILLA VALLE', 'Activo'),
('38756268', 'CC', 'MARCIA LORENA', 'TORRES ARIAS', '3182337702', 'CL 9A # 17 02', 'LORENITTA83@HOTMAIL.COM', 'SANTA INES DE COMFAMILIAR', 2, 'Básica Secundaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'SEVILLA', 'Activo'),
('38790431', 'CC', 'SONIA PATRICIA', 'GARCIA QUINTERO', '3173234637', 'MZ G CASA 7 ', 'SOPAGAQUI@GMAIL.COM', 'EL PARAISO', 1, 'Técnico', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('38790469', 'CC', 'CLAUDIA VANESSA ', 'QUINTERO PASIMINIO ', '3173656263', 'CL 4 # 22 C 23', 'vaqui2002@gmail.com', 'El Palmar ', 2, 'Profesional', 'COMERCIANTE', 'Permanente', 'Whatsapp', '', 'Activo'),
('38790483', 'CC', 'YEIMY JOHANA', 'GARCIA BRICEÑO', '3165469063', 'CR 9A # 7A 14', 'yeimygb1982@gmail.com', 'LA INDEPENDENCIA', 2, 'Básica Secundaria', 'AUX SERVICIOS', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('38790567', 'CC', 'SANDRA MILENA', 'GUEVARA VIDAL', '3183781987', 'KR 10 # 14A - 53', 'SAMIGUE1907@HOTMAIL.COM', 'DIABLOS ROJOS I', 2, 'Básica Secundaria', 'ASESOR COMERCIAL', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('38790743', 'CC', 'LORENA', 'GUTIERREZ PARRA', '3113955251', 'CL 10 #  28A 123', 'NA@GMAIL.COM', 'SANTA RITA DEL RIO', 2, 'Básica Secundaria', 'SECRETARIA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('38791261', 'CC', 'LINA TATIANA ', 'VALENCIA BAQUERO ', '3183164725', 'KR 17 26 35 ', 'GRAN.NACION@GMAIL.COM', 'LAS DELICIAS', 3, 'Técnico', 'AMA DE CASA', 'No Tiene', 'Email', 'TULUA ', 'Activo'),
('38791332', 'CC', 'ALBANIA', 'MORANTE CRISTANCHO', '3162280013', 'VIA LOS CAIMOS # 28 102', 'ALBAMOR14@HOTMAIL.COM', 'AGUACLARA', 2, 'Profesional', 'CONTADORA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('38792476', 'CC', 'ALEJANDRA MARIA', 'HURTADO GONZALEZ', '3117976119', 'MZ V CASA 5 ', 'yulilh2001@gmail.com', 'AGUACLARA', 2, 'Básica Secundaria', 'OPERAORA ARA ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('38793255', 'CC', 'ANGELICA MARIA', 'ARCE RESTREPO', '3006415760', 'MZ 64 CASA 25', 'LOLAPELIONA67@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Profesional', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('38793689', 'CC', 'VIVIANA', 'MENA CASTRILLON', '3164801767', 'CL 5B # 22B 04', 'VIVIMENAC25@HOTMAIL.COM', 'EL PALMAR', 2, 'Tecnológico', 'INDEPENDIENTE', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('38794025', 'CC', 'JUDITH ANDREA ', 'CASTRO  GARCCIA', '3106561565', 'CL 5 B 17 02 ', 'JUDITHANDREACASTROGARCIA3@GMAIL.COM', 'TERCER MILENIO', 2, 'Básica Secundaria', 'MANICURISTA ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('38795840', 'CC', 'JOHANNA MILENA ', 'OCAMPO LOPEZ ', '3216070955', 'CL 6 16 94', 'JOMILO01@HOTMAIL.COM', 'SANTA INES DE COMFAMILIAR', 2, 'Técnico', 'AUX ENFERMERIA ', 'Permanente', 'Whatsapp', 'PUERTO BOYACA', 'Activo'),
('38795987', 'CC', 'YENNY XIMENA', 'OSPINA', '3148443446', 'MZ 13 CASA 35 ', 'ALEXANDRAOSPINA2001@GMAIL.COM', 'Bosques de Maracaibo ', 2, 'Básica Secundaria', 'TRABAJO EN CASA ', 'Permanente', 'Whatsapp', '', 'Activo'),
('38796124', 'CC', 'MARIA ANGELICA', 'PEDROZA MANZANO', '3122450225', 'CL 19 # 2 - 12', 'MPEDROZA196@GMAIL.COM', 'EL LIMONAR', 2, 'Básica Secundaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('38796402', 'CC', 'SANDRA LORENA', 'LOPEZ OBANDO', '3156154683', 'KR 24 D # 3 C -39', 'SALORELO@HOTMAIL.COM', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'ENFERMERA', 'Permanente', 'Whatsapp', '', 'Activo'),
('38796420', 'CC', 'ADRIANA MARIA ', 'BOLIVAR ARIAS ', '3182832365', 'CL 7 25 C 13', 'NA@GMAIL.COM', 'SIETE DE AGOSTO', 2, 'Técnico', 'AUX ENFERMERIA ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('38796441', 'CC', 'PAOLA ANDREA ', 'MAMIAN ROJAS', '3219614648', 'CL 9 A DG 23 62', 'HALCONROJOX2@HOTMAIL.COM', 'SANTA INES DE COMFAMILIAR', 3, 'Profesional', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('38796625', 'CC', 'DORA EIDY', 'CARDONA ORTIZ', '3182918561', 'MZ K LOTE 5 CASA 2', 'dortita.cardona@gmail.com', 'SAN FRANCISCO', 2, 'Básica Primaria', 'ANALISTA INVENTARIO', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('38796679', 'CC', 'CLAUDIA VIVIANA', 'CUARAN CAÑAS', '3205141050', 'MZ E CASA 2', 'VIVIANA_PETTI@HOTMAIL.COM', 'CASAS HUERTAS', 2, 'Básica Secundaria', 'OPERAORA DE TIENDA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('38797457', 'Sel', 'XIMENA ', 'BONILLA LOPEZ', '3143400305', 'CL 4 A 22 C 09', 'XIMENABONILLALOPEZ1986@GMAIL.COM', 'EL PALMAR', 2, 'Técnico', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('38901645', 'CC', 'MARIA LUDIVIA', 'GIRALDO ALZATE', '3168562572', 'CL 20 # 13 - 02', 'DANI16241@OUTLOOK.ES', 'RUBEN CRUZ VELEZ', 2, 'Básica Primaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'ARGELIA', 'Activo'),
('42160616', 'CC', 'ADRIANA SIRLEY', 'ARENAS BUSTAMANTE', '3126441424', 'KM 8 VIA LA MAGDALENA', '1ADRIANAARENAS1@GMAIL.COM', 'LA VILLA', 3, 'Posgrado', 'DOCENTE DE AULA ', 'Permanente', 'Whatsapp', '', 'Activo'),
('42164639', 'CC', 'SOFIA LORENA', 'ARENAS BUSTAMANTE ', '3148361071', 'MZ 7 38 B 15 ', 'SOFIARENAS@HOTMAIL.COM', 'Urb. La Villa ', 3, 'Profesional', 'DOCENTE', 'Temporal', 'Whatsapp', '', 'Activo'),
('43449394', 'CC', 'MARIA YOLANA', 'HERRERA CARMONA', '3213102728', 'CL 8A # 28A -44', 'HERRERAYOLANDA298@GMAIL.COM', 'SANTA RITA DEL RIO', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'ANTIOQUIA', 'Activo'),
('43821809', 'CC', 'HILDA YANETH', 'PIEDRADITA PINEDA', '3225941950', 'KR 20 # 7-11', 'DANIELA@GMAIL.COM', 'BELLO HORIZONTE', 2, 'Básica Primaria', 'AMA DE CASA ', 'Permanente', 'Whatsapp', 'ANGOSTURA ANTIOQUIA', 'Activo'),
('4385735', 'CC', 'LUIS ALFONSO', 'GONZALEZ QUICENO', '3145467062', 'MZ D CASA 5', 'NA@GMAIL.COM', 'CASAS HUERTAS', 3, 'Básica Secundaria', 'PANELERO', 'Permanente', 'Whatsapp', 'BELALCAZAR', 'Activo'),
('4905775', 'PPT', 'ESMERALDA DEL VALLE ', 'ARAUJO BRICEÑO', '3122841845', 'KR 18 A 1 31 22', 'araujoesmeralda5@gmail.com', 'LA HERRADURA', 3, 'Profesional', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'BOGOTA', 'Activo'),
('49610589', 'CC', 'LICET KARINA', 'PEREZ TOVAR', '3168679338', 'KR 24 # 3 99', 'LICEKAME-PEREZ@HOTMAIL.COM', 'PORTALES DEL RIO', 2, 'Posgrado', 'INDEPDNIENTE', 'Temporal', 'Whatsapp', '', 'Activo'),
('52804602', 'CC', 'BELKIS ADRIANA', 'MENDEZ MENDOZA', '3209083696', 'CL 4 # 5 43', 'NANITAMENDEZMENDOZA@HOTMAIL.COM', 'TERCER MILENIO', 2, 'Profesional', 'DOCENTE', 'Permanente', 'Whatsapp', 'BOGOTA', 'Activo'),
('6085080', 'PPT', 'RICARDO JOSE', 'ABACHE CASTILLO', '3166462875', 'KR 17 20 16', 'RICARDOVABACHE@GMAIL.COM', 'RUBEN CRUZ VELEZ', 3, 'Básica Secundaria', 'BARBERO ', 'Permanente', 'Whatsapp', '', 'Activo'),
('6180043', 'PPT', 'LUCELYS DEL JESUS ', 'PATIÑO ORTIZ', '3183018082', 'KR 17 20 16', 'NA@GMAIL.COM', 'RUBEN CRUZ VELEZ', 3, 'Básica Secundaria', 'MODISTA', 'Permanente', 'Whatsapp', '', 'Activo'),
('6199707', 'CC', 'DIEGO FERNANDO', 'RIVERA ZULETA', '3187739961', 'KR 24 # 3 99', 'DIFER105@HOTMAIL.COM', 'PORTALES DEL RIO', 2, 'Profesional', 'ZOOTECNISTA', 'Permanente', 'Whatsapp', '', 'Activo'),
('6428548', 'CC', 'CARLOS JULIAN', 'ARIAS SEPULVEA', '3168217994', 'CL 17 # 38A 36', 'WAR75@LIVE.COM', 'ENTRE RIOS', 3, 'Técnico', 'POLICIA', 'Permanente', 'Whatsapp', 'RIOFRIO', 'Activo'),
('6428578', 'CC', 'JOHN ROOSEVELT', 'GALLEGO BUENO ', '3188041970', 'CALLEJON EL DELIRIO AGUACLARA', 'JHONGALLEGO8578@GMAIL.COM', 'AGUACLARA', 2, 'Básica Secundaria', 'CERRAJERO ', 'Temporal', 'Whatsapp', 'RIOFRIO ', 'Activo'),
('6446660', 'CC', 'JOHN FREDY', 'VELASQUEZ', '3217718375', 'CR 10 # 25B 08', 'NA@GMAIL.COM', 'MARANDUA', 2, 'Básica Secundaria', 'ING ELECTRICO', 'Permanente', 'Whatsapp', 'SAN PEDRO', 'Activo'),
('6499329', 'CC', 'OSCAR EDUARDO', 'LAVERDE CASTRO', '3182495874', 'MZ 13 CASA 35 ', 'BRIGADIER272@HOTMAIL.COM', 'Brisas de Morales', 2, 'Básica Secundaria', 'CONDUCTOR', 'Permanente', 'Whatsapp', '', 'Activo'),
('6499866', 'CC', 'CARLOS AUGUSTO', 'LOPEZ OROZCO', '3166834031', 'CARRERA 23 #3A 21', 'NA@GMAIL.COM', 'EL PALMAR', 2, 'Tecnológico', 'JEFE DE BODEGA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('6544798', 'CC', 'EISE NOVER', 'HURTADO SUAZA', '3165369030', 'MZ G CASA 8', 'NA@GMAIL.COM', 'URBANIZACION LA PAZ', 2, 'Básica Secundaria', 'CONDUCTOR ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('66682936', 'CC', 'DIANA SILENE', 'OSORIO LAVERDE', '3117023553', 'CR 4 # 19A 03', 'D_CARAMELO@HOTMAIL.COM', 'GUAYACANES', 2, 'Profesional', 'DOCENTE', 'Permanente', 'Whatsapp', 'ZARZAL', 'Activo'),
('66708865', 'CC', 'BLANCA LIRIA', 'TRUJILLO ARANGO', '3163792853', 'CL 6 # 19 30', 'NA@HOTMAIL.COM', 'SAN LUIS', 2, 'Básica Primaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUÁ', 'Activo'),
('66714911', 'CC', 'EDILMA', 'CORTES CASTILLO', '3158344254', 'CL 6 # 19 48', 'NA@GMAIL.COM', 'San Luis ', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', '', 'Activo'),
('66716322', 'CC', 'BEATRIZ EUGENIA', 'VILLA GARCIA', '3187308813', 'CALLE 7A # 18 53', 'marcelarestrepovilla@hotmail.com', 'FLOR DE LA CAMPANA', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUÁ', 'Activo'),
('66717447', 'CC', 'MARIA ENITH', 'QUINTERO TORRES', '3178175783', 'CL 4 A 24 81', 'MARIAENITHQUINTEROTORRES@GMAIL.COM', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'ASESORA COMERCIAL', 'Permanente', 'Whatsapp', '', 'Activo'),
('66721118', 'CC', 'OLGA LUCIA ', 'RODRIGUEZ HUERTAS', '3162885420', 'CL 3 22 03 ', 'OLGALUCIARODRIGUEZHUERTAS@GMAIL.COM', 'SAMAN DEL NORTE', 2, 'Básica Secundaria', 'AMA DE CASA', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('66722940', 'CC', 'MARTHA ', 'OLAYA VARGAS', '3154727934', 'KR 11 14A 68', 'NA@GMAIL.COM', 'Diablos Rojos', 2, 'Básica Primaria', 'MANICURISTA', 'Permanente', 'Whatsapp', '', 'Activo'),
('66724042', 'CC', 'MARIA YANETH', 'OROZCO DIAZ ', '3154276751', 'CL 5 # 22C -15', 'NA@GMAIL.COM', 'EL PALMAR', 2, 'Profesional', 'ADMINISTRACION DE EMPRESAS ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('66726455', 'CC', 'CARMEN ELENA', 'COLLAZOS BERMUDEZ', '3154083433', 'MZ G CASA 8', 'HELENITA.76@HOTMAIL.COM', 'URBANIZACION LA PAZ', 2, 'Básica Secundaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('66727171', 'CC', 'YOLIMA', 'BORJA PATIÑO', '3188395848', 'KR 22B # 5B 10', 'BORJAYOLIMA941@GMAIL.COM', 'INTERNACIONAL', 2, 'Técnico', 'AUX ENFERMERIA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('66728865', 'CC', 'LUZ MYRIAN ', 'OLAYA MARIN ', '3188041970', 'CALLEJON EL DELIRIO AGUACLARA', 'JHONGALLEGO8578@GMAIL.COM', 'AGUACLARA', 2, 'Básica Primaria', 'AMA DE CASA ', 'No Tiene', 'Whatsapp', 'TULUA', 'Activo'),
('66729469', 'CC', 'SANDRA MILENA', 'CARDONA GARCIA', '3116491935', 'CL 5 19 14', 'SANTY.SANDRA@HOTMAIL.ES', 'JORGE ELIECER GAITAN', 2, 'Técnico', 'ESTILISTA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('67041275', 'CC', 'LEIDY VIVIANA ', 'HERNANDEZ PEREZ', '3103954636', 'CL 9 5 82', 'LEIDYVHERNANDEZ@HOTMAIL.COM', 'SANTA INES DE COMFAMILIAR', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', '', 'Activo'),
('73109148', 'CC', 'ROY', 'MARTELO THORRENS', '3155228864', 'KR 30 #11 -02', 'ROYMARTELO74@GMAIL.COM', 'BRISAS DEL MORALES', 3, 'Profesional', 'GERENTE ', 'Permanente', 'Email', '', 'Activo'),
('76090155', 'CC', 'BRAYAN STIVEN ', 'JIMENEZ ORTEGA', '3105252676', 'CL 9 A DG 23 62', 'HALCONROJOX2@HOTMAIL.COM', 'SANTA INES DE COMFAMILIAR', 3, 'Básica Secundaria', 'PENSIONADO DEL EJERCITO', 'No Tiene', 'Whatsapp', 'PATIA', 'Activo'),
('79946170', 'CC', 'JOSE WILIN', 'GOMEZ PEREZ', '3007514473', 'CL 6 # 19 08', 'NA@GMAIL.COM', 'SAN LUIS', 2, 'Básica Secundaria', 'MENSAJERO', 'Permanente', 'Whatsapp', 'BOGOTA', 'Activo'),
('80121561', 'CC', 'EDWUIN EDUARDO', 'AGUJA MENDOZA', '3023329756', 'CL 4 # 5 43', 'EEAGUJA@GMAIL.COM', 'TERCER MILENIO', 2, 'Básica Secundaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'BOGOTA', 'Activo'),
('80795518', 'CC', 'GERMAN GIOVANNY', 'RAMIREZ ARDONA', '3183801992', 'CL 3B # 22 10', 'LAFLAK802@GMAIL.COM', 'EL PALMAR', 2, 'Básica Secundaria', 'TRANSPORTADOR', 'Permanente', 'Whatsapp', 'BOGOTA', 'Activo'),
('86036141', 'CC', 'CARLOS EDINSSON', 'MANRIQUE LARGO', '3163180759', 'CL 15 # 3 63', 'NA@GMAIL.COM', 'PORTALES DE SAN FELIPE', 2, 'Básica Secundaria', 'EMPLEADO', 'Permanente', 'Whatsapp', 'SAN JUAN DE ARAMA', 'Activo'),
('88248788', 'CC', 'JOSE NELSON', 'SERRANO CALDERON', '3144479863', 'CL 20 # 3 73', 'XIMENA.CUASIALPUD@GMAIL.COM', 'Guayacanes', 2, 'Técnico', 'PENSIONADO', 'No Tiene', 'Whatsapp', '', 'Activo'),
('93206918', 'CC', 'JORGE ARMANDO', 'RORIGUEZ DEVIA', '3138407137', 'MZ A CASA 16', 'NA@GMAIL.COM', 'URBANIZACION LA PAZ', 2, 'Tecnológico', 'VENTAS FARMACIA', 'Permanente', 'Whatsapp', 'PURIFICACION', 'Activo'),
('94062461', 'CC', 'SEBASTIAN', 'PARRA LONDOÑO', '3233218168', 'KM 8 VIA LA MAGDALENA', 'SEVAXTIAN@YAHOO.ES', 'LA VILLA', 3, 'Posgrado', 'INVESTIGADOR', 'Temporal', 'Whatsapp', '', 'Activo'),
('94150848', 'CC', 'DIEGO FERNANDO', 'CORRALES ERAZO', '3152617681', 'MZ 16 CASA 40', 'NA@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Básica Secundaria', 'CONDUCTOR ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94151427', 'CC', 'CARLOS ARTURO', 'MURILLO IAZ', '3007233143', 'KR 26 # 22 40', 'NA@GMAIL.COM', 'TOMAS URIBE', 2, 'Tecnológico', 'COMERCIANTE ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94151961', 'CC', 'JORGE HERNAN', 'JARAMILLO', '3113773221', 'CL 5A # 17 17', 'JORGELUISJARAMILLOSO@GMAIL.COM', 'TERCER MILENIO', 2, 'Básica Secundaria', 'OPERARIO NESTLE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94152125', 'CC', 'FRANCISCO JAVIER ', 'CORDOBA LEAL', '3106323056', 'CL 5 B 17 02 ', 'NA@GMAIL.COM', 'TERCER MILENIO', 3, 'Básica Secundaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94152882', 'CC', 'ROBINSON ANDRES', 'GARCIA BRICEÑO', '3148968391', 'CL 5B # 13 46', 'NA@GMAIL.COM', 'SIETE DE AGOSTO', 2, 'Tecnológico', 'INTENDENTE POLICIA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94153479', 'CC', 'JHON HENRY', 'MARTINEZ MOSQUERA', '3014857731', 'KR 11 14A 68', 'NA@GMAIL.COM', 'Diablos Rojos', 2, 'Básica Secundaria', 'MONTACARGUISTA', 'Permanente', 'Whatsapp', '', 'Activo'),
('94154246', 'CC', 'EDWIN', 'SINISTERRA SAA', '3183970963', 'MZ G CASA 25', 'SINISTERRA201518@GMAIL.COM', 'La Paz', 2, 'Básica Secundaria', 'VIGILANTE', 'Permanente', 'Whatsapp', '', 'Activo'),
('94154247', 'CC', 'JULIAN ANDRES', 'TABARES LOPEZ', '3127728192', 'KR 23A # 4 16', 'FRANCORAMIREZALEJANDRA7@GMAIL.COM', 'ALAMEDA', 2, 'Profesional', 'MUSICO', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94154614', 'CC', 'JULIAN MAURICIO', 'RESTREPO AGUDELO', '3156693957', 'KR 28 # 20 60', 'NA@GMAIL.COM', 'TOMAS URIBE', 2, 'Profesional', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94231401', 'CC', 'DUBERNEY', 'HERNANDEZ GARZON', '3146152927', 'CL 5 19 14', 'SANTY.SANDRA@HOTMAIL.ES', 'JORGE ELIECER GAITAN', 2, 'Técnico', 'MILITAR ', 'Permanente', 'Whatsapp', 'BOLIVAR ', 'Activo'),
('94233877', 'CC', 'ANDRES FELIPE ', 'MELECIO HURTADO', '3205709985', 'CL 5 B 22 A 45', 'CAROLVIVIANA186@GMAIL.COM', 'INTERNACIONAL', 2, 'Básica Secundaria', 'AGENTE BILINGÛE', 'Permanente', 'Whatsapp', 'ZARZAL', 'Activo'),
('94257767', 'CC', 'CESAR AUGUSTO', 'LOPEZ RAMIREZ', '3148372430', 'MZ B CASA 26', 'CESARLOPEZ314@HOTMAIL.COM', 'La Paz', 2, 'Básica Secundaria', 'VIGILANTE', 'Permanente', 'Whatsapp', '', 'Activo'),
('94283392', 'CC', 'RODOLFO ALEJANRO', 'CARDONA SALAZAR', '3107511004', 'MZ 41 CASA 26', 'NA@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Básica Secundaria', 'CONDUCTOR ', 'Permanente', 'Whatsapp', 'SEVILLA VALLE', 'Activo'),
('94357393', 'CC', 'FELIPE ANDRES ', 'GONZALEZ GONZALEZ ', '3153419446', 'CL 12 A 24 04', 'NA@GMAIL.COM', 'EL JARDIN', 3, 'Técnico', 'MAESTRO OBRA BLANCA', 'Temporal', 'Whatsapp', 'ANDALUCIA', 'Activo'),
('94367651', 'CE', 'EDGAR HERNAN', 'ESPITIA LEON', '3116268648', 'CL 10 # 28 21', 'NA@GMAIL.COM', 'ALAMEDA', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94368031', 'CC', 'FABIANO', 'GONZALEZ DIAZ', '3177019397', 'TZ 20 # 2 119', 'NA@GMAIL.COM', 'Portales del Rio ', 2, 'Básica Secundaria', 'SOLDADOR', 'Permanente', 'Whatsapp', '', 'Activo'),
('94388919', 'CC', 'NELSON DE JESUS', 'FLOREZ FAJARDO', '3166435049', 'DG 23 #9A -25', 'ISABELLAFLOREZLOAIZA@GMAIL.COM', 'SANTA INES DE COMFAMILIAR', 2, 'Básica Secundaria', 'CARPINTERIA ALUMNIO', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94390412', 'CC', 'JUAN', 'SOLIS', '3215726260', 'CR 24A #4A 03', 'NA@GMAIL.COM', 'ALAMEDA', 2, 'Básica Secundaria', 'OPERARIO PRODUCCION', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94391431', 'CC', 'FEDERICO ', 'GARCIA DIAZ', '3172574449', 'MZ G CASA 7 ', 'NA@GMAIL.COM', 'EL PARAISO', 1, 'Técnico', 'ASESOR COMERCIAL ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94392304', 'CC', 'DIEGO FABIAN ', 'OCHOA DUQUE', '3166265603', 'CL 4 # 22B -42', 'DIEGO@HOTMAIL.COM', 'EL PALMAR', 2, 'Básica Secundaria', 'COBRADOR', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('94392986', 'CC', 'EDWIN', 'MEJIA ZABALA', '3122258925', 'TV 12 # 6 -11', 'EWMZA1977@GMAIL.COM', 'SIETE DE AGOSTO', 2, 'Profesional', ' ELECTROMECANICO', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94393879', 'CC', 'SIGIFREDO', 'SERNA CARDONA ', '3167140315', 'CL 5 # 22C -15', 'N@GMAIL.COM', 'EL PALMAR', 2, 'Técnico', 'ELETRICISTA ', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('94394080', 'CC', 'JOSE AVIR', 'ESTRADA', '3003143763', 'CL 19 # 2 - 12', 'MPEDROZA196@GMAIL.COM', 'EL LIMONAR', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94394668', 'CC', 'JOHN JAIRO ', 'QUICENO CAÑAS', '3148379434', 'CL 4 A 22 C 09', 'JJQUICENOCANA@GMAIL.COM', 'EL PALMAR', 2, 'Tecnológico', 'ASESOR COMERCIAL ', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94394751', 'CC', 'JOSE BERNARDO', 'BETANCUR LOPEZ', '3168289985', 'CL 9A # 17 02', 'NA@GMAIL.COM', 'SANTA INES DE COMFAMILIAR', 2, 'Básica Secundaria', 'COMERCIANTE', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('94395051', 'CC', 'JOHN DAYRO', 'OLAYA SUAREZ', '3165350875', 'KR 21 # 6 45', 'NA@GMAIL.COM', 'LA INDEPENDENCIA', 2, 'Básica Primaria', 'INDEPENDIENTE', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('94395175', 'Sel', 'OSCAR MARINO', 'RAMIREZ RAMIREZ', '3127267407', 'CL 6 16 94', 'JOMILO01@HOTMAIL.COM', 'SANTA INES DE COMFAMILIAR', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'BOLIVAR', 'Activo'),
('94404990', 'CC', 'LUIS ALFREDO', 'CADAVID CADAVID', '3114335864', 'KR 24 D # 3 C -39', 'LUISALFREDO-6@HOTMAIL.COM', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'CONDUCTOR', 'Permanente', 'Whatsapp', '', 'Activo'),
('94473809', 'CC', 'NESTOR JAIME', 'DUQUE VARGAS', '3174599936', 'MZ K LOTE 5 CASA 2', 'NA@HOTMAIL.COM', 'SAN FRANCISCO', 2, 'Básica Secundaria', 'TEC INSTALACION', 'Permanente', 'Whatsapp', 'BUGA', 'Activo'),
('94477536', 'CC', 'CARLOS ALBERTO', 'TRIANA VERA', '3142112214', 'KR 24', 'cavtriana@hotmail.com', 'Ciudad Campestre', 5, 'Profesional', 'INGENIERO', 'Temporal', 'Whatsapp', '', 'Activo'),
('94518681', 'CC', 'JHON JAIRO ', 'TANGARIFE JIMENEZ', '3117037921', 'MZ G CASA 10 LOTE 1', 'ZMJ2928@GMAIL.COM', 'SAN FRANCISCO', 1, 'Básica Secundaria', 'ESCOLTA', 'Permanente', 'Whatsapp', 'TULUA', 'Activo'),
('96333217', 'CC', 'FERNEY', 'CORREA RODRIGUEZ', '3153723213', 'CR 23A # 2 -03', 'FERCHITOGATO296@GMAIL.COM', 'PORTALES DEL RIO', 2, 'Básica Secundaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', 'CAQUETA', 'Activo'),
('9773093', 'CC', 'ANDRES FELIPE ', 'DUQUE MORALES', '3154422530', 'CR 17 # 2 19', 'NA@GMAIL.COM', 'TERCER MILENIO', 2, 'Profesional', 'ASESOR JURIDICO', 'Permanente', 'Whatsapp', 'ARMENIA', 'Activo'),
('9850699', 'CC', 'DAIRON NORBEY', 'PEREZ LOAIZA', '3177475005', 'MZ F CASA 13', 'NA@GMAIL.COM', 'AGUACLARA', 2, 'Básica Primaria', 'INDEPENDIENTE', 'Temporal', 'Whatsapp', 'TULUA', 'Activo'),
('9856652', 'CC', 'GERARDO ', 'ORTES ARBOLEDA', '3137944519', 'CJ SAN ANTONIO 30-71', 'NA@GMAIL.COM', 'AGUACLARA', 2, 'Básica Primaria', 'INDEPENDIENTE', 'Permanente', 'Whatsapp', '', 'Activo'),
('9859369', 'CC', 'OSNEIDER', 'PEREZ GIRALDO', '3188540772', 'CL 4ª # 23 – 04 ', 'NA@HOTMAIL.COM', 'EL PALMAR', 2, 'Básica Secundaria', 'COMERCIANTE ', 'Permanente', 'Whatsapp', 'TULUÁ', 'Activo'),
('9862355', 'CC', 'GERMAN DAVID ', 'GARCIA TRIANA', '3178367583', 'MZ  7 # 38B -15', 'GERMANGARCIA_@HOTMAIL.COM', 'LA VILLA', 3, 'Profesional', 'ZOOTECNISTA', 'Permanente', 'Whatsapp', '', 'Activo'),
('N/A', 'CC', 'RAUL FERNANDO ', 'ANGEL LOPEZ', 'N/A', 'N/A', 'NA@GMAIL.COM', 'BOSQUES DE MARACAIBO', 2, 'Ninguno', 'MILITAR ', 'Permanente', 'Whatsapp', 'N/A', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `curp` varchar(50) NOT NULL,
  `tipo_doc` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `dpto_nac` varchar(50) NOT NULL,
  `ciu_nacimiento` varchar(50) NOT NULL,
  `fecha_exp` date NOT NULL,
  `dpto_exp` varchar(50) NOT NULL,
  `ciu_expedicion` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `barrio` varchar(50) NOT NULL,
  `eps` varchar(50) NOT NULL,
  `rh` varchar(50) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `sisben` varchar(50) NOT NULL,
  `discapacidad` varchar(50) NOT NULL,
  `c_discapacidad` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `convive` varchar(50) NOT NULL,
  `madre` varchar(50) NOT NULL,
  `padre` varchar(50) NOT NULL,
  `acudiente` varchar(50) NOT NULL,
  `parentezco` varchar(50) NOT NULL,
  `id_grado` int(11) NOT NULL,
  `jornada` varchar(50) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `correo`, `telefono`, `curp`, `tipo_doc`, `birthdate`, `dpto_nac`, `ciu_nacimiento`, `fecha_exp`, `dpto_exp`, `ciu_expedicion`, `direccion`, `barrio`, `eps`, `rh`, `sexo`, `sisben`, `discapacidad`, `c_discapacidad`, `religion`, `convive`, `madre`, `padre`, `acudiente`, `parentezco`, `id_grado`, `jornada`, `fecha`) VALUES
(21, 'LUCIANA', 'VILLAMIL PARRA', 'JUDA-VI@HOTMAIL.COM', '3225417172', '1117359533', 'NUIP', '2018-01-24', '', 'TULUA', '2018-01-30', '', 'TULUA', 'CL 16 # 4-21', 'Buenos Aires ', ' Fosyga', 'A+', 'FEMENINO', 'B5', 'NO', '', 'CATOLICA', '3', '1006494254', '1006490973', '1006494254', 'Madre', 1, 'Mañana', '2023-12-04 13:10:25'),
(22, 'SAMANTHA', 'QUICENO BETANCOURT', 'LORENA-731@HOTMAIL.COM', '3185314263', '1117032496', 'NUIP', '2017-06-22', '', 'TULUA', '2017-06-23', '', 'TULUA', 'CL 16 4-33 ', 'Portales del Rio ', ' Nueva E.P.S.', 'O+', 'Femenino', 'D1', 'NO', '', 'CATOLICA', '3', '1116258916', '1116257048', '1116258916', 'Madre', 1, 'Mañana', '2023-12-04 13:03:23'),
(23, 'SAMANTHA', 'HINOJOSA GONZALEZ', 'ADGONZANLES33@GMAIL.COM', '3001629691', '1117032816', 'NUIP', '2017-10-08', '', 'TULUA', '2017-10-10', '', 'TULUA', 'KR 4A# 22C - 49', 'El Palmar ', 'DISAN (Sanidad Policia Nacional)', 'A+', 'Femenino', 'B1', 'NO', '', 'CATOLICA', '3', '1116273637', '1116263107', '1116273637', 'Madre', 1, 'Mañana', '2023-12-04 13:14:45'),
(24, 'HANIEL JOSE', 'SERRANO CUASIALPUD', 'XIMENA.CUASIALPUD@GMAIL.COM', '3015744909', '1116083301', 'NUIP', '2020-02-22', '', 'TULUA', '2020-02-24', '', 'TULUA', 'CL 20 # 3 73', 'Guayacanes', 'DISAN (Sanidad Policia Nacional)', 'A+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '4', '31793676', '88248788', '88248788', 'Padre', 10, 'Tarde', '2023-12-04 13:24:00'),
(25, 'DANIEL', 'MARTINEZ OLAYA', 'NA@GMAIL.COM', '3014857731', '1117032575', 'NUIP', '2017-07-12', '', 'TULUA', '2017-07-24', '', 'TULUA', 'KR 11 14A 68', 'Diablos Rojos', ' Cafesalud', 'O+', 'Masculino', 'B7', 'NO', '', 'CATOLICA', '3', '66722940', '94153479', '66722940', 'Madre', 6, 'Tarde', '2024-01-12 15:32:15'),
(26, 'EMMANUEL', 'POSADA CARVAJAL', 'NA@GMAIL.COM', '3185201984', '1117032925', 'NUIP', '2017-11-30', '', 'CALI', '2017-12-08', '', 'TULUA', 'CL 6 # 19 48', 'San Luis ', ' Coomeva', 'B+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '3', '1116246266', '1116254751', '66714911', 'Abuelo', 6, 'Tarde', '2023-12-04 13:44:25'),
(27, 'NICOLAS', 'SOLANILLA ARANGO', 'DIANAKT8@HOTMAIL.COM', '3152888962', '1117359672', 'NUIP', '2018-04-14', '', 'CALI', '2018-04-16', '', 'TULUA', 'CL 10C 27D03', 'Peñaranda ', ' Nueva E.P.S.', 'O+', 'Masculino', 'C2', 'NO', '', 'CATOLICA', '4', '1116245467', '14802337', '1116245467', 'Madre', 6, 'Tarde', '2023-12-04 13:47:49'),
(28, 'CELESTE', 'LAVERDE OSPINA', 'ALEXANDRAOSPINA2001@GMAIL.COM', '3148443446', '1117035208', 'NUIP', '2021-04-22', '', 'TULUA', '2021-04-27', '', 'TULUA', 'MZ 13 CASA 35 ', 'Bosques de Maracaibo ', ' Sanitas', 'A+', 'Femenino', 'B4', 'NO', '', 'CATOLICA', '4', '38795987', '6499329', '38795987', 'Madre', 9, 'Tarde', '2023-12-04 13:49:28'),
(29, 'KIMBERLY', 'JIMENEZ MALDONADO', 'estrellita-linda37@hotmail.com', '3188298550', '1116082977', 'NUIP', '2019-10-03', '', 'TULUA', '2019-10-10', '', 'TULUA', 'CORR LA MARINA SANTA MARTA 11', 'Maracaibo ', ' Nueva E.P.S.', 'A+', 'Femenino', 'C1', 'NO', '', 'CATOLICA', '3', '1006208868', '1116269382', '1006208868', 'Madre', 10, 'Tarde', '2023-12-04 13:53:11'),
(30, 'GABRIELA ', 'HERNANDEZ QUEVEDO', 'LINAANDREA2007@HOTMAIL.COM', '3154227189', '1116081783', 'NUIP', '2018-01-23', '', 'TULUA', '2018-01-29', '', 'TULUA', 'KR 24 5 26', 'Alameda', 'Cafesalud- Movilidad', 'O+', 'Femenino', 'B7', 'NO', '', 'CATOLICA', '4', '1116262037', '1116246183', '1116246183', 'Padre', 1, 'Mañana', '2023-12-04 14:02:47'),
(31, 'MARTIN', 'HERRERA GOYES', 'NA@GMAIL.COM', '3103948701', '1116083365', 'NUIP', '2020-04-02', '', 'TULUA', '2020-04-08', '', 'TULUA', 'CL 4A # 20 30', 'Jorge E. Gaitan ', ' Sanitas', 'A+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '4', '1116263070', '1115078998', '1116263070', 'Madre', 10, 'Tarde', '2023-12-04 14:03:04'),
(32, 'JUAN CAMILO ', 'HERNANDEZ QUEVEDO', 'LINAANDREA2007@HOTMAIL.COM', '3053352589', '1116078144', 'TI', '2014-03-01', '', 'TULUA', '2022-03-30', '', 'TULUA', 'KR 24 5 26', 'Alameda', ' Cafesalud', 'O+', 'Masculino', 'B7', 'NO', '', 'CATOLICA', '4', '1116262037', '1116246183', '1116246183', 'Padre', 5, 'Mañana', '2023-12-04 14:11:34'),
(33, 'ALEXANDER', 'GONZALEZ ZAPATA', 'NA@GMAIL.COM', '3177019397', '1116081412', 'NUIP', '2017-08-13', '', 'TULUA', '2017-11-18', '', 'TULUA', 'TZ 20 # 2 119', 'Portales del Rio ', 'Asmet Salud EPS', 'O+', 'Masculino', 'C5', 'NO', '', 'CATOLICA', '2', '1116252367', '94368031', '1116252367', 'Madre', 1, 'Mañana', '2023-12-04 14:17:05'),
(34, 'EILEEN', 'SINISTERRA PERLAZA', 'SINISTERRA201518@GMAIL.COM', '3183970963', '1116284399', 'NUIP', '2017-12-01', '', 'TULUA', '2017-12-01', '', 'TULUA', 'MZ G CASA 25', 'La Paz', 'Asmet Salud EPS', 'B+', 'Femenino', 'B2', 'NO', '', 'CATOLICA', '2', '1117018500', '94154246', '94154246', 'Padre', 1, 'Mañana', '2023-12-04 14:18:25'),
(35, 'IAN DAVID ', 'ORTIZ SANCHEZ', 'NA@GMAIL.COM', '3176927535', '1116081641', 'NUIP', '2017-11-27', '', 'TULUA', '2017-12-01', '', 'TULUA', 'CL 7 # 18 86', 'Flor de la Campana ', ' S.O.S. Servicio Occidental de Salud S.A.', 'Seleccione una opción', 'Seleccione una opción', 'A4', 'NO', '', 'CATOLICA', '3', '1116265931', '1116263118', '1116265931', 'Madre', 6, 'Tarde', '2023-12-04 14:25:30'),
(36, 'SALOME', 'RAMIREZ MARTINEZ', 'JHONATANRAMIREZM61@GMAIL.COM', '3146038756', '1112409359', 'NUIP', '2017-10-22', '', 'BUGA', '2017-10-24', '', 'BUGA', 'CL 4 22 27', 'Saman del Norte ', 'Emssanar', 'A+', 'Femenino', 'B4', 'NO', '', 'CATOLICA', '3', '1113311817', '1113308629', '1113311817', 'Madre', 6, 'Tarde', '2023-12-04 14:27:53'),
(37, 'LUCIANA ', 'RESTREPO ALZATE', 'NA@GMAIL.COM', '3152806098', '1117032679', 'NUIP', '2017-08-29', '', 'TULUA', '2017-11-30', '', 'TULUA', 'CL 2A # 24 09', 'Portales del Rio ', 'Emssanar', 'O+', 'Femenino', 'B3', 'NO', '', 'CATOLICA', '3', '1116266789', '1116255714', '1116266789', 'Madre', 1, 'Mañana', '2023-12-04 14:42:48'),
(38, 'SIMON', 'LOPEZ GIRALDO', 'MARIAFER715@HOTMAIL.COM', '3128763904', '1097041496', 'NUIP', '2018-04-11', '', 'ARMENIA', '2018-04-16', '', 'QUIMBAYA', 'MZ B CASA 26', 'La Paz', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Masculino', 'C17', 'NO', '', 'CATOLICA', '3', '1116723874', '94257767', '1116723874', 'Madre', 1, 'Mañana', '2023-12-04 14:48:19'),
(39, 'JACOBO ', 'CADAVID LOPEZ', 'SALORELO@HOTMAIL.COM', '3156154683', '1117032592', 'NUIP', '2017-07-31', '', 'TULUA', '2017-08-01', '', 'TULUA', 'KR 24 D # 3 C -39', 'PORTALES DEL RIO', ' Sanitas', 'A+', 'Masculino', 'D11', 'NO', 'D11', 'CATOLICA', '6', '38796402', '94404990', '38796402', 'Madre', 1, 'Mañana', '2023-12-04 15:50:05'),
(40, 'DULCE MARIA ', 'RIVERA VELEZ', 'NA@GMAIL.COM', '3187739961', '1117032449', 'NUIP', '2017-06-07', '', 'TULUA', '2017-06-08', '', 'TULUA', 'KR 24 # 3 99', 'PORTALES DEL RIO', ' EPS Sura', 'B-', 'Femenino', 'C13', 'NO', '', 'CRISTIANA', '4', '1116251892', '6199707', '49610589', 'Otro', 6, 'Tarde', '2023-12-04 16:00:25'),
(41, 'GABRIELA ', 'GUTIERREZ VARGAS', 'PAOLAVARGAS0296@GMAIL.COM', '3154778289', '1116083111', 'NUIP', '2019-11-15', '', 'CALI', '2019-12-03', '', 'TULUA', 'CL 15  # 25-14', 'LA GRACIELA', ' Nueva E.P.S.', 'O+', 'Femenino', 'C13', 'NO', '', 'CRISTIANA', '3', '1116270188', '1116253216', '1116270188', 'Madre', 10, 'Tarde', '2023-12-04 16:30:48'),
(42, 'EMMANUEL ', 'HIGUITA ASPRILLA', 'LILIADEYANIRAASPRILLA@GMAIL.COM', '3163616705', '1117360262', 'NUIP', '2019-05-08', '', 'TULUA', '2019-06-10', '', 'TULUA', 'MZ D CASA 3', 'URBANIZACION LA PAZ', ' Nueva E.P.S.', 'O+', 'Masculino', 'B4', 'SI', 'AUTISMO', 'CRISTIANA', '2', '1116276816', '1', '31490199', 'Abuelo', 17, 'Tarde', '2024-02-02 13:35:38'),
(44, 'ANA LUCIA ', 'PIEDRAHITA ALZATE ', 'VIMAVIGO68@HOTMAIL.COM', '3153148100', '1117032382', 'NUIP', '2017-06-01', '', 'TULUA', '2017-06-02', '', 'TULUA', 'CL 15A # 15E - 07', 'LA CAMPIÑA', ' Sanitas', 'O+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '4', '1116261766', '1116279878', '1116261766', 'Madre', 1, 'Mañana', '2023-12-04 20:04:15'),
(45, 'SALOME', 'TENGONO ALZATE', 'VIMAVIGO68@HOTMAIL.COM', '3153148100', '1117028611', 'TI', '2014-02-18', '', 'TULUA', '2014-02-19', '', 'TULUA', 'CL 15A # 15E - 07', 'LA CAMPIÑA', ' Sanitas', 'A+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '4', '1116261766', '1116246273', '1116261766', 'Madre', 5, 'Mañana', '2023-12-04 20:17:59'),
(46, 'NICOLAS ', 'ESCOBAR CORTES', 'NA@GMAIL.COM', '3155621082', '1116081420', 'NUIP', '2017-08-13', '', 'TULUA', '2017-08-23', '', 'TULUA', 'CJ SAN ANTONIO 30-71', 'AGUACLARA', ' Nueva E.P.S.', 'A+', 'Masculino', 'B4', 'NO', '', 'CATOLICA', '5', '1116251253', '1116256776', '30406128', 'Abuelo', 1, 'Mañana', '2023-12-04 20:38:12'),
(47, 'LUCIANA ', 'CORTES RESTREPO', 'NA@GMAIL.COM', '3155621082', '1116080507', 'NUIP', '2016-05-30', '', 'TULUA', '2016-06-02', '', 'TULUA', 'CJ SAN ANTONIO 30-71', 'AGUACLARA', 'Emssanar', 'B+', 'Femenino', 'A5', 'NO', '', 'CATOLICA', '5', '30406128', '9856652', '30406128', 'Madre', 2, 'Mañana', '2023-12-04 20:52:24'),
(48, 'SALOME', 'MONTOYA MORENO ', 'KARO0315@HOTMAIL.COM', '3104395998', '1117034455', 'NUIP', '2019-12-23', '', 'TULUA', '2019-12-26', '', 'TULUA', 'MZ 45 CASA 19', 'BOSQUES DE MARACAIBO', ' Nueva E.P.S.', 'AB+', 'Femenino', 'n/a', 'NO', '', 'CRISTIANOS ', '4', '1116254259', '1116259093', '1116254259', 'Madre', 10, 'Tarde', '2023-12-04 21:26:30'),
(49, 'JUAN ESTEBAN', 'VARGAS BERRIO', 'LINAMARIABERRIOMEDINA@GMAIL.COM', '31037550639', '1117032911', 'NUIP', '2017-11-23', '', 'TULUA', '2017-11-27', '', 'TULUA', 'CL26 C #10-47', 'BOLIVAR', 'DISAN (Sanidad Policia Nacional)', 'A+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '4', '1116234080', '1113036169', '1116234080', 'Madre', 1, 'Mañana', '2023-12-05 14:18:23'),
(50, 'ALAN', 'LOPEZ CRUZ', 'NA@GMAIL.COM', '3148147940', '1117032396', 'NUIP', '2017-05-15', '', 'TULUA', '2017-05-19', '', 'TULUA', 'CL 16 # 28A 42', 'POPULAR', ' Nueva E.P.S.', 'O+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '3', '1116261215', '1116248096', '31204684', 'Abuelo', 6, 'Tarde', '2023-12-05 14:52:23'),
(51, 'EMILIA', 'PARRA ARENAS', '1ADRIANAARENAS1@GMAIL.COM', '3126441424', '1130205003', 'TI', '2016-05-05', '', 'TULUA', '2023-08-28', '', 'BUGA', 'KM 8 VIA LA MAGDALENA', 'LA VILLA', ' EPS Sura', 'A+', 'Femenino', 'N/A', 'NO', '', 'CRISTIANA', '4', '42160616', '94062461', '42160616', 'Madre', 2, 'Mañana', '2023-12-05 15:03:24'),
(52, 'FRANCISCO ANTONIO', 'LASSO HERNANDEZ', 'LEIDYVHERNANDEZ@HOTMAIL.COM', '3103954636', '1117032653', 'NUIP', '2017-08-21', '', 'TULUA', '2017-08-22', '', 'TULUA', 'CL 9 5 82', 'SANTA INES DE COMFAMILIAR', ' Salud Total', 'A+', 'Masculino', 'B', 'NO', '', 'CATOLICA', '4', '67041275', '14797723', '67041275', 'Madre', 1, 'Mañana', '2023-12-05 15:08:01'),
(53, 'MATHIAS ', 'PARRA ARENAS', 'CVAXTIAN@YAHOO.ES', '3233218168', '1130204820', 'TI', '2014-02-16', '', 'TULUA', '2021-04-26', '', 'TULUA', 'KM 8 VIA LA MAGDALENA', 'LA VILLA', ' EPS Sura', 'A+', 'Masculino', 'N/A', 'NO', '', 'CRISTIANA', '4', '42160616', '94062461', '94062461', 'Padre', 4, 'Mañana', '2023-12-05 15:08:56'),
(54, 'JUAN MANUEL', 'MARTELO REYES', 'SALOME1023@HOTMAIL.COM', '3234361638', '1117360570', 'NUIP', '2020-02-24', '', 'TULUA', '2020-03-02', '', 'TULUA', 'KR 30 #11 -02', 'BRISAS DEL MORALES', ' Sanitas', 'O+', 'Masculino', 'C2', 'NO', '', 'CATOLICA', '5', '1114060906', '73109148', '1114060906', 'Madre', 10, 'Tarde', '2023-12-05 16:05:40'),
(55, 'IKER', 'CRUZ SUAREZ', 'VANE_SSA0614@HOTMAIL.COM', '3152903452', '1116082859', 'NUIP', '2019-07-29', '', 'TULUA', '2019-08-01', '', 'TULUA', 'CL 13 4 94 ', 'PORTALES DE SAN FELIPE', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Masculino', 'B6', 'NO', '', 'CATOLICA', '5', '1116240735', '14802239', '1116240735', 'Madre', 11, 'Mañana', '2024-02-20 15:00:57'),
(56, 'ANDRES DAVID ', 'FLOREZ GARCIA', 'MARIAENITHQUINTEROTORRES@GMAIL.COM', '3178175783', '1117359545', 'NUIP', '2018-01-28', '', 'TULUA', '2018-02-06', '', 'TULUA', 'CL 4 A 24 81', 'PORTALES DEL RIO', ' Sanitas', 'A-', 'Masculino', 'N/A', 'NO', '', 'CRISTIANOS ', '3', '1113790546', '1006491371', '66717447', 'Abuelo', 1, 'Mañana', '2023-12-05 17:10:58'),
(57, 'DANIEL ', 'NARANJO VALENCIA ', 'cristhinita12@hotmail.com', '3233964543', '1117359704', 'NUIP', '2018-04-26', '', 'TULUA', '2018-05-01', '', 'TULUA', 'TZ 20 # 3 -21', 'PORTALES DEL RIO', 'Emssanar', 'A+', 'Masculino', 'B1', 'NO', '', 'CATOLICA', '6', '1116274012', '1116271644', '1116274012', 'Madre', 6, 'Tarde', '2023-12-05 17:22:38'),
(58, 'VICTORIA SUSEJ', 'ABACHE PATIÑO', 'RICARDOVABACHE@GMAIL.COM', '3166462875', '6180025', 'PPT', '2019-06-07', 'SUCRE', 'CUMANA', '2022-03-05', '', 'BOGOTA', 'KR 17 20 16', 'RUBEN CRUZ VELEZ', 'Emssanar', 'O+', 'Femenino', 'B1', 'NO', '', 'CATOLICA', '6', '6180043', '6085080', '6085080', 'Padre', 11, 'Mañana', '2023-12-05 17:44:11'),
(59, 'SOFIA ', 'GOMEZ DUQUE ', 'jg489074@gmail.com', '3127748822', '1116083539', 'NUIP', '2024-05-24', '', 'TULUA', '2020-06-05', '', 'TULUA', 'kr 24 B 3 BIS 27', 'PORTALES DEL RIO', ' Sanitas', 'B+', 'Femenino', 'C12', 'NO', '', 'CATOLICA', '3', '1116273114', '1114061652', '1114061652', 'Padre', 10, 'Tarde', '2023-12-05 18:00:23'),
(61, 'SAMUEL ANDRES', 'GORDILLO MONTEZUMA', 'NA@GMAIL.COM', '3233976037', '1117360634', 'NUIP', '2020-04-12', 'VALLE DEL CAUCA', 'TULUA', '2020-04-24', 'VALLE DEL CAUCA', 'TULUA', 'MZ 1 38B 08', 'LA VILLA', ' Nueva E.P.S.', 'B+', 'Masculino', 'B1', 'NO', '', 'CATOLICA', '3', '1116261521', '1112101729', '1112101729', 'Padre', 10, 'Mañana', '2023-12-05 18:58:38'),
(62, 'DAVID', 'GARCIA ARENAS', 'SOFIARENAS3@HOTMAIL.COM', '3148361071', '1117359279', 'NUIP', '2017-08-11', 'VALLE DEL CAUCA', 'CALI', '2017-08-25', 'VALLE DEL CAUCA', 'TULUA', 'MZ 7 # 38B -15', 'LA VILLA', ' Nueva E.P.S.', 'A+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '4', '42164639', '9862355', '42164639', 'Madre', 1, 'Mañana', '2023-12-05 19:41:42'),
(63, 'JUAN PABLO ', 'GARCIA ARENAS', 'GERMANGARCIA_@HOTMAIL.COM', '3174367583', '1117357066', 'TI', '2013-10-12', 'VALLE DEL CAUCA', 'TULUA', '2020-12-14', 'VALLE DEL CAUCA', 'TULUA', 'MZ 7 # 38B -15', 'LA VILLA', ' Nueva E.P.S.', 'A+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '4', '42164639', '9862355', '9862355', 'Padre', 5, 'Mañana', '2023-12-05 20:02:20'),
(64, 'ROSSANA ', 'TRUJILLO GARZON', 'MILLERLANDY988@GMAIL.COM', '3186109659', '1117360482', 'NUIP', '2019-12-10', 'VALLE DEL CAUCA', 'TULUA', '2019-12-20', 'VALLE DEL CAUCA', 'TULUA', 'CL 4 B #19-38', 'JORGE ELIECER GAITAN', 'Emssanar', 'O+', 'Femenino', 'A3', 'NO', '', 'CATOLICA', '6', '1116241584', '1112100946', '1116241584', 'Madre', 10, 'Tarde', '2023-12-05 20:19:21'),
(65, 'GUADALUPE', 'CESPEDES ZAPATA', 'CLAUDIALADIINO28@GMAIL.COM', '3167313645', '1116284912', 'NUIP', '2018-02-24', 'VALLE DEL CAUCA', 'TULUA', '2018-03-01', 'VALLE DEL CAUCA', 'TULUA', 'CL 3 B 24 A 34', 'PORTALES DEL RIO', ' Nueva E.P.S.', 'O+', 'Femenino', 'B1', 'NO', '', 'CATOLICA', '3', '1116278291', '11123009825', '1116278291', 'Madre', 1, 'Mañana', '2023-12-05 22:00:03'),
(66, 'MATIAS', 'ALVAREZ ALZATE', 'NA@GMAIL.COM', '3215315231', '1117359885', 'NUIP', '2018-08-12', 'VALLE DEL CAUCA', 'TULUA', '2018-08-14', 'VALLE DEL CAUCA', 'TULUA', 'CL 1 # 24 108', 'PORTALES DEL RIO', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Masculino', 'B4', 'NO', '', 'CATOLICA', '4', '1112101986', '14801856', '14801856', 'Seleccione una opción', 17, 'Tarde', '2023-12-06 12:46:36'),
(67, 'JUAN JOSE', 'VELEZ GIRALDO', 'CHECHIGIRALDO@OUTLOOK.ES', '3103540719', '1117359078', 'NUIP', '2017-03-30', 'VALLE DEL CAUCA', 'TULUA', '2017-04-11', 'VALLE DEL CAUCA', 'TULUA', 'MZ 16 CASA 8 ', 'BOSQUES DE MARACAIBO', ' Sanitas', 'O+', 'Masculino', 'C18', 'NO', '', 'CATOLICA', '2', '29760820', '1116237768', '29760820', 'Madre', 7, 'Tarde', '2023-12-06 12:55:28'),
(68, 'EVALUNA', 'GUTIERREZ GUTIERREZ', 'NA@GMAIL.COM', '3113955251', '1117031958', 'NUIP', '2016-12-29', 'VALLE DEL CAUCA', 'TULUA', '2016-12-30', 'VALLE DEL CAUCA', 'TULUA', 'CL 10 #  28A 123', 'SANTA RITA DEL RIO', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '3', '38790743', '16368488', '16368488', 'Padre', 2, 'Mañana', '2023-12-06 13:01:36'),
(69, 'LUCIANA', 'CAJIGAS ROMERO', 'DANI16241@OUTLOOK.ES', '3168562572', '1112108344', 'NUIP', '2018-11-12', 'VALLE DEL CAUCA', 'TULUÁ', '2021-12-17', 'VALLE DEL CAUCA', 'ANDALUCIA', 'CL 20 # 13 - 02', 'RUBEN CRUZ VELEZ', 'Emssanar', 'A+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '6', '1116273482', '18553958', '38901645', 'Abuelo', 17, 'Tarde', '2023-12-06 13:07:52'),
(70, 'MARIA GUADALUPE', 'GONZALEZ MARIN', 'NELLY452008@GMAIL.COM', '3185873941', '1117358996', 'NUIP', '2017-02-04', 'VALLE DEL CAUCA', 'TULUA', '2017-02-13', 'VALLE DEL CAUCA', 'TULUA', 'MZ D CASA 5', 'CASAS HUERTAS', 'Emssanar', 'O+', 'Femenino', '1', 'NO', '', 'CATOLICA', '3', '29878190', '4385735', '29878190', 'Abuelo', 7, 'Tarde', '2023-12-06 13:14:48'),
(71, 'VALERIA', 'CARDONA CASTILLO', 'NA@GMAIL.COM', '3155099789', '1115578490', 'NUIP', '2018-12-20', 'VALLE DEL CAUCA', 'CALI', '2018-12-26', 'VALLE DEL CAUCA', 'SEVILLA ', 'MZ 41 CASA 26', 'BOSQUES DE MARACAIBO', 'Emssanar', 'O-', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '4', '38755965', '94283392', '38755965', 'Madre', 11, 'Mañana', '2023-12-06 13:21:51'),
(72, 'SALOME ', 'BARON MEJIA ', 'LUZMEJIA2305@GMAIL.COM', '3157669601', '1116082412', 'NUIP', '2018-12-15', 'VALLE DEL CAUCA', 'TULUA', '2018-12-17', 'VALLE DEL CAUCA', 'TULUA', 'KR 25 B 7 32', 'SIETE DE AGOSTO', ' Sanitas', 'A+', 'Femenino', 'C11', 'NO', '', 'CATOLICA', '3', '1112102959', '1013611137', '1112102959', 'Madre', 11, 'Mañana', '2023-12-06 13:31:34'),
(73, 'EMMA VALENTINA', 'OSPINA PIEDRAHITA', 'DANIELA@GMAIL.COM', '3225941950', '1116285691', 'NUIP', '2018-12-19', 'VALLE DEL CAUCA', 'CALI', '2018-12-27', 'VALLE DEL CAUCA', 'TULUA', 'KR 20 # 7-11', 'BELLO HORIZONTE', ' Sanitas', 'A+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '3', '1116250492', '14800386', '43821809', 'Abuelo', 17, 'Tarde', '2024-02-02 13:36:32'),
(74, 'THAMARA', 'BALLESTEROS ARCINIEGAS', 'NA@GMAIL.COM', '3178154169', '1117033616', 'NUIP', '2018-11-10', 'VALLE DEL CAUCA', 'TULUA', '2018-11-15', 'VALLE DEL CAUCA', 'TULUA', 'CL 9 # 17 118', 'SANTA INES DE COMFAMILIAR', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Seleccione una opción', 'C12', 'NO', '', 'CRISTIANA', '3', '1116261436', '1116236807', '1116261436', 'Madre', 11, 'Mañana', '2024-01-30 16:21:53'),
(75, 'SHARON NAID ', 'JIMENEZ MAMIAN ', 'HALCONROJOX2@HOTMAIL.COM', '3219614648', '1116081999', 'NUIP', '2018-06-05', 'VALLE DEL CAUCA', 'TULUA', '2018-06-08', 'VALLE DEL CAUCA', 'TULUA', 'CL 9 A DG 23 62', 'SANTA INES DE COMFAMILIAR', 'Emssanar', 'O+', 'Femenino', 'B4', 'NO', '', 'CRISTIANOS ', '3', '38796441', '76090155', '38796441', 'Madre', 17, 'Tarde', '2023-12-06 13:49:26'),
(76, 'JUAN PABLO ', 'FLOREZ LOAIZA', 'ISABELLAFLOREZLOAIZA@GMAIL.COM', '3184202838', '1117033903', 'NUIP', '2019-03-04', 'VALLE DEL CAUCA', 'TULUA', '2019-03-11', 'VALLE DEL CAUCA', 'TULUA', 'DG 23 #9A -25', 'SANTA INES DE COMFAMILIAR', 'Comfacundi', 'A+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '4', '29761023', '94388919', '29761023', 'Madre', 17, 'Tarde', '2023-12-06 14:05:16'),
(77, 'JOSUE ', 'VALENCIA BOLIVAR ', 'ANDRES_CAMI09@HOTMAIL.COM', '3172541856', '1116082720', 'NUIP', '2019-05-25', 'VALLE DEL CAUCA', 'TULUA', '2019-05-27', 'VALLE DEL CAUCA', 'TULUA', 'CL 7 25 C 13', 'SIETE DE AGOSTO', ' Nueva E.P.S.', 'O+', 'Masculino', 'B5', 'NO', '', 'CRISTIANOS ', '4', '38796420', '14837021', '14837021', 'Padre', 17, 'Tarde', '2023-12-06 14:13:57'),
(78, 'PAULA ELENA', 'PELAEZ OCAMPO', 'ISABELOCAMPO.90@HOTMAIL.COM', '3154071442', '1117033509', 'NUIP', '2018-10-10', 'VALLE DEL CAUCA', 'TULUA', '2018-10-10', 'VALLE DEL CAUCA', 'TULUA', 'CL 8A # 28A 116', 'SANTA RITA DEL RIO', ' Sanitas', 'O+', 'Femenino', 'C1', 'Seleccione una opción', '', 'CATOLICA', '4', '1014215479', '1014200524', '1014215479', 'Madre', 17, 'Tarde', '2023-12-06 14:19:37'),
(79, 'ANTONELLA', 'LOZANO NUÑEZ', 'YOLANDA@GMAIL.COM', '3156023226', '1117358356', 'NUIP', '2015-12-01', 'VALLE DEL CAUCA', 'TULUA', '2015-12-17', 'VALLE DEL CAUCA', 'TULUA', 'KR 9 #10-19', 'EL REFUGIO', ' Sanitas', 'O+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '2', '1116235066', '1', '1116235066', 'Madre', 2, 'Mañana', '2023-12-06 14:31:28'),
(80, 'ORIANA ', 'HERNANDEZ CARDONA', 'SANTY.SANDRA@HOTMAIL.ES', '3116491935', '1116080795', 'NUIP', '2016-10-17', 'VALLE DEL CAUCA', 'TULUA', '2016-10-19', 'VALLE DEL CAUCA', 'TULUA', 'CL 5 19 14', 'JORGE ELIECER GAITAN', 'Sanidad Militar', 'B+', 'Femenino', 'B2', 'NO', '', 'CATOLICA', '5', '66729469', '94231401', '66729469', 'Madre', 2, 'Mañana', '2023-12-06 14:32:42'),
(81, 'MATIAS', 'PEREZ GARCIA', 'NATALIAANDREAGARCIA1992@GMAIL.COM', '3226228695', '1117359148', 'NUIP', '2017-05-17', 'VALLE DEL CAUCA', 'TULUA', '2017-05-23', 'VALLE DEL CAUCA', 'TULUA', 'MZ F CASA 13', 'AGUACLARA', ' Famisanar', 'O-', 'Masculino', 'B5', 'NO', '', 'CATOLICA', '5', '1058845413', '9850699', '1058845413', 'Madre', 2, 'Mañana', '2023-12-06 14:43:48'),
(82, 'ALVARO JOSE ', 'PEREZ MARTINEZ', 'MARLENY12-27@HOTMAIL.COM', '3114263890', '1117032112', 'NUIP', '2017-02-19', 'VALLE DEL CAUCA', 'TULUA', '2017-02-21', 'VALLE DEL CAUCA', 'TULUA', 'MZ F CASA 16 ', 'URBANIZACION LA PAZ', ' S.O.S. Servicio Occidental de Salud S.A.', 'A+', 'Masculino', 'A5', 'NO', '', 'CATOLICA', '4', '27333420', '1113036026', '27333420', 'Madre', 2, 'Mañana', '2023-12-06 14:50:47'),
(83, 'MONSERRATH', 'DITTA MONCADA', 'J.DITTA0322@GMAIL.COM', '3225029262', '1117033841', 'NUIP', '2019-02-12', 'VALLE DEL CAUCA', 'TULUA', '2019-02-13', 'VALLE DEL CAUCA', 'TULUA', 'MZ 58 CASA 29', 'BOSQUES DE MARACAIBO', ' S.O.S. Servicio Occidental de Salud S.A.', 'B+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '3', '1116264203', '1116253733', '1116264203', 'Madre', 11, 'Mañana', '2024-01-30 16:22:43'),
(84, 'JACOBO', 'LENIS GONZALEZ', 'CHARLI@GMAIL.COM', '3176328919', '1222455133', 'NUIP', '2018-06-01', 'VALLE DEL CAUCA', 'TULUA', '2018-10-19', 'VALLE DEL CAUCA', 'TULUA', 'CL 3C # 22C -36', 'EL PALMAR', ' Sanitas', 'B+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '3', '1112102209', '1151936983', '1151936983', 'Padre', 17, 'Tarde', '2023-12-06 15:02:09'),
(85, 'JUAN SEBASTIAN ', 'PEREZ MARTINEZ', 'MARLENY12-27@HOTMAIL.COM', '3114263890', '1117027850', 'TI', '2013-07-18', 'VALLE DEL CAUCA', 'TULUA', '2020-11-03', 'VALLE DEL CAUCA', 'TULUA', 'MZ F CASA 16 ', 'URBANIZACION LA PAZ', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Masculino', 'A5', 'NO', '', 'CATOLICA', '4', '27333420', '1113036026', '27333420', 'Madre', 5, 'Mañana', '2023-12-06 15:03:08'),
(86, 'DIEGO ALEJANDRO', 'RAMIREZ BURGOS', 'LAFLAK802@GMAIL.COM', '3187539266', '1117360341', 'NUIP', '2019-08-06', 'VALLE DEL CAUCA', 'TULUA', '2019-08-09', 'VALLE DEL CAUCA', 'TULUA', 'CL 3B # 22 10', 'EL PALMAR', ' Sanitas', 'O+', 'Masculino', 'C1', 'NO', '', 'CATOLICA', '4', '1123201376', '80795518', '80795518', 'Padre', 10, 'Tarde', '2023-12-06 15:25:16'),
(87, 'GABRIELA ', 'ANGEL PEREZ ', 'JL961089@GMAIL.COM', '3137475188', '1112160628', 'NUIP', '2016-12-29', 'VALLE DEL CAUCA', 'BUGA', '2017-10-10', 'VALLE DEL CAUCA', 'BUGA', 'MZ 22 CASA 36', 'BOSQUES DE MARACAIBO', 'Emssanar', 'O+', 'Femenino', 'B7', 'SI', 'TRANSTORNO LENGUAJE ', 'CATOLICA', '4', '1112760128', '1', '1112760128', 'Madre', 7, 'Tarde', '2023-12-18 16:47:18'),
(89, 'SAMIR', 'CUARAN CAÑAS', 'VIVIANA_PETTI@HOTMAIL.COM', '3205141050', '1117032029', 'NUIP', '2017-01-30', 'VALLE DEL CAUCA', 'TULUA', '2017-02-02', 'VALLE DEL CAUCA', 'TULUA', 'MZ E CASA 2', 'CASAS HUERTAS', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '4', '38796679', '1', '38796679', 'Madre', 2, 'Mañana', '2023-12-06 15:44:48'),
(90, 'SALOME ', 'BALDION MARIN', 'LUZES93@HOTMAIL.COM', '3155837912', '1116275595', 'TI', '2015-06-13', 'VALLE DEL CAUCA', 'TULUA', '2022-08-02', 'VALLE DEL CAUCA', 'TULUA', 'CL 6 A 19 33', 'SAN LUIS', 'DISAN (Sanidad Policia Nacional)', 'O+', 'Femenino', 'A1', 'NO', '', 'CATOLICA', '3', '1116260427', '1', '1116260427', 'Madre', 2, 'Mañana', '2023-12-06 15:48:45'),
(91, 'EMMELY', 'GALLEGO DIAZ', 'YMDT1999@GMAIL.COM', '3184698306', '1117359946', 'NUIP', '2018-10-02', 'VALLE DEL CAUCA', 'TULUA', '2018-10-09', 'VALLE DEL CAUCA', 'TULUA', 'MZ G CASA 1', 'URBANIZACION LA PAZ', 'Emssanar', 'O+', 'Femenino', 'A3', 'NO', '', 'CATOLICA', '2', '1144209999', '1006433764', '1144209999', 'Madre', 0, 'Tarde', '2024-01-12 15:33:33'),
(92, 'PABLO MILAN ', 'MARIN MARIN', 'LUZES93@HOTMAIL.COM', '3155837912', '1116285175', 'NUIP', '2018-05-30', 'VALLE DEL CAUCA', 'TULUA', '2018-05-31', 'VALLE DEL CAUCA', 'TULUA', 'CL 6 A 19 33', 'SAN LUIS', 'DISAN (Sanidad Policia Nacional)', 'A+', 'Masculino', 'A1', 'NO', '', 'CATOLICA', '3', '1116260427', '1116253030', '1116260427', 'Madre', 11, 'Mañana', '2023-12-06 16:07:01'),
(93, 'SAMANTHA', 'GIRALDO QUESADA', 'LINA_QUESADA26@HOTMAIL.COM', '3207828727', '1117032757', 'NUIP', '2017-09-10', 'VALLE DEL CAUCA', 'TULUA', '2017-09-25', 'VALLE DEL CAUCA', 'TULUA', 'MZ 12 CASA 37', 'BOSQUES DE MARACAIBO', ' Nueva E.P.S.', 'O+', 'Femenino', 'C8', 'NO', '', 'CATOLICA', '4', '1116269735', '1116242610', '1116269735', 'Seleccione una opción', 6, 'Tarde', '2023-12-06 16:10:19'),
(94, 'LUCIANA', 'SILVA ROSERO', 'MONIK.0228@HOTMAIL.COM', '3122015476', '1116082379', 'NUIP', '2018-11-27', 'VALLE DEL CAUCA', 'TULUA', '2018-12-03', 'VALLE DEL CAUCA', 'TULUA', 'CL 8 # 19A 20', 'HORIZONTE SANTA ISABEL', ' Sanitas', 'O+', 'Femenino', 'C6', 'NO', '', 'CATOLICA', '3', '1116244330', '1112100230', '1116244330', 'Madre', 17, 'Tarde', '2023-12-06 16:47:14'),
(95, 'MARTIN', 'ORTIZ OSORIO', 'DIANAMILEOS85@GMAIL.COM', '3186424538', '1117033715', 'NUIP', '2018-12-16', 'VALLE DEL CAUCA', 'TULUA', '2018-12-26', 'VALLE DEL CAUCA', 'TULUA', 'KR 24 # 4 16', 'ALAMEDA', ' EPS Sura', 'O+', 'Masculino', 'A1', 'NO', '', 'CATOLICA', '4', '1116232443', '14894983', '1116232443', 'Madre', 17, 'Tarde', '2023-12-06 18:10:57'),
(96, 'ADRIAN MAURICIO', 'CRUZ MORALES', 'MARTHISMORALES1989@GMAIL.COM', '3174548066', '1117030992', 'NUIP', '2016-01-21', 'VALLE DEL CAUCA', 'TULUA', '2016-01-22', 'VALLE DEL CAUCA', 'TULUA', 'CJ MARTINEZ # 29 59', 'AGUACLARA', ' Sanitas', 'O+', 'Masculino', 'C9', 'NO', '', 'CATOLICA', '4', '1112101351', '1116235044', '1112101351', 'Madre', 2, 'Mañana', '2023-12-07 13:18:31'),
(97, 'JULIA', 'DORADO GONZALEZ', 'LEIDY@HOTMAIL.COM', '3023019215', '1117033696', 'NUIP', '2018-11-21', 'VALLE DEL CAUCA', 'TULUA', '2018-12-17', 'VALLE DEL CAUCA', 'TULUA', 'KR 24 # 3 - 39', 'PORTALES DE RIO PAILA', ' Sanitas', 'O+', 'Femenino', 'B4', 'NO', '', 'CATOLICA', '4', '1116251723', '1112220032', '1116251723', 'Madre', 17, 'Tarde', '2023-12-07 13:34:33'),
(98, 'GUADALUPE', 'ESTRADA PEDROZA', 'MPEDROZA196@GMAIL.COM', '3122450225', '1116082576', 'NUIP', '2019-03-01', 'VALLE DEL CAUCA', 'TULUA', '2019-03-13', 'VALLE DEL CAUCA', 'TULUA', 'CL 19 # 2 - 12', 'EL LIMONAR', 'Emssanar', 'O+', 'Femenino', 'A1', 'NO', '', 'CATOLICA', '5', '38796124', '94394080', '38796124', 'Madre', 17, 'Tarde', '2023-12-07 13:55:31'),
(99, 'SAMUEL ', 'MORALES SANCHEZ', 'JHOANASANCHEZ823@GMAIL.COM', '3166782332', '1116078475', 'TI', '2014-08-25', 'VALLE DEL CAUCA', 'TULUA', '2021-09-01', 'VALLE DEL CAUCA', 'TULUA', 'AV PPAL CJ LOS PINOS CASA 19', 'AGUACLARA', ' EPS Sura', 'O+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '3', '1116264714', '1', '1116264714', 'Madre', 7, 'Tarde', '2023-12-11 16:54:03'),
(100, 'SARA MICHEL', 'RODRIGUEZ DIUZA ', 'TERESADIUSACAICEDO@GMAIL.COM', '3182465472', '1117032008', 'NUIP', '2017-01-18', 'VALLE DEL CAUCA', 'TULUA', '2017-01-19', 'VALLE DEL CAUCA', 'TULUA', 'CL 19 3 83', 'GUAYACANES', ' Nueva E.P.S.', 'O+', 'Femenino', 'N/A', 'NO', '', 'CRISTIANOS ', '3', '1116237530', '1116234156', '1116237530', 'Abuelo', 2, 'Mañana', '2023-12-07 14:20:04'),
(101, 'ANNY', 'BEDOYA ROA', 'STEFANNIRV@GMAIL.COM', '3163309885', '1117033431', 'NUIP', '2018-09-14', 'VALLE DEL CAUCA', 'TULUA', '2018-09-17', 'VALLE DEL CAUCA', 'TULUA', 'KR 21 TZ 20 - 36', 'HORIZONTE SANTA ISABEL', ' Nueva E.P.S.', 'O+', 'Femenino', 'C4', 'NO', '', 'CATOLICA', '3', '1116260522', '1116260549', '1116260522', 'Madre', 11, 'Mañana', '2023-12-07 15:23:40'),
(102, 'ANGEL', 'GARCIA LOPEZ ', 'LUZADRIANALOPEZ10@HOTMAIL.COM', '3154952876', '1016966518', 'NUIP', '2018-07-31', 'CUNDINAMARCA', 'BOGOTA ', '2018-08-03', 'CUNDINAMARCA', 'BOGOTA', 'CL 4 A 20 81', 'JORGE ELIECER GAITAN', 'DISAN (Sanidad Policia Nacional)', 'A+', 'Masculino', 'C2', 'NO', '', 'CATOLICA', '5', '31791024', '1094900556', '31791024', 'Madre', 11, 'Mañana', '2023-12-07 15:37:13'),
(103, 'JUAN JOSE ', 'GARCIA LOPEZ', 'LUZADRIANALOPEZ10@HOTMAIL.COM', '3154952876', '1117029478', 'TI', '2014-10-02', 'VALLE DEL CAUCA', 'TULUA', '2022-05-09', 'VALLE DEL CAUCA', 'TULUA', 'CL 4 A 20 81', 'JORGE ELIECER GAITAN', 'DISAN (Sanidad Policia Nacional)', 'AB+', 'Masculino', 'C2', 'NO', '', 'CATOLICA', '5', '31791024', '1094900556', '31791024', 'Madre', 4, 'Mañana', '2023-12-07 15:48:48'),
(104, 'DENNA SOFIA', 'CAICEDO ARBOLEDA', 'YECELIAARBOLEDA@GMAIL.COM', '3175803361', '1116282608', 'NUIP', '2017-05-04', 'VALLE DEL CAUCA', 'TULUA', '2017-05-13', 'VALLE DEL CAUCA', 'TULUA', 'KR 23 A 3 B 04', 'EL BOSQUECITO', ' Sanitas', 'A+', 'Femenino', 'A5', 'NO', '', 'CRISTIANOS ', '10', '29231704', '16511863', '29231704', 'Madre', 2, 'Mañana', '2024-02-02 13:38:08'),
(105, 'MATHIAS', 'GORDILLO QUINTERO', 'YULIQUIS_07@HOTMAIL.COM', '3103644313', '1117031616', 'NUIP', '2016-08-29', 'VALLE DEL CAUCA', 'TULUA', '2016-08-30', 'VALLE DEL CAUCA', 'TULUA', 'CL 6A # 19 51', 'SAN LUIS', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Masculino', 'C8', 'NO', '', 'CATOLICA', '3', '1116259547', '1116233542', '1116259547', 'Madre', 2, 'Mañana', '2023-12-18 14:47:28'),
(106, 'LIAM DAVID', 'GOMEZ MENA', 'VIVIMENAC25@HOTMAIL.COM', '3164801767', '1116285926', 'NUIP', '2018-09-21', 'VALLE DEL CAUCA', 'TULUA', '2019-04-01', 'VALLE DEL CAUCA', 'TULUA', 'CL 5B # 22B 04', 'EL PALMAR', ' Sanitas', 'O+', 'Masculino', 'NA', 'Seleccione una opción', '', 'CATOLICA', '4', '38793689', '1', '38793689', 'Madre', 17, 'Tarde', '2023-12-07 17:53:31'),
(107, 'SANTIAGO', 'CRUZ GIRALO', 'NATH.GIRALDO2715@GMAIL.COM', '3233529372', '1116081116', 'NUIP', '2017-03-15', 'VALLE DEL CAUCA', 'TULUA', '2019-03-21', 'VALLE DEL CAUCA', 'TULUA', 'DG 20 TZ 20 22', 'HORIZONTE SANTA ISABEL', ' Nueva E.P.S.', 'O+', 'Masculino', 'NA', 'NO', '', 'CRISTIANA', '3', '1116277328', '2631895', '1116277328', 'Madre', 2, 'Mañana', '2023-12-11 20:23:03'),
(108, 'CAMILA', 'MURILLO LOZANO', 'LORENALOBO1@YAHOO.OM', '3152673360', '1117358172', 'TI', '2015-11-29', 'VALLE DEL CAUCA', 'TULUA', '2015-09-02', 'VALLE DEL CAUCA', 'TULUA', 'KR 26 # 22 40', 'TOMAS URIBE', ' Sanitas', 'O+', 'Femenino', 'C2', 'NO', '', 'CRISTIANA', '3', '1112099128', '94151427', '1112099128', 'Madre', 3, 'Mañana', '2023-12-13 16:11:39'),
(109, 'JHOAN CAMILO ', 'BEDOYA RIVERA', 'ANDRESBEDOYA207@GMAIL.COM', '3225267542', '1117030294', 'TI', '2015-06-04', 'VALLE DEL CAUCA', 'TULUA', '2022-07-01', 'VALLE DEL CAUCA', 'TULUA', 'CL 13 28 B11 ', 'EL BOSQUE', 'DISAN (Sanidad Policia Nacional)', 'A+', 'Masculino', 'N/A', 'SI', 'AUTISMO ', 'CATOLICA', '4', '1116243323', '1116238145', '1116238145', 'Padre', 3, 'Mañana', '2023-12-11 12:55:43'),
(110, 'SAMANTHA ', 'RIOS RAMIREZ', 'ABE.RIOS1789@GMAIL.COM', '3054333366', '1116080193', 'TI', '2016-01-02', 'VALLE DEL CAUCA', 'TULUA', '2023-03-13', 'VALLE DEL CAUCA', 'TULUA', 'CL 9 # 19A 19', 'HORIZONTE SANTA ISABEL', ' Sanitas', 'A+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '5', '1116237782', '1116245312', '1116245312', 'Padre', 3, 'Mañana', '2023-12-13 16:11:48'),
(111, 'MARIANA ', 'QUICENO BONILLA ', 'XIMENABONILLALOPEZ1986@GMAIL.COM', '3143400305', '1116078913', 'TI', '2015-04-17', 'VALLE DEL CAUCA', 'TULUA', '2022-11-10', 'VALLE DEL CAUCA', 'TULUA', 'CL 4 A 22 C 09', 'EL PALMAR', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Femenino', 'A2', 'NO', '', 'CATOLICA', '6', '38797457', '94394668', '38797457', 'Madre', 3, 'Mañana', '2023-12-11 13:14:48'),
(112, 'MATHIAS ', 'OCHOA RESTREPO ', 'DIEGO@HOTMAIL.COM', '3178355653', '1116080052', 'TI', '2015-10-29', 'VALLE DEL CAUCA', 'TULUA', '2022-11-11', 'VALLE DEL CAUCA', 'TULUA', 'CL 4 # 22B -42', 'EL PALMAR', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '6', '29873837', '94392304', '31192743', 'Abuelo', 3, 'Mañana', '2023-12-11 13:15:25'),
(113, 'VALENTINA', 'RIOS RAMIREZ', 'ABE.RIOS1789@GMAIL.COM', '3054433366', '1116083616', 'NUIP', '2020-06-08', 'VALLE DEL CAUCA', 'TULUA', '2020-07-01', 'VALLE DEL CAUCA', 'TULUA', 'CL 9 # 19A 19', 'HORIZONTE SANTA ISABEL', ' Sanitas', 'O+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '5', '1116237782', '1116245312', '1116237782', 'Padre', 9, 'Tarde', '2023-12-11 13:16:09'),
(114, 'SAMUEL ', 'SOLIS CAÑAS', 'NA@GMAIL.COM', '3154833082', '1117358194', 'TI', '2015-09-06', 'VALLE DEL CAUCA', 'TULUA', '2022-09-16', 'VALLE DEL CAUCA', 'TULUA', 'CL 3 21 16', 'ALAMEDA', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Masculino', 'C12', 'NO', '', 'CATOLICA', '5', '1116260702', '1', '16354688', 'Abuelo', 3, 'Tarde', '2024-01-29 15:22:42'),
(115, 'MIGUEL ANGEL', 'CAPOTE CASTAÑO', 'SANRAPITI19@HOTMAIL.COM', '3152406780', '1117030141', 'TI', '2015-04-25', 'VALLE DEL CAUCA', 'TULUA', '2022-04-26', 'VALLE DEL CAUCA', 'TULUA', 'KR 23# 4B 03', 'EL PALMAR', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Masculino', 'C11', 'NO', '', 'CATOLICA', '3', '1112099558', '1143934129', '1112099558', 'Madre', 3, 'Mañana', '2023-12-13 16:11:53'),
(116, 'JACOBO ', 'GONZALEZ BAQUERO', 'LUZBAQUEROBETA@GMAIL.COM', '3159261084', '1116078993', 'TI', '2015-05-24', 'VALLE DEL CAUCA', 'TULUA', '2022-06-08', 'VALLE DEL CAUCA', 'TULUA', 'CL 12 A 24 04', 'EL JARDIN', ' Sanitas', 'O+', 'Masculino', 'B4', 'NO', '', 'CRISTIANOS ', '4', '1116263695', '94357393', '1116263695', 'Madre', 3, 'Mañana', '2023-12-11 13:58:33'),
(117, 'EMILIANO', 'HENAO GUEVARA ', 'SAMIGUE1907@HOTMAIL.COM', '3183781987', '1117359749', 'NUIP', '2018-05-04', 'VALLE DEL CAUCA', 'TULUA', '2018-05-23', 'VALLE DEL CAUCA', 'TULUA', 'KR 10 # 14A - 53', 'DIABLOS ROJOS I', ' Nueva E.P.S.', 'B+', 'Masculino', 'B2', 'NO', '', 'CATOLICA', '6', '38790567', '14798373', '38790567', 'Madre', 11, 'Mañana', '2023-12-11 15:34:50'),
(118, 'JERONIMO', 'HENAO GUEVARA ', 'SAMIGUE1907@HOTMAIL.COM', '3183781987', '1117359750', 'NUIP', '2018-05-04', 'VALLE DEL CAUCA', 'TULUA', '2018-05-23', 'VALLE DEL CAUCA', 'TULUA', 'KR 10 # 14A - 53', 'DIABLOS ROJOS I', ' Nueva E.P.S.', 'A+', 'Masculino', 'B2', 'NO', '', 'CATOLICA', '6', '38790567', '14798373', '38790567', 'Madre', 11, 'Mañana', '2023-12-11 15:38:58'),
(119, 'DYLAN', 'POSADA TORRES', 'BETTYKM1986@HOTMAIL.COM', '3216416170', '1117358498', 'TI', '2016-02-20', 'VALLE DEL CAUCA', 'TULUA', '2023-11-23', 'VALLE DEL CAUCA', 'TULUA', 'MZ 32  CASA 01', 'BOSQUES DE MARACAIBO', 'DISAN (Sanidad Policia Nacional)', 'A+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '4', '1116235681', '1088239365', '1116235681', 'Madre', 3, 'Mañana', '2023-12-13 16:12:04'),
(120, 'JERONIMO ', 'SUAREZ CORTES', 'ARLENISMACUACEMACUACE@GMAIL.COM', '3225898166', '1116081279', 'NUIP', '2017-06-04', 'VALLE DEL CAUCA', 'TULUA', '2017-06-12', 'VALLE DEL CAUCA', 'TULUA', 'CL 6 25 B 99 ', 'SIETE DE AGOSTO', ' Sanitas', 'O+', 'Masculino', 'N/A', 'NO', '', 'TESTIGOS DE JEOVA ', '6', '1082687803', '1', '1082687803', 'Madre', 6, 'Tarde', '2023-12-11 16:30:23'),
(121, 'JORGE LUIS', 'JARAMILLO PEREZ', 'JORGELUISJARAMILLOSO@GMAIL.COM', '3177005247', '1117031768', 'NUIP', '2016-10-19', 'VALLE DEL CAUCA', 'TULUA', '2016-10-21', 'VALLE DEL CAUCA', 'TULUA', 'CL 5A # 17 17', 'TERCER MILENIO', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Masculino', 'B5', 'NO', '', 'CATOLICA', '4', '1112101672', '94151961', '1112101672', 'Madre', 2, 'Mañana', '2024-01-29 15:24:12'),
(122, 'LAURA FERNANDA', 'GALVIS CASTAÑO', 'KEJOCAR@HOTMAIL.COM', '3212843536', '1059120320', 'NUIP', '2020-09-15', 'CALDAS', 'MANIZALES', '2020-09-22', 'CALDAS', 'PENSILVANIA', 'MZ 24 CASA 18', 'BOSQUES DE MARACAIBO', ' Salud Total', 'O+', 'Femenino', 'A4', 'NO', '', 'CATOLICA', '5', '1058846948', '1002732449', '1058846948', 'Madre', 9, 'Tarde', '2023-12-11 16:46:16'),
(123, 'SAMUEL DAVID', 'GALLEGO ARANGO', 'YEISON.GALLEGO1406@OUTLOOK.COM', '3114936405', '1117358549', 'TI', '2016-03-29', 'VALLE DEL CAUCA', 'TULUA', '2023-06-29', 'VALLE DEL CAUCA', 'TULUA', 'AV PPAL 26 # 22', 'AGUACLARA', 'DISAN (Sanidad Policia Nacional)', 'O+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '3', '1116254858', '1116244354', '1116244354', 'Padre', 3, 'Mañana', '2023-12-11 20:30:32'),
(124, 'ISABELLA', 'GOMEZ MUÑOZ', 'NANCYMUOZCASTRO2009@GMAIL.COM', '3177051287', '1117028300', 'Seleccione una opción', '2013-11-21', 'VALLE DEL CAUCA', 'TULUA', '2021-01-19', 'VALLE DEL CAUCA', 'TULUA', 'CJ EL DELIRIO PASAJE 1 # 4A 01 ', 'AGUACLARA', ' Nueva E.P.S.', 'A+', 'Femenino', 'A4', 'Seleccione una opción', '', 'CATOLICA', '4', '1116243202', '14801912', '1116243202', 'Madre', 5, 'Mañana', '2023-12-11 22:08:01'),
(125, 'LUCIANA', 'GOMEZ MUÑOZ', 'NANCYMUOZCASTRO2009@GMAIL.COM', '3177051287', '1117033927', 'NUIP', '2019-03-17', 'VALLE DEL CAUCA', 'TULUA', '2019-03-20', 'VALLE DEL CAUCA', 'TULUA', 'CJ EL DELIRIO PASAJE 1 # 4A 01 ', 'AGUACLARA', ' Nueva E.P.S.', 'O+', 'Femenino', 'A4', 'NO', '', 'CATOLICA', '4', '1116243202', '14801912', '1116243202', 'Madre', 11, 'Mañana', '2023-12-11 22:10:46'),
(126, 'DANNA VALENTINA', 'VALENZUELA GORDILLO', 'VALENZUELA038@HOTMAIL.COM', '3103030845', '1116276244', 'TI', '2015-08-06', 'VALLE DEL CAUCA', 'TULUA', '2022-11-22', 'VALLE DEL CAUCA', 'TULUA', 'MZ F CASA 4', 'AGUACLARA', ' Sanitas', 'O+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '3', '1116261283', '1069258319', '1069258319', 'Padre', 3, 'Mañana', '2023-12-13 16:12:11'),
(127, 'SERGIO', 'BURGOS HEDMONT', 'HEDMONTKATHERINE@GMAIL.COM', '3163752017', '1116078937', 'NUIP', '2015-05-02', 'VALLE DEL CAUCA', 'TULUA', '2015-05-08', 'VALLE DEL CAUCA', 'TULUA', 'CL 15 # 4 75', 'PORTALES DE SAN FELIPE', ' Nueva E.P.S.', 'O+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '5', '31793192', '1116724190', '31793192', 'Madre', 3, 'Mañana', '2023-12-13 16:12:20'),
(128, 'SALOME', 'RIOS OSORIO', 'YAKILIZZA@HOTMAIL.COM', '3188602239', '1117358586', 'TI', '2016-04-15', 'VALLE DEL CAUCA', 'TULUA', '2023-06-16', 'VALLE DEL CAUCA', 'TULUA', 'KR 11 # 26B 18', 'BOLIVAR', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Seleccione una opción', 'NA', 'NO', '', 'CRISTIANA', '4', '1112100754', '14795352', '1112100754', 'Madre', 3, 'Mañana', '2023-12-13 16:12:29'),
(129, 'EMANUEL ', 'RORIGUEZ GONZALEZ', 'MARLEYTABORDA.21@GMAIL.COM', '3143806431', '1116078747', 'TI', '2015-01-21', 'VALLE DEL CAUCA', 'TULUA', '2022-04-26', 'VALLE DEL CAUCA', 'TULUA', 'MZ A CASA 16', 'URBANIZACION LA PAZ', ' Sanitas', 'O+', 'Masculino', 'C18', 'NO', '', 'CATOLICA', '4', '29819430', '93206918', '29819430', 'Madre', 4, 'Mañana', '2023-12-13 16:12:34'),
(130, 'MARIA BLEN ', 'CORTES HENAO ', 'OLGALUCIARODRIGUEZHUERTAS@GMAIL.COM', '3162885420', '1117357388', 'TI', '2014-04-30', 'VALLE DEL CAUCA', 'TULUA', '2021-07-09', 'VALLE DEL CAUCA', 'TULUA', 'CL 3 22 03 ', 'SAMAN DEL NORTE', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '2', '1112103708', '14795490', '66721118', 'Abuelo', 4, 'Mañana', '2023-12-13 12:55:01'),
(131, 'SARAY', 'LUCUMI CARO', 'ISAKARITO@HOTMAIL.OM', '3153573718', '1117357481', 'TI', '2014-06-20', 'VALLE DEL CAUCA', 'TULUA', '2021-11-11', 'VALLE DEL CAUCA', 'TULUA', 'CL 16 # 3 03', 'PORTALES DEL RIO', 'DISAN (Sanidad Policia Nacional)', 'A+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '3', '31793823', '16846825', '31793823', 'Madre', 4, 'Mañana', '2023-12-13 16:15:12'),
(132, 'JERONIMO ', 'SERNA OROZCO ', 'NA@GMAIL.COM', '3154276751', '1117357568', 'TI', '2014-08-09', 'VALLE DEL CAUCA', 'TULUA', '2021-08-13', 'VALLE DEL CAUCA', 'TULUA', 'CL 5 # 22C -15', 'EL PALMAR', ' Nueva E.P.S.', 'A+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '5', '66724042', '94393879', '29874463', 'Abuelo', 4, 'Mañana', '2023-12-13 13:12:06'),
(133, 'EMILY ', 'RAMIREZ OCAMPO', 'JOMILO01@HOTMAIL.COM', '3216070955', '1117029932', 'TI', '2015-02-23', 'VALLE DEL CAUCA', 'TULUA', '2022-02-23', 'VALLE DEL CAUCA', 'TULUA', 'CL 6 16 94', 'SANTA INES DE COMFAMILIAR', ' Sanitas', 'A+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '3', '38795840', '94395175', '38795840', 'Madre', 4, 'Mañana', '2023-12-13 13:14:48'),
(134, 'SHARLEEN SOFIA', 'BENACHI GONZALEZ', 'GERALDINGONZALEZ825@GMAIL.COM', '3173248984', '1115242732', 'TI', '2015-03-20', 'VALLE DEL CAUCA', 'TULUA', '2022-05-09', 'VALLE DEL CAUCA', 'TULUA', 'KR 28A # 12 00', 'AGUACLARA', ' Nueva E.P.S.', 'O+', 'Femenino', 'B4', 'NO', '', 'CATOLICA', '3', '1112880714', '1', '1112880714', 'Madre', 4, 'Mañana', '2023-12-13 16:15:24'),
(135, 'DAVINSON SAMUEL', 'HERNANDEZ COLORADO ', 'LINDASPIRATAS364@GMAIL.COM', '3235142119', '1117357831', 'NUIP', '2015-02-03', 'VALLE DEL CAUCA', 'TULUA', '2015-02-03', 'VALLE DEL CAUCA', 'TULUA', 'MZ 9 CASA 46', 'BOSQUES DE MARACAIBO', ' Sanitas', 'O+', 'Masculino', 'N/A', 'NO', '', 'CRISTIANOS ', '5', '29760486', '1120362802', '29760486', 'Madre', 4, 'Mañana', '2023-12-13 13:32:34'),
(136, 'EMILY', 'VICTORIA OSORIO', 'SONIAOSORIOPEREZE@GMAIL.COM', '3183780331', '1112158603', 'TI', '2014-09-15', 'VALLE DEL CAUCA', 'TULUA', '2021-11-02', 'VALLE DEL CAUCA', 'TULUA', 'MZ F CASA 18', 'URBANIZACION LA PAZ', ' Sanitas', 'O+', 'Femenino', 'B2', 'NO', '', 'CATOLICA', '3', '1112103622', '1', '1112103622', 'Madre', 4, 'Mañana', '2023-12-13 16:15:42'),
(137, 'SALOME ', 'GALLEGO OLAYA ', 'JHONGALLEGO8578@GMAIL.COM', '3113256621', '1117029222', 'TI', '2014-08-01', 'VALLE DEL CAUCA', 'TULUA', '2021-08-31', 'VALLE DEL CAUCA', 'TULUA', 'CALLEJON EL DELIRIO AGUACLARA', 'AGUACLARA', ' Nueva E.P.S.', 'B+', 'Femenino', 'C2', 'Seleccione una opción', '', 'CATOLICA', '2', '66728865', '6428578', '66728865', 'Madre', 4, 'Mañana', '2023-12-13 16:16:03'),
(138, 'MIGUEL ANGEL ', 'PINZON JARAMILLO ', 'KATHE0320@OUTLOOK.COM', '3162532789', '1117028318', 'TI', '2013-11-26', 'VALLE DEL CAUCA', 'TULUA', '2020-12-29', 'VALLE DEL CAUCA', 'TULUA', 'CL 4 B 22 A 1 23 ', 'INTERNACIONAL', ' Sanitas', 'O+', 'Masculino', 'C9', 'NO', '', 'CATOLICA', '3', '1116253955', '1093738954', '1116253955', 'Madre', 4, 'Mañana', '2023-12-13 13:54:37'),
(139, 'ESTEBAN ', 'BANGUERO RAMIREZ ', 'YBANGUEROSANDOVAL@GMAIL.COM', '3147916101', '1117029130', 'TI', '2014-07-08', 'VALLE DEL CAUCA', 'TULUA', '2022-01-05', 'VALLE DEL CAUCA', 'TULUA', 'KR 24 4 A 40 ', 'ALAMEDA', ' Nueva E.P.S.', 'B+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '4', '1116244456', '1116236358', '1116236358', 'Padre', 4, 'Mañana', '2023-12-13 14:20:13'),
(140, 'SANTIAGO', 'TORRES LOPERA', 'CALOMO87@AUTLOOK.ES', '3148699891', '1081061814', 'TI', '2014-11-24', 'NARIÑO', 'PASTO', '2022-06-07', 'VALLE DEL CAUCA', 'TULUA', 'CL 6 # 23 A  - 45', 'ALAMEDA', ' Nueva E.P.S.', 'O+', 'Masculino', 'C9', 'NO', '', 'CATOLICA', '4', '1089510242', '18103773', '1089510242', 'Madre', 4, 'Mañana', '2023-12-13 14:29:56'),
(141, 'JACOBO', 'GARZON DIAZ', 'DIAZMONSALVEPATRICIA@GMAIL.COM', '3173495593', '1117357655', 'TI', '2014-09-29', 'VALLE DEL CAUCA', 'TULUA', '2021-11-05', 'VALLE DEL CAUCA', 'TULUA', 'CL 7A # 22A 36', 'VILLA COLOMBIA', ' Sanitas', 'O+', 'Masculino', 'NA', 'SI', 'TRASTORNO MIXTO DE ANSIEDAD Y DEPRESION', 'CATOLICA', '2', '1116247976', '1', '1116247976', 'Madre', 4, 'Mañana', '2023-12-13 16:16:53'),
(142, 'SALOME ', 'HURTADO COLLAZOS', 'HELENITA.76@HOTMAIL.COM', '3154083433', '1117029249', 'NUIP', '2014-11-11', 'VALLE DEL CAUCA', 'TULUA', '2014-11-12', 'VALLE DEL CAUCA', 'TULUA', 'MZ G CASA 8', 'URBANIZACION LA PAZ', ' Sanitas', 'O+', 'Femenino', 'NA', 'NO', '', 'CRISTIANA', '4', '66726455', '6544798', '66726455', 'Madre', 4, 'Mañana', '2023-12-13 15:11:14'),
(143, 'SALOME ', 'MELENDEZ MORANTE', 'JUANMAMOR@HOTMAIL.ES', '3162280013', '1116078725', 'TI', '2015-01-11', 'VALLE DEL CAUCA', 'TULUA', '2022-01-14', 'VALLE DEL CAUCA', 'TULUA', 'VIA LOS CAIMOS # 28 102', 'AGUACLARA', ' Sanitas', 'O+', 'Femenino', 'NA', 'Seleccione una opción', '', 'CATOLICA', '6', '38791332', '14800672', '14800672', 'Padre', 4, 'Mañana', '2023-12-13 15:48:22'),
(144, 'ALAN SEBASTIAN ', 'TEJEDA ARANGO', 'CLAUPAARANGO@HOTMAIL.COM', '3128539386', '1117357508', 'TI', '2014-07-04', 'VALLE DEL CAUCA', 'TULUA', '2021-09-17', 'VALLE DEL CAUCA', 'TULUA', 'CJ PEÑARANDA 29 83 ', 'AGUACLARA', 'Emssanar', 'O+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '3', '1116266949', '1122810504', '1116266949', 'Madre', 4, 'Mañana', '2023-12-13 16:38:16'),
(145, 'JULIAN ANDRES', 'ARIAS PADILLA', 'WAR75@LIVE.COM', '3175561857', '1116078642', 'TI', '2014-12-06', 'VALLE DEL CAUCA', 'TULUA', '2022-02-21', 'VALLE DEL CAUCA', 'TULUA', 'CL 17 # 38A 36', 'ENTRE RIOS', 'DISAN (Sanidad Policia Nacional)', 'O+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '4', '1112299289', '6428548', '1112299289', 'Madre', 4, 'Mañana', '2023-12-13 18:21:07'),
(146, 'SAMUEL ANDRES', 'JIMENEZ PERNIA', 'FABIOLA2994@GMAIL.COM', '3166880952', '1116284656', 'TI', '2014-10-19', 'VALLE DEL CAUCA', 'TULUA', '2022-04-08', 'VALLE DEL CAUCA', 'TULUA', 'CL 9A DG 23 67', 'SANTA INES DE COMFAMILIAR', ' S.O.S. Servicio Occidental de Salud S.A.', 'Seleccione una opción', 'Masculino', 'C3', 'NO', '', 'CATOLICA', '5', '23544792', '1232393590', '23544792', 'Madre', 4, 'Mañana', '2023-12-13 19:48:17'),
(147, 'DAIRON ESTEBAN', 'OLAYA OCAMPO', 'NANCYOCAMPO730@GMAIL.COM', '3152815620', '1116079079', 'TI', '2015-07-10', 'VALLE DEL CAUCA', 'TULUA', '2023-02-23', 'VALLE DEL CAUCA', 'TULUA', 'KR 21 # 6 45', 'LA INDEPENDENCIA', ' Sanitas', 'A+', 'Masculino', 'C2', 'NO', '', 'CATOLICA', '3', '1006433309', '94395051', '1006433309', 'Madre', 3, 'Mañana', '2023-12-13 21:11:27'),
(148, 'SARA', 'GIRON HURTAO', 'LUCERO.HURTADO@HOTMAIL.COM', '3122741016', '1116286999', 'NUIP', '2021-01-10', 'VALLE DEL CAUCA', 'TULUA', '2021-01-18', 'VALLE DEL CAUCA', 'TULUA', 'CL 3 # 23 24', 'JUAN XXIII', ' Sanitas', 'O+', 'Femenino', 'A4', 'NO', '', 'CATOLICA', '3', '1116263840', '1116266918', '1116263840', 'Madre', 9, 'Tarde', '2023-12-14 15:23:46'),
(149, 'VICTORIA', 'GARCIA MELENDEZ', 'ANGELAMAYERLYMELENDEZGOMEZ@GMAIL.COM', '3146963191', '1225092649', 'NUIP', '2017-06-22', 'VALLE DEL CAUCA', 'TULUA', '2017-06-27', 'VALLE DEL CAUCA', 'TULUA', 'CL 5B # 13 46', 'SIETE DE AGOSTO', 'DISAN (Sanidad Policia Nacional)', 'O+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '4', '1089479951', '94152882', '1089479951', 'Madre', 1, 'Mañana', '2023-12-14 19:47:36'),
(150, 'LAERY', 'CEBALLOS MASMELA', 'ALEJANDRAGARZONMASMELA@GMAIL.COM', '3223633886', '1034786654', 'TI', '2013-07-03', 'CUNDINAMARCA', 'BOGOTA', '2020-09-25', 'VALLE DEL CAUCA', 'TULUA', 'CL 4 A 20 56 ', 'JORGE ELIECER GAITAN', 'Sanidad Militar', 'A+', 'Femenino', 'B2', 'NO', '', 'CRISTIANOS ', '5', '1111335487', '10188199', '1111335487', 'Madre', 5, 'Mañana', '2023-12-15 12:34:43'),
(151, 'AILYN', 'MONCADA NARVAEZ', 'OVIDIOMONCADA33@GMAIL.COM', '3122438546', '1116077620', 'TI', '2013-06-13', 'VALLE DEL CAUCA', 'TULUA', '2020-11-13', 'VALLE DEL CAUCA', 'TULUA', 'CL 6 #19 89', 'SAN LUIS', ' Sanitas', 'A+', 'Femenino', 'C1', 'NO', '', 'CATOLICA', '5', '29877988', '14795746', '14795746', 'Padre', 5, 'Mañana', '2023-12-15 12:42:22'),
(152, 'JASON ', 'GARCIA GARCIA', 'SOPAGAQUI@GMAIL.COM', '3173234637', '1117356959', 'TI', '2013-08-05', 'VALLE DEL CAUCA', 'TULUA', '2020-09-18', 'VALLE DEL CAUCA', 'TULUA', 'MZ G CASA 7 ', 'EL PARAISO', ' Nueva E.P.S.', 'O+', 'Masculino', 'D10', 'NO', '', 'CATOLICA', '5', '38790431', '94391431', '38790431', 'Madre', 5, 'Mañana', '2023-12-15 13:14:12'),
(153, 'DANNA SOFIA', 'GARCIA VALENCIA', 'JOHANAALEXA_VB27@HOTMAIL.COM', '3114027680', '1117028153', 'TI', '2013-10-01', 'VALLE DEL CAUCA', 'TULUA', '2021-11-24', 'VALLE DEL CAUCA', 'TULUA', 'CR 23A # 4 28', 'ALAMEDA', ' Nueva E.P.S.', 'O+', 'Femenino', 'C5', 'NO', '', 'CATOLICA', '6', '1116242279', '1', '1116242279', 'Madre', 5, 'Mañana', '2023-12-15 13:32:11'),
(154, 'JUAN PABLO', 'VALENCIA BEJARANO', 'JOHANAALEXA_VB27@HOTMAIL.COM', '3114027680', '1116081985', 'NUIP', '2018-04-17', 'VALLE DEL CAUCA', 'TULUA', '2018-04-20', 'VALLE DEL CAUCA', 'TULUA', 'KR 23A # 4 28', 'ALAMEDA', ' Nueva E.P.S.', 'A+', 'Masculino', 'C5', 'NO', '', 'CATOLICA', '6', '1116242279', '1', '1116242279', 'Madre', 1, 'Mañana', '2023-12-15 13:39:34'),
(155, 'JONSUE TOMAS', 'VICTORIA ZUÑIGA', 'VIMAVIGO68@HOTMAIL.COM', '3137578892', '1117357110', 'TI', '2023-11-16', 'VALLE DEL CAUCA', 'TULUA', '2020-11-19', 'VALLE DEL CAUCA', 'TULUA', 'CL 15A # 15E 07', 'LA CAMPIÑA', 'DISAN (Sanidad Policia Nacional)', 'O+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '4', '1116236799', '16365720', '16365720', 'Padre', 5, 'Mañana', '2023-12-15 14:31:51'),
(156, 'ALLYSON ALEJANDRA', 'OCAMPO SEPULVEDA', 'JULI_CM123@HOTMAIL.COM', '3054286137', '1117029040', 'TI', '2014-06-06', 'VALLE DEL CAUCA', 'TULUA', '2021-06-18', 'VALLE DEL CAUCA', 'TULUA', 'CL 10 # 9A 28', 'EL REFUGIO', ' Nueva E.P.S.', 'O+', 'Femenino', 'C14', 'NO', '', 'CATOLICA', '2', '1088017981', '1', '1088017981', 'Madre', 4, 'Mañana', '2023-12-15 15:43:14'),
(157, 'EMILY YOJHANA', 'RESTREPO ZULUAGA ', 'NA@GMAIL.COM', '3135002833', '1155746882', 'NUIP', '2017-06-25', 'ANTIOQUIA', 'ENVIGADO ', '2017-06-27', 'ANTIOQUIA', 'ENVIGADO ', 'MZ 29 CASA 1 ', 'BOSQUES DE MARACAIBO', ' EPS Sura', 'O+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '3', '24873351', '15989657', '15989657', 'Padre', 0, 'Mañana', '2024-04-04 14:43:40'),
(158, 'SARAHI', 'BETANCURT TORRES', 'LORENITTA83@HOTMAIL.COM', '3182337702', '1117358164', 'TI', '2015-08-21', 'VALLE DEL CAUCA', 'TULUA', '2023-01-12', 'VALLE DEL CAUCA', 'SEVILLA ', 'CL 9A # 17 02', 'SANTA INES DE COMFAMILIAR', ' Nueva E.P.S.', 'O+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '4', '38756268', '94394751', '38756268', 'Madre', 3, 'Mañana', '2023-12-15 19:45:08');
INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `correo`, `telefono`, `curp`, `tipo_doc`, `birthdate`, `dpto_nac`, `ciu_nacimiento`, `fecha_exp`, `dpto_exp`, `ciu_expedicion`, `direccion`, `barrio`, `eps`, `rh`, `sexo`, `sisben`, `discapacidad`, `c_discapacidad`, `religion`, `convive`, `madre`, `padre`, `acudiente`, `parentezco`, `id_grado`, `jornada`, `fecha`) VALUES
(159, 'SAMUEL', 'ROMERO LOPEZ', 'NA@GMAIL.COM', '3162394520 ', '1116078032', 'TI', '2014-01-13', 'VALLE DEL CAUCA', 'TULUA', '2022-02-04', 'VALLE DEL CAUCA', 'TULUA', 'CL 6 # 22C 28', 'VILLA COLOMBIA', ' Nueva E.P.S.', 'O+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '3', '29873359', '14798844', '14798844', 'Padre', 5, 'Mañana', '2023-12-18 16:41:13'),
(160, 'JUAN ALEJANDRO', 'LOZANO BORJA', 'BORJAYOLIMA941@GMAIL.COM', '3188395848', '1117028948', 'TI', '2014-05-09', 'VALLE DEL CAUCA', 'TULUA', '2022-05-17', 'VALLE DEL CAUCA', 'ANDALUCIA', 'KR 22B # 5B 10', 'INTERNACIONAL', 'Emssanar', 'A+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '3', '66727171', '1', '66727171', 'Madre', 5, 'Mañana', '2023-12-15 20:29:48'),
(161, 'OSCAR JOEL', 'BALDION ALFONSO', 'NA@GMAIL.COM', '3186771369', '1117359880', 'NUIP', '2018-07-18', 'VALLE DEL CAUCA', 'TULUA', '2018-08-09', 'VALLE DEL CAUCA', 'TULUA', 'TZ 12 #23 35', 'RUBEN CRUZ VELEZ', ' S.O.S. Servicio Occidental de Salud S.A.', 'A+', 'Masculino', 'A2', 'NO', '', 'CATOLICA', '5', '1116241268', '14800052', '1116241268', 'Madre', 17, 'Tarde', '2023-12-18 13:20:51'),
(162, 'MEEGAN', 'OSORIO QUIROGA', 'PAYASITOSLOSCHIQUIS@HOTMAIL.COM', '3043515708', '1116080094', 'TI', '2015-11-18', 'VALLE DEL CAUCA', 'TULUA', '2023-05-23', 'VALLE DEL CAUCA', 'TULUA', 'TZ 12 #23 35', 'RUBEN CRUZ VELEZ', ' Sanitas', 'B+', 'Femenino', 'B4', 'NO', '', 'CATOLICA', '4', '1116273570', '1', '1116241268', 'Otro', 3, 'Mañana', '2023-12-18 13:31:28'),
(163, 'JULIANA', 'TABARES FRANCO', 'FRANCORAMIREZALEJANDRA7@GMAIL.COM', '3155874026', '1116077831', 'TI', '2013-09-12', 'VALLE DEL CAUCA', 'TULUA', '2021-01-20', 'VALLE DEL CAUCA', 'TULUA', 'KR 23A # 4 16', 'ALAMEDA', ' Sanitas', 'A+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '6', '31432369', '94154247', '31432369', 'Madre', 5, 'Mañana', '2023-12-18 14:10:58'),
(164, 'SARA ', 'GOMEZ GONZALEZ', 'SEBAGOCA2411@GMAIL.COM', '3154140937', '1117028274', 'TI', '2013-11-11', 'VALLE DEL CAUCA', 'TULUA', '2020-11-25', 'VALLE DEL CAUCA', 'TULUA', 'CL 5C # 19 21', 'SAN LUIS', ' Sanitas', 'O+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '5', '1116271208', '1116265644', '1116265644', 'Padre', 0, 'Mañana', '2024-04-04 14:43:01'),
(165, 'JULIANA', 'RESTREPO MOSQUERA', 'VICKYMOSQUERA5@GMAIL.COM', '3155007800', '1117029841', 'NUIP', '2015-01-26', 'VALLE DEL CAUCA', 'TULUA', '2015-01-28', 'VALLE DEL CAUCA', 'TULUA', 'KR 28 # 20 60', 'TOMAS URIBE', ' S.O.S. Servicio Occidental de Salud S.A.', 'A+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '5', '1116245070', '94154614', '1116245070', 'Madre', 4, 'Mañana', '2023-12-18 21:38:44'),
(166, 'EMMANUEL ', 'HINCAPIE SEPULVEDA', 'MONICASEPULVEDA953@GMAIL.COM', '3184524786', '1108570069', 'TI', '2015-03-21', 'VALLE DEL CAUCA', 'CALI ', '2022-09-09', 'VALLE DEL CAUCA', 'SEVILLA ', 'KR 22 8 03 ', 'MUNICIPAL', ' Nueva E.P.S.', 'A+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '5', '29314823', '1113309132', '29314823', 'Madre', 3, 'Mañana', '2023-12-19 15:20:26'),
(167, 'ÁNGEL ISAAC', 'PRIETO RAMIREZ', 'VANEGAVIRIA1205@GMAIL.COM', '3173107652', '1117359445', 'NUIP', '2017-12-05', 'VALLE DEL CAUCA', 'TULUA', '2017-12-11', 'VALLE DEL CAUCA', 'TULUA', 'KR 23 A 5-24 ', 'ALAMEDA', 'Emssanar', 'O+', 'Masculino', 'A3', 'NO', '', 'CATOLICA', '4', '1116281162', '1', '1116281162', 'Madre', 6, 'Tarde', '2023-12-19 17:54:11'),
(168, 'DYLAN', 'PEDROZA DOMINGUEZ', 'GLADYS@GMAIL.COM', '3152241626', '1117359718', 'NUIP', '2018-04-20', 'VALLE DEL CAUCA', 'TULUA', '2018-05-15', 'VALLE DEL CAUCA', 'TULUA', 'CL 4A # 22C -22', 'EL PALMAR', 'Emssanar', 'O+', 'Masculino', 'B7', 'NO', '', 'CATOLICA', '3', '1116244883', '1', '1116244883', 'Madre', 1, 'Mañana', '2024-01-09 14:20:06'),
(169, 'AARON', 'BASTIDAS VALENCIA', 'DIANAVAO94@GMAIL.COM', '3217584413', '1117032803', 'NUIP', '2017-09-24', 'VALLE DEL CAUCA', 'TULUA', '2021-08-25', 'VALLE DEL CAUCA', 'TULUA', 'CL 4A # 23B -09', 'ALAMEDA', ' S.O.S. Servicio Occidental de Salud S.A.', 'A+', 'Masculino', 'B2', 'NO', '', 'CATOLICA', '3', '1116265982', '1094961545', '1116265982', 'Madre', 6, 'Tarde', '2024-01-09 15:46:52'),
(170, 'JERONIMO', 'ROJAS CEBALLOS', 'WILFRE_820@HOTMAIL.COM', '3183193957', '1116078397', 'TI', '2014-07-28', 'VALLE DEL CAUCA', 'TULUA', '2021-09-17', 'VALLE DEL CAUCA', 'TULUA', 'CL 23 # 23 - 50', 'CENTRO', ' Famisanar', 'O+', 'Masculino', 'A5', 'NO', '', 'CATOLICA', '4', '29877092', '1114058172', '1114058172', 'Padre', 5, 'Mañana', '2024-01-09 16:57:33'),
(171, 'VICTORIA SOFIA', 'CASTRO ARAUJO', 'araujoesmeralda5@gmail.com', '3122841845', '1116286682', 'NUIP', '2020-01-30', 'VALLE DEL CAUCA', 'TULUA', '2020-02-05', 'VALLE DEL CAUCA', 'TULUA', 'KR 18 A 1 31 22', 'LA HERRADURA', 'Emssanar', 'O+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '4', '4905775', '1126244311', '4905775', 'Madre', 10, 'Tarde', '2024-01-09 19:54:13'),
(172, 'THIERRY', 'AGUDELO HURTAO', 'yulilh2001@gmail.com', '3117976119', '1114392818', 'NUIP', '2020-08-30', 'VALLE DEL CAUCA', 'TULUA', '2020-09-08', 'VALLE DEL CAUCA', 'TULUA', 'MZ V CASA 5 ', 'AGUACLARA', ' Nueva E.P.S.', 'O+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '6', '38792476', '1', '38792476', 'Madre', 9, 'Tarde', '2024-01-09 21:06:18'),
(173, 'ANTONELLA', 'MELENDEZ PATIÑO', 'm3154603685@hotmail.com', '3218461773', '1117360027', 'NUIP', '2018-11-22', 'VALLE DEL CAUCA', 'TULUA', '2018-12-03', 'VALLE DEL CAUCA', 'TULUA', 'DG 20 # T -646', 'BELLO HORIZONTE', ' Nueva E.P.S.', 'O+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '3', '1116259066', '1116236164', '1116259066', 'Madre', 17, 'Tarde', '2024-01-09 23:16:11'),
(174, 'GABRIELA ', 'CORDOBA CASTRO', 'JUDITHANDREACASTROGARCIA3@GMAIL.COM', '3106561565', '1117030110', 'TI', '2015-04-16', 'VALLE DEL CAUCA', 'TULUA', '2022-07-19', 'VALLE DEL CAUCA', 'TULUA', 'CL 5 B 17 02 ', 'TERCER MILENIO', ' Sanitas', 'O+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '3', '38794025', '94152125', '38794025', 'Madre', 3, 'Mañana', '2024-01-10 17:09:37'),
(175, 'FRANCO', 'TANGARIFE GOMEZ', 'MARYIJASBLEIYGOMEZFRANCO@GMAIL.COM', '3217803497', '1116081426', 'NUIP', '2017-08-27', 'VALLE DEL CAUCA', 'TULUA', '2017-08-29', 'VALLE DEL CAUCA', 'TULUA', 'MZ G CASA 10 LOTE 1', 'SAN FRANCISCO', 'Emssanar', 'A+', 'Masculino', 'B3', 'NO', '', 'CATOLICA', '4', '1116261408', '94518681', '1116261408', 'Madre', 6, 'Tarde', '2024-02-02 13:37:00'),
(176, 'ISABELLA ', 'OLAYA GUERRERO', 'WEN.ISA18@GMAIL.COM', '3185643134', '1116282422', 'NUIP', '2017-04-18', 'VALLE DEL CAUCA', 'TULUA', '2017-04-21', 'VALLE DEL CAUCA', 'TULUA', 'CR 28 B # 12C -58', 'SAN ANTONIO', ' Sanitas', 'A+', 'Femenino', 'A3', 'NO', '', 'CATOLICA', '2', '1006490758', '1', '1006490758', 'Madre', 2, 'Mañana', '2024-01-10 21:33:57'),
(177, 'GUADALUPE', 'OCAMPO RIVAS', 'HERRERAYOLANDA298@GMAIL.COM', '3213102728', '1117358899', 'NUIP', '2016-10-27', 'VALLE DEL CAUCA', 'TULUA', '2016-11-17', 'VALLE DEL CAUCA', 'TULUA', 'CL 8A # 28A -44', 'SANTA RITA DEL RIO', 'Emssanar', 'A-', 'Femenino', 'C10', 'NO', '', 'CATOLICA', '6', '1116243210', '1', '43449394', 'Abuelo', 2, 'Mañana', '2024-01-10 22:19:14'),
(178, 'MAICOL STIVEN', 'OCAMPO RIVAS', 'HERRERAYOLANDA298@GMAIL.COM', '3213102728', '1117355091', 'TI', '2011-01-03', 'VALLE DEL CAUCA', 'TULUA', '2018-01-03', 'VALLE DEL CAUCA', 'TULUA', 'CL 8A # 28A -44', 'SANTA RITA DEL RIO', 'Emssanar', 'A-', 'Masculino', 'C10', 'NO', '', 'CATOLICA', '6', '1116243210', '1', '43449394', 'Abuelo', 5, 'Mañana', '2024-01-10 22:37:30'),
(179, 'ANTHONY', 'CARDONA PARRA', 'LPARRAATEHORTUA@GMAIL.COM', '3147724404', '1116083935', 'NUIP', '2020-10-27', 'VALLE DEL CAUCA', 'TULUA', '2020-11-04', 'VALLE DEL CAUCA', 'TULUA', 'CL 6A # 22 D -32', 'VILLA COLOMBIA', ' EPS Sura', 'O+', 'Masculino', 'A2', 'NO', '', 'CRISTIANA', '4', '1006466208', '1116275558', '1006466208', 'Madre', 9, 'Tarde', '2024-01-11 15:39:03'),
(180, 'JUAN ESTEBAN', 'CORREA LOPEZ', 'VANESSALOPEZLOZANO156@GMAIL.COM', '3013854448', '1117360276', 'NUIP', '2019-06-11', 'VALLE DEL CAUCA', 'TULUA', '2019-06-17', 'VALLE DEL CAUCA', 'TULUA', 'CR 23A # 2 -03', 'PORTALES DEL RIO', 'Emssanar', 'O+', 'Masculino', 'C1', 'Seleccione una opción', '', 'CATOLICA', '4', '1143848141', '96333217', '1143848141', 'Madre', 17, 'Tarde', '2024-01-11 16:02:53'),
(181, 'SAMANTHA', 'MORENO CASTAÑEDA', 'YULIALUCES@HOTMAIL.COM', '3152506049', '1117035247', 'NUIP', '2021-05-15', 'VALLE DEL CAUCA', 'TULUA', '2021-05-19', 'VALLE DEL CAUCA', 'TULUA', 'CL 6 # 22 - 25', 'MUNICIPAL', ' Nueva E.P.S.', 'O+', 'Femenino', 'B1', 'NO', '', 'CATOLICA', '4', '1116281268', '1116266932', '1116281268', 'Madre', 9, 'Tarde', '2024-01-16 15:13:25'),
(182, 'JERONIMO ', 'DELGADO CUERO ', 'DCUEROREQUEJO@GMAIL.COM', '3184449202', '1117360828', 'NUIP', '2020-08-10', 'VALLE DEL CAUCA', 'TULUÁ', '2020-11-07', 'VALLE DEL CAUCA', 'TULUA ', 'CL 23 B 4 03 ', 'ALAMEDA', ' Nueva E.P.S.', 'B+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '9', '1116272563', '1', '1116272563', 'Madre', 9, 'Tarde', '2024-01-11 20:47:41'),
(183, 'MANUELA ', 'ROBAYO VALENCIA ', 'GRAN.NACION@GMAIL.COM', '3183164725', '1117032058', 'NUIP', '2017-02-05', 'VALLE DEL CAUCA', 'TULUÁ', '2017-02-07', 'VALLE DEL CAUCA', 'TULUA ', 'KR 17 26 35 ', 'LAS DELICIAS', ' Nueva E.P.S.', 'O+', 'Femenino', 'N/A', 'NO', '', 'CRISTIANOS ', '5', '38791261', '1116438621', '38791261', 'Madre', 7, 'Tarde', '2024-01-11 21:34:36'),
(184, 'BRIANNA NICOLE', 'MARDONES HERRERA', 'LORENASAM3038@HOTMAIL.COM', '3023184604', '1127538359', 'TI', '2014-06-23', 'VALLE DEL CAUCA', 'TULUA', '2021-07-07', 'VALLE DEL CAUCA', 'TULUA', 'CARRERA 18 # 23 59', 'ROJAS', ' Sanitas', 'A+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '5', '1116239255', '14798506', '14798506', 'Padre', 4, 'Mañana', '2024-01-12 15:09:37'),
(185, 'LUCIA', 'CORDOBA QUINTERO', 'VAQUI2002@GMAIL.COM', '3173656267', '1116285112', 'NUIP', '2018-05-07', 'VALLE DEL CAUCA', 'TULUA', '2018-05-15', 'VALLE DEL CAUCA', 'TULUA', 'CL 4 # 22C 23', 'EL PALMAR', ' Nueva E.P.S.', 'B+', 'Femenino', 'NA', 'NO', '', 'C', '3', '38790469', '1030545065', '38790469', 'Madre', 1, 'Mañana', '2024-01-12 16:53:18'),
(186, 'SOFFIA', 'FIGUEROA BARRADA', 'ONEWAYJESUS2013@HOTMAIL.COM', '3104348764', '1117359982', 'NUIP', '2018-10-26', 'VALLE DEL CAUCA', 'TULUA', '2018-10-31', 'VALLE DEL CAUCA', 'TULUA', 'CL 14A # 20 23', 'BELLO HORIZONTE', ' S.O.S. Servicio Occidental de Salud S.A.', 'B+', 'Femenino', 'C4', 'Seleccione una opción', '', 'CATOLICA', '2', '1116261781', '1', '1116261781', 'Madre', 17, 'Tarde', '2024-01-12 19:22:05'),
(187, 'MARIA PAZ', 'AGUJA MENDEZ', 'NANITAMENDEZMENDOZA@HOTMAIL.COM', '3209083696', '1031840905', 'Seleccione una opción', '2015-05-19', 'VALLE DEL CAUCA', 'TULUA', '2022-07-06', 'VALLE DEL CAUCA', 'TULUA', 'CL 4 # 5 43', 'TERCER MILENIO', ' Sanitas', 'O+', 'Femenino', 'B3', 'NO', '', 'CRISTIANA', '5', '52804602', '80121561', '52804602', 'Madre', 4, 'Mañana', '2024-01-12 19:44:31'),
(188, 'SALOME', 'LOPEZ GOMEZ', 'ALEXAGOMEZ8815@HOTMAIL.COM', '3184687574', '1116082180', 'NUIP', '2018-08-24', 'VALLE DEL CAUCA', 'TULUA', '2018-08-28', 'VALLE DEL CAUCA', 'TULUA', 'CARRERA 23 #3A 21', 'EL PALMAR', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Femenino', 'C4', 'NO', '', 'CATOLICA', '3', '1113037674', '6499866', '1113037674', 'Madre', 17, 'Tarde', '2024-01-15 19:42:20'),
(189, 'ALLISON', 'GARCIA ZAMUDIO', 'JOHANSTIVENGARCIA@HOTMAIL.COM', '3117520101', '1116084213', 'NUIP', '2021-04-29', 'VALLE DEL CAUCA', 'TULUA', '2021-05-05', 'VALLE DEL CAUCA', 'TULUA', 'CL 3B # 24A 52', 'PORTALES DEL RIO', ' Nueva E.P.S.', 'O+', 'Femenino', 'N', 'NO', '', 'CATOLICA', '3', '1116281785', '1116258304', '1116258304', 'Padre', 9, 'Tarde', '2024-01-15 20:58:55'),
(190, 'EMMANUEL', 'TABIMBA SANCHEZ', 'ALEJANDRODAVIDTABIMBA463@GMAIL.COM', '3184156770', '1116081315', 'NUIP', '2017-06-10', 'VALLE DEL CAUCA', 'TULUA', '2017-06-28', 'VALLE DEL CAUCA', 'TULUA', 'CR 24 # 4A 09', 'ALAMEDA', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Seleccione una opción', 'C12', 'Seleccione una opción', '', 'CATOLICA', '4', '1116264714', '1116272988', '1116272988', 'Padre', 1, 'Mañana', '2024-01-15 21:10:33'),
(191, 'DANNA ', 'MEJIA ZABALA', 'nanadanna1002@gmail.com', '3053809566', '1116078268', 'TI', '2014-05-10', 'VALLE DEL CAUCA', 'TULUA', '2021-08-09', 'VALLE DEL CAUCA', 'TULUA', 'TV', 'SIETE DE AGOSTO', ' Sanitas', 'O+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '3', '1116242677', '94392986', '1116242677', 'Madre', 5, 'Mañana', '2024-01-15 21:36:20'),
(192, 'NOAH ', 'GOMEZ VELEZ', 'DANIELAVELEZROA@GMAIL.COM', '3168674770', '1116084072', 'NUIP', '2021-02-01', 'VALLE DEL CAUCA', 'TULUA', '2021-02-04', 'VALLE DEL CAUCA', 'TULUA', 'CR 49B # 14B 32', 'LAS ACACIAS', ' Sanitas', 'O+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '3', '1122138209', '1116271276', '1122138209', 'Madre', 9, 'Tarde', '2024-01-15 22:24:08'),
(193, 'MARIANA', 'CASTAÑO DOMINGUEZ', 'TANIAVDOMINGUEZ@HOTMAIL.COM', '3126002034', '1117357958', 'TI', '2015-04-16', 'VALLE DEL CAUCA', 'TULUA', '2022-05-17', 'VALLE DEL CAUCA', 'TULUA', 'CR 25A # 13B17', 'LA GRACIELA', 'DISAN (Sanidad Policia Nacional)', 'A+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '4', '1061765683', '1116722383', '1061765683', 'Madre', 4, 'Mañana', '2024-01-16 13:22:48'),
(194, 'NICOLE', 'ALMEIDA ROMERO', 'CLAU_2977@HOTMAIL.COM', '3104220826', '1089388532', 'TI', '2014-09-17', 'RISARALDA', 'PEREIRA', '2021-10-21', 'RISARALDA', 'PEREIRA', 'N/A', 'PORTALES DE RIO PAILA', ' Compensar', 'O+', 'Femenino', 'A4', 'NO', '', 'CATOLICA', '3', '24687550', '1', '24687550', 'Madre', 4, 'Mañana', '2024-01-16 14:43:36'),
(195, 'LOREN SOFIA', 'MONTOYA PEÑA', 'ROXITA@HOTMAI.ES', '3153775349', '1115463196', 'NUIP', '2017-12-30', 'VALLE DEL CAUCA', 'BUENAVENTURA', '2018-01-03', 'VALLE DEL CAUCA', 'BUENAVENTURA', 'CL 22 # 22 22', 'PALOBONITO', 'DISAN (Sanidad Policia Nacional)', 'O+', 'Femenino', 'NA', 'NO', '', 'CRISTIANA', '4', '1111798127', '1112103578', '1111798127', 'Madre', 6, 'Tarde', '2024-01-16 16:43:06'),
(196, 'JUAN CAMILO', 'ROJAS SANCHEZ', 'NA@GMAIL.COM', '3174201763', '1117034707', 'NUIP', '2020-06-19', 'VALLE DEL CAUCA', 'TULUA', '2020-06-30', 'VALLE DEL CAUCA', 'TULUA', 'CR 23A # 4 28', 'ALAMEDA', ' S.O.S. Servicio Occidental de Salud S.A.', 'A+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '4', '1116239545', '10496123', '1116239545', 'Madre', 9, 'Tarde', '2024-01-16 21:27:38'),
(197, 'ANTONELLA', 'SOLIS MORENO', 'NA@GMAIL.COM', '3203250953', '1117033343', 'NUIP', '2018-08-16', 'VALLE DEL CAUCA', 'TULUA', '2018-08-21', 'VALLE DEL CAUCA', 'TULUA', 'CR 24A #4A 03', 'ALAMEDA', ' Sanitas', 'O+', 'Femenino', 'C1', 'SI', 'TRASTORNO DEL ESPECTRO AUTISTA ', 'CATOLICA', '3', '1116252509', '94390412', '1116252509', 'Madre', 11, 'Mañana', '2024-01-16 22:33:17'),
(198, 'MARTIN SAMUEL', 'MANRIQUE MIRANDA', 'NA@GMAIL.COM', '3175493665', '1123116825', 'NUIP', '2019-03-02', 'VALLE DEL CAUCA', 'TULUA', '2019-04-08', 'VALLE DEL CAUCA', 'TULUA', 'CL 15 # 3 63', 'PORTALES DE SAN FELIPE', ' Famisanar', 'O+', 'Masculino', 'B3', 'NO', '', 'CATOLICA', '4', '30946547', '86036141', '30946547', 'Madre', 11, 'Mañana', '2024-01-17 19:41:22'),
(199, 'JONATHAN ALEXANDER', 'GUARIN GIL', 'NA@GMAIL.COM', '3182321330', '1117357873', 'TI', '2015-02-27', 'VALLE DEL CAUCA', 'TULUA', '2022-02-28', 'VALLE DEL CAUCA', 'TULUA', 'MZ O CASA 8', 'URBANIZACION LA PAZ', ' Nueva E.P.S.', 'O-', 'Masculino', 'B2', 'SI', 'SINDROME DOWN', 'C', '3', '29876904', '1116252372', '29876904', 'Madre', 6, 'Tarde', '2024-01-17 20:15:13'),
(200, 'MATHIAS', 'RAMIREZ OSORIO', 'D_CARAMELO@HOTMAIL.COM', '3117023553', '1117033059', 'NUIP', '2018-03-11', 'VALLE DEL CAUCA', 'TULUA', '2018-03-13', 'VALLE DEL CAUCA', 'TULUA', 'CR 4 # 19A 03', 'GUAYACANES', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Masculino', 'B3', 'SI', 'AUTISMO', 'CATOLICA', '3', '66682936', '1', '66682936', 'Madre', 11, 'Mañana', '2024-01-17 22:11:26'),
(201, 'BENJAMIN', 'QUIÑONEZ MURILLO', 'MONICAJARITZA@GMAIL.COM', '3146740742', '1116083754', 'NUIP', '2019-09-24', 'VALLE DEL CAUCA', 'TULUA', '2020-08-12', 'VALLE DEL CAUCA', 'TULUA', 'CR 4A # 22 21', 'SAMAN DEL NORTE', ' Nueva E.P.S.', 'O+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '3', '1116255655', '1116245274', '1116255655', 'Madre', 10, 'Tarde', '2024-01-18 12:58:39'),
(202, 'THALIANA', 'LOZANO POSSO', 'ANGIEMELISSA.97@HOTMAIL.COM', '3188864923', '1117357940', 'TI', '2015-04-01', 'VALLE DEL CAUCA', 'TULUA', '2023-02-07', 'VALLE DEL CAUCA', 'TULUA', 'CJ MATE # 27-6', 'AGUACLARA', 'Emssanar', 'A+', 'Femenino', 'A3', 'NO', '', 'CATOLICA', '4', '1116276074', '1', '1116276074', 'Madre', 4, 'Mañana', '2024-01-18 20:04:55'),
(203, 'ISABELLA', 'LONDOÑO CELADA', 'ISAOSABELLA@GMAIL.COM', '3177702704', '1116078578', 'NUIP', '2014-10-18', 'VALLE DEL CAUCA', 'TULUA', '2014-10-30', 'VALLE DEL CAUCA', 'TULUA', 'CL 6 A # 25B - 40', 'SIETE DE AGOSTO', 'Emssanar', 'O+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '2', '1112107204', '1', '1112107204', 'Madre', 7, 'Tarde', '2024-01-18 20:25:45'),
(204, 'NATHALIE', 'DUQUE MORALES', 'JUANALEX2328@OUTLOOK.ES', '3178386867', '1117033933', 'NUIP', '2019-03-13', 'VALLE DEL CAUCA', 'TULUA', '2019-03-21', 'VALLE DEL CAUCA', 'TULUA', 'CR 17 # 2 19', 'TERCER MILENIO', ' S.O.S. Servicio Occidental de Salud S.A.', 'A+', 'Femenino', 'D5', 'NO', '', 'CATOLICA', '5', '1112101244', '9773093', '1112101244', 'Madre', 11, 'Mañana', '2024-01-18 22:17:03'),
(205, 'EMILY LUCIANA ', 'ARCOS MINDINERO', 'MA.ARCO22@HOTMAIL.COM', '3146369729', '1116084029', 'NUIP', '2021-01-06', 'VALLE DEL CAUCA', 'TULUA', '2021-08-20', 'VALLE DEL CAUCA', 'TULUA', 'CL 9 # 23 - 104', 'LA GRACIELA', ' Nueva E.P.S.', 'A+', 'Femenino', 'NA', 'NO', '', 'CRISTIANA', '3', '1116433651', '1112764823', '1116433651', 'Madre', 9, 'Tarde', '2024-01-19 20:37:41'),
(206, 'JUAN JOSE', 'GONZALEZ RUIZ', 'LEIDYJHOANNARUIZGIRALDO@GMAIL.COM79', '3016776362', '1116080957', 'NUIP', '2017-01-07', 'VALLE DEL CAUCA', 'TULUA', '2017-01-19', 'VALLE DEL CAUCA', 'TULUA', 'CR 23 # 14 27', 'MARACAIBO', 'Emssanar', 'O-', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '3', '1116280898', '1', '1116280898', 'Madre', 7, 'Tarde', '2024-01-22 22:06:19'),
(207, 'JERONIMO', 'GOMEZ LOZANO', 'NA@GMAIL.COM', '3147800739', '1117031132', 'TI', '2016-03-11', 'VALLE DEL CAUCA', 'TULUA', '2023-03-14', 'VALLE DEL CAUCA', 'TULUA', 'CL 6 # 19 08', 'SAN LUIS', ' Sanitas', 'B+', 'Masculino', 'B5', 'NO', '', 'CRISTIANA', '4', '31792571', '79946170', '31792571', 'Madre', 3, 'Mañana', '2024-01-22 22:20:31'),
(208, 'IAN STIVEN', 'MORALES VELOZA', 'IANSTI2017@GMAIL.COM', '3155090242', '1116081462', 'NUIP', '2017-09-07', 'VALLE DEL CAUCA', 'TULUA', '2018-04-23', 'VALLE DEL CAUCA', 'TULUA', 'MZ 16 CASA 38', 'BOSQUES DE MARACAIBO', 'Emssanar', 'A+', 'Masculino', 'C1', 'NO', '', 'CATOLICA', '5', '1006426017', '1116261652', '1006426017', 'Madre', 1, 'Mañana', '2024-01-23 15:15:05'),
(209, 'JERONIMO', 'LONDOÑO CORREA', 'NA@GMAIL.COM', '3167980117', '1117360453', 'NUIP', '2019-12-11', 'VALLE DEL CAUCA', 'TULUA', '2020-03-11', 'VALLE DEL CAUCA', 'TULUA', 'CL 8 #17 100', 'FLOR DE LA CAMPANA', ' Nueva E.P.S.', 'O-', 'Masculino', 'A3', 'NO', '', 'CATOLICA', '6', '1116248674', '1112101782', '1116248674', 'Madre', 10, 'Tarde', '2024-01-23 16:42:07'),
(210, 'MATEO', 'CORRALES GIRALDO', 'NA@GMAIL.COM', '3016378794', '1117359327', 'NUIP', '2017-09-24', 'VALLE DEL CAUCA', 'TULUA', '2017-09-26', 'VALLE DEL CAUCA', 'TULUA', 'MZ 16 CASA 40', 'BOSQUES DE MARACAIBO', ' S.O.S. Servicio Occidental de Salud S.A.', 'A+', 'Masculino', 'A5', 'NO', '', 'CATOLICA', '2', '1116249439', '94150848', '1116249439', 'Madre', 6, 'Tarde', '2024-01-23 21:07:45'),
(211, 'DULCE MARIA', 'MILLAN GRAJALES', 'NA@GMAIL.COM', '3113142385', '1112304620', 'NUIP', '2020-05-15', 'VALLE DEL CAUCA', 'TULUA', '2022-06-07', 'VALLE DEL CAUCA', 'TULUA', 'CL 3C # 22 58', 'SAMAN DEL NORTE', ' Nueva E.P.S.', 'B+', 'Femenino', 'C2', 'NO', '', 'CATOLICA', '3', '1116257183', '1116246150', '1116246150', 'Padre', 10, 'Tarde', '2024-01-23 22:01:17'),
(212, 'MARIA JOSE', 'GONZALEZ LARGO', 'NA@GMAIL.COM', '3104907192', '1116082845', 'NUIP', '2019-07-20', 'VALLE DEL CAUCA', 'TULUA', '2024-01-21', 'VALLE DEL CAUCA', 'TULUA', 'CR 24 # 5 22', 'ALAMEDA', 'Emssanar', 'B+', 'Femenino', 'A2', 'NO', '', 'CATOLICA', '3', '1006465980', '1', '1116270922', 'Tio', 10, 'Tarde', '2024-01-23 22:30:19'),
(213, 'GABRIELA ', 'ALAYON TORRES', 'NA@GMAIL.COM', '3183211222', '1116083191', 'NUIP', '2020-01-02', 'VALLE DEL CAUCA', 'TULUA', '2020-01-08', 'VALLE DEL CAUCA', 'TULUA', 'MZ 66 CASA 30', 'BOSQUES DE MARACAIBO', 'Emssanar', 'O+', 'Femenino', 'A2', 'NO', '', 'CATOLICA', '3', '1116261554', '1112100400', '1112100400', 'Padre', 10, 'Tarde', '2024-01-24 17:03:04'),
(214, 'JOEL DAVID', 'DUQUE ARCE', 'NA@GMAIL.COM', '3006415760', '1117032732', 'NUIP', '2017-09-09', 'VALLE DEL CAUCA', 'TULUA', '2017-09-16', 'VALLE DEL CAUCA', 'TULUA', 'MZ 64 CASA 25', 'BOSQUES DE MARACAIBO', 'DISAN (Sanidad Policia Nacional)', 'O+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '2', '38793255', '11444792', '38793255', 'Madre', 6, 'Tarde', '2024-01-24 17:39:10'),
(215, 'MATHIAS', 'LOPEZ AGUDELO', 'gl6791877@gmail.com', '3185338337', '1116083037', 'NUIP', '2019-10-30', 'VALLE DEL CAUCA', 'TULUÁ', '2019-11-01', 'VALLE DEL CAUCA', 'TULUA', 'CL 3B # 24A 66', 'PORTALES DEL RIO', ' Nueva E.P.S.', 'O+', 'Masculino', 'B3', 'NO', '', 'CATOLICA', '3', '31794054', '1116247657', '31794054', 'Madre', 10, 'Tarde', '2024-01-26 15:09:41'),
(216, 'JUAN FELIPE', 'ESPITIA GUERERO', 'NA@GMAIL.COM', '3188424395', '1117032714', 'NUIP', '2017-09-10', 'VALLE DEL CAUCA', 'TULUA', '2017-09-11', 'VALLE DEL CAUCA', 'TULUA', 'CL 10 # 28 21', 'ALAMEDA', ' Sanitas', 'A+', 'Masculino', 'NA', 'NO', '', 'CATOLICA', '4', '31791579', '94367651', '31791579', 'Madre', 6, 'Tarde', '2024-01-26 15:45:23'),
(217, 'DULCE MARIA', 'ACEVEDO TUSARMA', 'NA@GMAIL.COM', '3103784368', '1116287179', 'NUIP', '2021-05-08', 'VALLE DEL CAUCA', 'TULUA', '2021-05-13', 'VALLE DEL CAUCA', 'TULUA', 'CR 3 # 14 04', 'VILLA LILIANA', 'Emssanar', 'O+', 'Masculino', 'A2', 'NO', '', 'C', '4', '1116446896', '1116256187', '1116446896', 'Madre', 9, 'Tarde', '2024-01-26 16:44:42'),
(218, 'MARIANA', 'VELASQUEZ ACEVEDO', 'NA@GMAIL.COM', '3156231721', '1117356895', 'TI', '2013-07-05', 'VALLE DEL CAUCA', 'TULUA', '2021-08-12', 'VALLE DEL CAUCA', 'ANDALUCIA', 'CR 10 # 25B 08', 'MARANDUA', 'Emssanar', 'Seleccione una opción', 'Femenino', 'A2', 'NO', '', 'CATOLICA', '4', '1116251158', '6446660', '1116251158', 'Madre', 5, 'Mañana', '2024-01-26 20:26:08'),
(219, 'ASLY', 'ARIAS HENAO', 'NA@HOTMAIL.COM', '3188540772', '1117360833', 'NUIP', '2020-09-04', 'VALLE DEL CAUCA', 'TULUÁ', '2020-09-10', 'VALLE DEL CAUCA', 'TULUÁ', 'CL 22 # 24 63', 'PALOBONITO', ' Nueva E.P.S.', 'O+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '4', '1116260031', '1116232442', '1116260031', 'Madre', 9, 'Tarde', '2024-01-29 12:42:17'),
(220, 'EMMANUEL', 'TORO OCORO', 'NA@HOTMAIL.COM', '3207108404', '1117028384', 'TI', '2013-12-12', 'VALLE DEL CAUCA', 'TULUÁ', '2021-01-14', 'VALLE DEL CAUCA', 'TULUÁ', 'CL 4B # 24A – 19', 'ALAMEDA', 'DISAN (Sanidad Policia Nacional)', 'A+', 'Seleccione una opción', 'N/A', 'NO', '', 'CATOLICA', '3', '29663277', '16360467', '29663277', 'Madre', 5, 'Mañana', '2024-01-29 13:22:38'),
(221, 'JANNA CELESTE', 'GARZON ARCILA', 'NA@GMAIL.COM', '3164037882', '1117035088', 'NUIP', '2021-01-23', 'VALLE DEL CAUCA', 'TULUA', '2021-01-27', 'VALLE DEL CAUCA', 'TULUA', 'CL 5A # 22A 03', 'INTERNACIONAL', 'Emssanar', 'O+', 'Femenino', 'B3', 'NO', '', 'CATOLICA', '4', '1112101792', '16365307', '1112101792', 'Abuelo', 9, 'Tarde', '2024-01-29 15:38:11'),
(223, 'NICOLAS', 'BENAVIDES ROSERO', 'NA@HOTMAIL.COM', '3102805498', '1124868361', 'NUIP', '2018-10-29', 'PUTUMAYO', 'MOCOA', '2018-10-28', 'PUTUMAYO', 'MOCOA', 'CL 1 # 24 84 ', 'PORTALES DEL RIO', 'DISAN (Sanidad Policia Nacional)', 'O+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '4', '1122724027', '1116252982', '1122724027', 'Madre', 17, 'Tarde', '2024-01-29 16:09:52'),
(224, 'EMILIANO', 'MAYA VERGARA', 'VALEVERGARA997@GMAIL.COM', '3127486707', '1113043589', 'NUIP', '2021-03-27', 'VALLE DEL CAUCA', 'TULUA', '2021-03-05', 'VALLE DEL CAUCA', 'BUGALAGRANDE', 'MZ 53 C 4 ', 'BOSQUES DE MARACAIBO', ' Nueva E.P.S.', 'AB+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '3', '1113041828', '1113041205', '1113041828', 'Madre', 9, 'Tarde', '2024-01-29 21:15:36'),
(225, 'GABRIELA', 'DUQUE CARDONA', 'NA@HOTMAIL.COM', '3188540772', '1117030365', 'TI', '2015-06-30', 'VALLE DEL CAUCA', 'TULUÁ', '2022-07-08', 'VALLE DEL CAUCA', 'TULUÁ', 'MZ K LOTE 5 CASA 2', 'SAN FRANCISCO', 'Emssanar', 'O+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '4', '38796625', '94473809', '38796625', 'Madre', 4, 'Mañana', '2024-01-30 15:13:26'),
(226, 'MARIA CAMILA', 'RENTERIA GUZMAN', 'NA@HOTMAIL.COM', '3015439842', '1116081536', 'NUIP', '2017-10-16', 'VALLE DEL CAUCA', 'TULUÁ', '2017-10-18', 'VALLE DEL CAUCA', 'TULUÁ', 'CR 2 # 20 18', 'FARFAN', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Seleccione una opción', 'N/A', 'NO', '', 'CATOLICA', '3', '1098774948', '1', '1098774948', 'Madre', 1, 'Mañana', '2024-01-31 21:08:19'),
(227, 'ALVARO JAVIER', 'TOBON GONZALEZ', 'jawei007.jt@gmail.com', '3222336537', '1116287083', 'NUIP', '2017-11-13', 'VALLE DEL CAUCA', 'TULUÁ', '2021-03-08', 'VALLE DEL CAUCA', 'TULUÁ', 'CL 4B # 21 10', 'SAMAN DEL NORTE', ' Nueva E.P.S.', 'A+', 'Masculino', 'N/A', 'SI', 'TEA', 'CATOLICA', '2', '1', '1116239112', '21945177', 'Abuelo', 1, 'Mañana', '2024-01-31 22:57:01'),
(228, 'EMILY', 'MARULANDA GOMEZ', 'NA@HOTMAIL.COM', '3186924505', '1116081261', 'NUIP', '2017-05-20', 'VALLE DEL CAUCA', 'TULUÁ', '2017-06-01', 'VALLE DEL CAUCA', 'TULUÁ', 'CR 25C # 5A 11', 'SIETE DE AGOSTO', 'Emssanar', 'O+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '3', '1116262335', '1116265937', '1116262335', 'Madre', 2, 'Mañana', '2024-02-06 14:13:41'),
(229, 'NINA SOFIA ', 'FAJARDO REYES', 'NA@HOTMAIL.COM', '3146106040', '1109387538', 'TI', '2014-07-16', 'VALLE DEL CAUCA', 'TULUÁ', '2022-04-27', 'VALLE DEL CAUCA', 'TULUÁ', 'CR 21 # 5B 77', 'SANTA INES DE COMFAMILIAR', 'Sanidad Militar', 'B+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '4', '1007650241', '1086134282', '1007650241', 'Madre', 4, 'Mañana', '2024-02-02 16:14:40'),
(230, 'ANTHONY ', 'HERRERA SAENZ', 'saaenz14@gmail.com', '3148165017', '1117034118', 'NUIP', '2019-06-15', 'VALLE DEL CAUCA', 'TULUÁ', '2019-06-17', 'VALLE DEL CAUCA', 'TULUÁ', 'CL 19 # 15A 05', 'LOS OLMOS', ' Famisanar', 'A+', 'Masculino', 'N/A', 'NO', '', 'CRISTIANOS ', '2', '1116280053', '1088294461', '1116273637', 'Madre', 10, 'Tarde', '2024-02-06 13:36:21'),
(231, 'GUADALUPE', 'RIVERA COLORADO', 'andres-1312@hotmail.com', '3188540772', '1117360586', 'NUIP', '2020-03-06', 'VALLE DEL CAUCA', 'TULUÁ', '2020-03-13', 'VALLE DEL CAUCA', 'TULUÁ', 'MZ 55 CASA 29', 'BOSQUES DE MARACAIBO', ' Nueva E.P.S.', 'O+', 'Femenino', 'N/A', 'NO', '', 'CRISTIANOS ', '3', '1116275486', '1116265743', '1116265743', 'Padre', 10, 'Tarde', '2024-02-06 13:53:13'),
(232, 'ANA SOFIA', 'GONZALEZ BEDOYA', 'NA@HOTMAIL.COM', '3158841819', '1117029716', 'NUIP', '2014-12-18', 'VALLE DEL CAUCA', 'TULUÁ', '2014-12-22', 'VALLE DEL CAUCA', 'TULUÁ', 'MZ 40 CASA 19', 'BOSQUES DE MARACAIBO', ' Sanitas', 'A+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '3', '31790433', '2336627', '31790433', 'Madre', 4, 'Mañana', '2024-02-06 15:22:09'),
(233, 'ANGELICA ANAI', 'GONZALEZ GAVIRIA', 'NA@HOTMAIL.COM', '3108281770', '1116284572', 'NUIP', '2017-12-08', 'VALLE DEL CAUCA', 'TULUÁ', '2017-12-26', 'VALLE DEL CAUCA', 'TULUÁ', 'CL 11 # 23 71', 'LA GRACIELA', 'Emssanar', 'O-', 'Femenino', 'N/A', 'NO', '', 'CRISTIANOS ', '4', '29973504', '1', '29973504', 'Madre', 6, 'Tarde', '2024-02-07 13:09:52'),
(234, 'HELLEN GUADALUPE', 'SUAREZ OSPINA', 'NA@HOTMAIL.COM', '3187587415', '1117359213', 'NUIP', '2017-07-03', 'VALLE DEL CAUCA', 'TULUÁ', '2017-07-12', 'VALLE DEL CAUCA', 'TULUÁ', 'LAS VEGAS LOTE 26', 'SAN ANTONIO', ' Sanitas', 'O+', 'Seleccione una opción', 'N/A', 'Seleccione una opción', '', 'CATOLICA', '4', '111281784', '1116270441', '111281784', 'Madre', 6, 'Tarde', '2024-02-07 15:14:48'),
(235, 'ALISSON CAMILA', 'MORENO GARCIA', 'NA@HOTMAIL.COM', '3165469063', '1117029703', 'NUIP', '2014-12-11', 'VALLE DEL CAUCA', 'TULUÁ', '2014-12-12', 'VALLE DEL CAUCA', 'TULUÁ', 'CR 9A # 7A 14', 'LA INDEPENDENCIA', ' Sanitas', 'O+', 'Femenino', 'C2', 'NO', '', 'CATOLICA', '3', '38790483', '1116236899', '38790483', 'Madre', 3, 'Mañana', '2024-02-07 15:30:37'),
(236, 'JOSE FERNANDO', 'GONZALEZ LONDOÑO', 'NA@HOTMAIL.COM', '3209247407', '1114392807', 'NUIP', '2020-08-05', 'VALLE DEL CAUCA', 'TULUÁ', '2020-08-24', 'VALLE DEL CAUCA', 'TULUÁ', 'TZ 20 # 4A 32', 'SAMAN DEL NORTE', ' Nueva E.P.S.', 'A+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '3', '1006492046', '1', '1006492046', 'Madre', 9, 'Tarde', '2024-02-07 18:06:47'),
(237, 'SAMUEL FELIPE', 'VASQUEZ VARGAS', 'NA@HOTMAIL.COM', '3184065121', '1116082721', 'NUIP', '2019-05-16', 'VALLE DEL CAUCA', 'TULUÁ', '2019-05-28', 'VALLE DEL CAUCA', 'TULUÁ', 'CR 8OESTE # 25 56', 'LAS NIEVES', ' Nueva E.P.S.', 'A+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '4', '1116264010', '14799746', '1116264010', 'Madre', 17, 'Tarde', '2024-02-07 18:36:40'),
(238, 'JULIANA ', 'AHUMADA LONDOÑO', 'NA@HOTMAIL.COM', '3154270189', '1117032003', 'NUIP', '2017-01-12', 'VALLE DEL CAUCA', 'TULUÁ', '2017-01-18', 'VALLE DEL CAUCA', 'TULUÁ', 'CR 24A # 15 63', 'MARACAIBO', ' Compensar', 'B+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '9', '1042425212', '1140814042', '1042425212', 'Madre', 2, 'Mañana', '2024-02-07 18:44:28'),
(239, 'JUAN DIEGO', 'GONZALEZ VARELA', 'NA@HOTMAIL.COM', '3158808105 ', '1117031842', 'NUIP', '2016-11-12', 'VALLE DEL CAUCA', 'TULUÁ', '2016-11-17', 'VALLE DEL CAUCA', 'TULUÁ', 'CL 21 # 1OESTE 09', 'NUEVO FARFAN', ' S.O.S. Servicio Occidental de Salud S.A.', 'A+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '4', '1112299983', '1112761394', '1112299983', 'Madre', 2, 'Mañana', '2024-02-07 19:04:28'),
(240, 'VALENTINA', 'ACOSTA RIVERA', 'NA@HOTMAIL.COM', '3054043102', '1116083836', 'NUIP', '2020-09-10', 'VALLE DEL CAUCA', 'TULUÁ', '2020-09-11', 'VALLE DEL CAUCA', 'TULUÁ', 'CL 7A # 22C 20', 'VILLA COLOMBIA', ' Sanitas', 'O+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '4', '1116236151', '16075623', '1116236151', 'Madre', 9, 'Tarde', '2024-02-07 19:43:42'),
(241, 'ERICK DAVID', 'PEREZ OSORIO', 'NA@HOTMAIL.COM', '3188540772', '1117360334', 'NUIP', '2019-07-18', 'VALLE DEL CAUCA', 'TULUÁ', '2019-08-01', 'VALLE DEL CAUCA', 'TULUÁ', 'CL 4ª # 23 – 04 ', 'EL PALMAR', 'Sanidad Militar', 'B+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '4', '1116236064', '9859369', '1116236064', 'Madre', 11, 'Mañana', '2024-02-07 20:02:40'),
(242, 'CHRISTIAN DAVID', 'BEJARANO ESCOBAR', 'NA@HOTMAIL.COM', '3188540772', '1117358550', 'NUIP', '2016-02-04', 'VALLE DEL CAUCA', 'TULUÁ', '2016-03-31', 'VALLE DEL CAUCA', 'TULUÁ', 'CL 6 # 19 30', 'SAN LUIS', 'Emssanar', 'O+', 'Masculino', 'N/A', 'NO', '', 'CATOLICA', '5', '1', '1116255836', '1116255836', 'Padre', 7, 'Tarde', '2024-02-08 19:58:28'),
(243, 'SANTIAGO', 'MORENO VICTORIA', 'ANAMARVIC217@GMAIL.COM', '3016756581', '1117357169', 'TI', '2013-12-22', 'VALLE DEL CAUCA', 'TULUA', '2021-02-15', 'VALLE DEL CAUCA', 'tulua', 'CALLE 5A # 22 21', 'SAMAN DEL NORTE', ' Nueva E.P.S.', 'O+', 'Masculino', 'C1', 'NO', '', 'CATOLICA', '4', '1116277114', '1116270208', '1116277114', 'Madre', 5, 'Mañana', '2024-02-16 21:06:05'),
(244, 'LAURA SOFIA', 'MARIN ZAPATA', 'CELESTE97MARIN@ICLOUD.COM', '3126588249', '1117027882', 'TI', '2013-07-21', 'VALLE DEL CAUCA', 'TULUA', '2021-08-25', 'VALLE DEL CAUCA', 'tulua', 'CALLE 16 # 1 29', 'VILLA LILIANA', ' Nueva E.P.S.', 'O+', 'Femenino', 'NA', 'NO', '', 'CATOLICA', '4', '1116277782', '1', '1116277782', 'Madre', 5, 'Mañana', '2024-02-16 21:15:49'),
(245, 'MAURICIO ', 'MORENO VICTORIA', 'ANAMARVIC217@GMAIL.COM', '3016756581', '1117358125', 'NUIP', '2015-07-25', 'VALLE DEL CAUCA', 'TULUA', '2015-07-31', 'VALLE DEL CAUCA', 'TULUA', 'CALLE 5A # 22 21', 'SAMAN DEL NORTE', ' Nueva E.P.S.', 'O+', 'Masculino', 'C1', 'NO', '', 'CATOLICA', '4', '1116277114', '1116270208', '1116277114', 'Madre', 3, 'Mañana', '2024-02-16 21:41:22'),
(246, 'ALAHIA', 'RIVAS HERRERA', 'NA@HOTMAIL.COM', '3213102728', '1116083896', 'NUIP', '2020-10-14', 'VALLE DEL CAUCA', 'TULUÁ', '2020-10-19', 'VALLE DEL CAUCA', 'TULUÁ', 'Cl 8ª # 28ª – 44', 'SANTA RITA DEL RIO', 'Emssanar', 'A+', 'Femenino', 'B4', 'NO', '', 'CATOLICA', '6', '43449394', '1', '43449394', 'Abuelo', 9, 'Tarde', '2024-02-21 16:19:13'),
(247, 'JEAN PAUL', 'SARRIA MERCADO', 'NA@HOTMAIL.COM', '3146052729', '1117359856', 'NUIP', '2018-07-09', 'VALLE DEL CAUCA', 'TULUÁ', '2018-07-13', 'VALLE DEL CAUCA', 'TULUÁ', 'BLOQUE E APTO 302', 'SAN LUIS', 'Asmet Salud EPS', 'B+', 'Masculino', 'A4', 'NO', '', 'CATOLICA', '2', '1007756664', '1', '1007756664', 'Madre', 6, 'Tarde', '2024-02-22 16:10:47'),
(248, 'JUAN JOSE', 'JARAMILLO CUELLAR', 'NA@HOTMAIL.COM', '3174974641', '1145733388', 'TI', '2015-09-12', 'VALLE DEL CAUCA', 'GARZON ', '2023-04-26', 'HUILA', 'TULUA', 'CR 28F # 4A 85', 'AGUACLARA', ' Sanitas', 'O+', 'Masculino', 'N/A', 'NO', '', 'GNOSIS', '2', '36294525', '1116255506', '1116255506', 'Padre', 3, 'Mañana', '2024-03-12 19:38:09'),
(249, 'EMMA', 'CORTES DOMINGUEZ ', 'NA@HOTMAIL.COM', '3156226566', '1089941714', 'NUIP', '2018-04-21', 'RISARALDA', 'PEREIRA', '2018-04-30', 'RISARALDA', 'PEREIRA', 'CALLE 22 # 30 27', 'CESPEDES', ' S.O.S. Servicio Occidental de Salud S.A.', 'O+', 'Femenino', 'N/A', 'NO', '', 'CATOLICA', '2', '1088335956', '1112104004', '1088335956', 'Madre', 1, 'Mañana', '2024-04-02 20:03:30'),
(250, 'SALOME', 'GARCIA RESTREPO', 'marcelarestrepovilla@hotmail.com', '3187308813', '1116082921', 'NUIP', '2019-08-19', 'VALLE DEL CAUCA', 'TULUÁ', '2019-10-10', 'VALLE DEL CAUCA', 'TULUÁ', 'CALLE 7A # 18 53', 'FLOR DE LA CAMPANA', 'Emssanar', 'O+', 'Femenino', 'A3', 'NO', '', 'CRISTIANOS ', '2', '1116245924', '1113788876', '1113788876', 'Padre', 10, 'Tarde', '2024-04-05 14:43:23'),
(251, 'SNEYDER', 'ALMEIDA RIVERA', 'camilajohan1801@gmail.com', '3158571720', '1116083600', 'NUIP', '2020-06-22', 'VALLE DEL CAUCA', 'TULUÁ', '2020-06-25', 'VALLE DEL CAUCA', 'TULUÁ', 'MANZANA 12 CASA 36', 'BOSQUES DE MARACAIBO', ' EPS Sura', 'O+', 'Masculino', 'N/A', 'Seleccione una opción', '', 'CRISTIANOS ', '4', '1116276034', '1', '1116276034', 'Madre', 9, 'Tarde', '2024-04-09 20:01:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrios`
--

DROP TABLE IF EXISTS `barrios`;
CREATE TABLE `barrios` (
  `id` int(3) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `barrios`
--

INSERT INTO `barrios` (`id`, `nombre`) VALUES
(1, 'SIETE DE AGOSTO'),
(2, 'ALAMEDA'),
(4, 'ALVERNIA'),
(5, 'ASOAGRIN LA SANTA CRUZ'),
(6, 'ASOAGRIN FARFAN'),
(7, 'AVENIDA CALI'),
(8, 'BOLIVAR'),
(9, 'BOSQUES DE MARACAIBO'),
(10, 'BRISAS DEL MORALES'),
(11, 'BUENOS AIRES'),
(12, 'CASAS HUERTAS'),
(13, 'CENTRO'),
(14, 'CESPEDES'),
(15, 'CHIMINANGOS'),
(16, 'C. CAMPESTRE Y LA LOMA'),
(17, 'COMFAMILIAR'),
(18, 'C. C. DEL VALLE'),
(19, 'CR. LUSITANIA'),
(20, 'DEPARTAMENTAL'),
(21, 'DIABLOS ROJOS I'),
(23, 'DOCE DE OCTUBRE'),
(24, 'EL BOSQUE'),
(25, 'EL BOSQUECITO'),
(26, 'EL CONDOR'),
(27, 'EL CONDOR II'),
(28, 'EL DESCANSO'),
(29, 'EL DORADO'),
(30, 'EL JARDIN'),
(31, 'EL JAZMIN'),
(32, 'EL LIMONAR'),
(33, 'EL PALMAR'),
(34, 'EL PINAR'),
(35, 'EL PRINCIPE'),
(36, 'EL REFUGIO'),
(37, 'EL RETIRO'),
(38, 'ENTRE RIOS'),
(39, 'ESCOBAR'),
(40, 'ESTAMBUL'),
(41, 'FARFAN'),
(42, 'FATIMA'),
(43, 'FLOR DE LA CAMPANA'),
(44, 'FRANCISCANOS'),
(45, 'GUAYACANES'),
(46, 'HORIZONTE SANTA ISABEL'),
(47, 'INTERNACIONAL'),
(48, 'JORGE ELIECER GAITAN'),
(49, 'JOSE ANTONIO GALAN'),
(50, 'JUAN DE LEMUS Y AGUIRRE'),
(51, 'JUAN XXIII'),
(52, 'LA BASTILLA'),
(53, 'LA CAMPIÑA'),
(54, 'LA CEIBA'),
(55, 'LA ESPERANZA'),
(56, 'LA GRACIELA'),
(57, 'LA HERRADURA'),
(58, 'LA INDEPENDENCIA'),
(59, 'LA INMACULADA'),
(60, 'LA MERCED'),
(61, 'LA QUINTA'),
(62, 'LAS ACACIAS'),
(63, 'LAS AMERICAS'),
(64, 'LAS BRISAS'),
(65, 'LAS DELICIAS'),
(66, 'LAS NIEVES'),
(67, 'LAS OLAS'),
(68, 'LAS PALMAS'),
(70, 'LAURELES'),
(71, 'A. DE VIVIENDA LOS PINOS'),
(72, 'LOS TOLUES'),
(73, 'LUSITANIA'),
(74, 'MARACAIBO'),
(75, 'MARANDUA'),
(76, 'MIRAFLORES'),
(78, 'MORALITO'),
(79, 'MUNICIPAL'),
(80, 'NUEVO ALVERNIA'),
(81, 'NUEVO FARFAN'),
(82, 'NUEVO MORALES'),
(83, 'NUEVO PRINCIPE'),
(84, 'OLIMPICO'),
(85, 'PALOBONITO'),
(86, 'PANAMERICANO'),
(87, 'URBANIZACION PEÑARANDA'),
(88, 'PLAYAS'),
(89, 'POPULAR'),
(90, 'PORTALES DEL RIO'),
(92, 'PRADOS DEL NORTE'),
(93, 'PRIMERO DE MAYO'),
(94, 'PROGRESAR'),
(95, 'PUEBLO NUEVO'),
(96, 'QUINTAS DE SAN FELIPE'),
(97, 'RIOPAILA'),
(98, 'ROJAS'),
(99, 'RUBEN CRUZ VELEZ'),
(100, 'SAJONIA'),
(101, 'SALESIANO'),
(102, 'SAMAN DEL NORTE'),
(103, 'SAN ANTONIO'),
(104, 'SAN BENITO LA RIVERA'),
(105, 'SAN CARLOS'),
(106, 'SAN LUIS'),
(108, 'SAN PEDRO CLAVER'),
(109, 'SAN VICENTE DE PAUL'),
(110, 'SANTA INES DE COMFAMILIAR'),
(111, 'SANTA RITA DEL RIO'),
(114, 'SINTRA SAN CARLOS'),
(115, 'TERCER MILENIO'),
(116, 'TOMAS URIBE'),
(117, 'LA TRINIDAD'),
(118, 'EL LAGO'),
(119, 'EL LAGUITO'),
(120, 'PRINCIPITO'),
(121, 'LA VILLA'),
(122, 'LOMITAS'),
(123, 'PORTALES DE RIO PAILA'),
(126, 'LAS VERANERAS'),
(127, 'VICTORIA'),
(128, 'VILLA CAMPESTRE'),
(129, 'VILLA COLOMBIA'),
(130, 'VILLA DEL LAGO'),
(131, 'VILLA DEL RIO'),
(132, 'VILLA DEL SUR'),
(133, 'VILLA LILIANA'),
(134, 'VILLA NUEVA'),
(135, 'SIMON BOLIVAR'),
(136, 'SANTA LUCIA'),
(137, 'EL PORVENIR'),
(138, 'LA RIVERA'),
(139, 'AMERICANA DE VIVIENDA'),
(140, 'BELLO HORIZONTE'),
(141, 'LOS OLMOS'),
(142, '350 AÑOS'),
(143, 'URBANIZACION LA PAZ'),
(144, 'LA VARIANTE'),
(145, 'LA COLINA'),
(146, 'NUEVO FATIMA'),
(147, 'AGUACLARA'),
(148, 'CAMPOALEGRE'),
(149, 'TRES ESQUINAS'),
(150, 'PARQUE DE VERSALLES'),
(151, 'SAN FRANCISCO'),
(152, 'EL PARAISO'),
(153, 'PORTALES DE SAN FELIPE'),
(154, 'LA MARINA'),
(155, 'NARIÑO'),
(156, 'ARBOLEDAS DEL DARIEN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`) VALUES
(1, 'AMAZONAS'),
(2, 'ANTIOQUIA'),
(3, 'ARAUCA'),
(4, 'ARCHIPIELAGO DE SAN ANDRES'),
(5, 'ATLÁNTICO'),
(6, 'BOGOTÁ D.C.'),
(7, 'BOLIVAR'),
(8, 'BOYACÁ'),
(9, 'CALDAS'),
(10, 'CAQUETA'),
(11, 'CASANARE'),
(12, 'CAUCA'),
(13, 'CESAR'),
(14, 'CHOCO'),
(15, 'CORDOBA'),
(16, 'CUNDINAMARCA'),
(17, 'GUAINIA'),
(18, 'GUAVIARE'),
(19, 'HUILA'),
(20, 'LA GUAJIRA'),
(21, 'MAGDALENA'),
(22, 'META'),
(23, 'NARIÑO'),
(24, 'NORTE DE SANTANDER'),
(25, 'PUTUMAYO'),
(26, 'QUINDIO'),
(27, 'RISARALDA'),
(28, 'SANTANDER'),
(29, 'SUCRE'),
(30, 'TOLIMA'),
(31, 'VALLE DEL CAUCA'),
(32, 'VAUPES'),
(33, 'VICHADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eps`
--

DROP TABLE IF EXISTS `eps`;
CREATE TABLE `eps` (
  `codigo` varchar(6) NOT NULL,
  `nit` int(9) NOT NULL,
  `administradora` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eps`
--

INSERT INTO `eps` (`codigo`, `nit`, `administradora`, `descripcion`, `estado`) VALUES
('CCFC53', 860045904, 'Comfacundi - CCF de Cundinamarca', 'Comfacundi', 'Activo'),
('EAS016', 890904996, 'Empresas Públicas de Medellín Departamento Médico', ' Empresas Públicas de Medellín Departamento Médico', 'Activo'),
('EAS027', 800112806, 'Fondo de Pasivo Social de Ferrocarriles', ' Fondo de Ferrocarriles Nacionales de Colombia (EP', 'Activo'),
('EPS001', 830113831, 'Aliansalud EPS', ' Aliansalud EPS (Antes Colmédica)', 'Activo'),
('EPS002', 800130907, 'Salud Total S.A.', ' Salud Total', 'Activo'),
('EPS003', 800140949, 'Cafesalud EPS', ' Cafesalud', 'Activo'),
('EPS005', 800251440, 'E.P.S Sanitas', ' Sanitas', 'Activo'),
('EPS008', 860066942, 'Compensar Entidad Promotora de Salud', ' Compensar', 'Activo'),
('EPS010', 800088702, 'EPS Sura', ' EPS Sura', 'Activo'),
('EPS012', 890303093, 'Comfenalco Valle EPS', ' Comfenalco Valle', 'Activo'),
('EPS016', 805000427, 'Coomeva EPS', ' Coomeva', 'Activo'),
('EPS017', 830003564, 'Famisanar', ' Famisanar', 'Activo'),
('EPS018', 805001157, 'Servicio Occidental de Salud S.O.S. S.A.', ' S.O.S. Servicio Occidental de Salud S.A.', 'Activo'),
('EPS023', 830009783, 'Cruz Blanca S.A', ' Cruz Blanca', 'Activo'),
('EPS033', 830074184, 'Saludvida S.A EPS', ' Saludvida', 'Activo'),
('EPS037', 900156264, 'Nueva EPS', ' Nueva E.P.S.', 'Activo'),
('EPSC03', 2147483647, 'Cafesalud Entidad  Promotora de Salud S.A', 'Cafesalud- Movilidad', 'Activo'),
('EPSC22', 899999107, 'Entidad Administradora de Régimen Subsidiado Convi', '  Convida', 'Activo'),
('EPSC25', 891856000, 'Capresoca EPS', 'Capresoca', 'Activo'),
('EPSC34', 900298372, 'Capital Salud EPSS S.A.S.', 'Capital Salud', 'Activo'),
('MIN001', 900462447, 'Fondo de Solidaridad y Garantía Fosyga', ' Fosyga', 'Activo'),
('MIN002', 900462447, 'Fondo de Solidaridad y Garantía Fosyga', ' Fosyga Régimen de Excepción', 'Activo'),
('MIN003', 900462447, 'Fondo de Solidaridad y Garantía Fosyga', ' Fosyga Residente Exterior o Régimen Subsidiado', 'Activo'),
('SAN001', 1, 'DISAN (Sanidad Policia Nacional)', 'DISAN (Sanidad Policia Nacional)', 'Activo'),
('SAN002', 2, 'Sanidad Militar', 'Sanidad Militar', 'Activo'),
('SAN003', 0, '1111111', 'Emssanar', 'Activo'),
('SAN004', 0, '12345', 'Asmet Salud EPS', 'Activo'),
('SAN005', 123456, 'Confamdi', 'Confandi', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `especialidad` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `especialidad`, `fecha`) VALUES
(1, 'Informática', '2023-11-16 01:06:12'),
(2, 'Ciencias & Tecnologias', '2023-08-28 23:40:02'),
(3, 'Literatura', '2023-08-19 23:47:34'),
(4, 'Lenguas Extranjeras', '2023-11-16 01:05:56'),
(5, 'Matematicas Aplicadas', '2023-08-19 23:48:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

DROP TABLE IF EXISTS `grados`;
CREATE TABLE `grados` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `duracion` varchar(50) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id`, `descripcion`, `duracion`, `fecha`) VALUES
(1, 'Primero M', '1 Año', '2023-12-05 12:34:46'),
(2, 'Segundo M', '1 año', '2023-12-05 12:35:03'),
(3, 'Tercero M', '1 año', '2023-12-05 12:35:17'),
(4, 'Cuarto M', '1 año', '2023-12-05 12:35:55'),
(5, 'Quinto', '1 año', '2023-11-30 23:17:48'),
(6, 'Primero T', '1 año', '2023-12-05 12:35:26'),
(7, 'Segundo T', '1 año', '2023-12-05 12:35:36'),
(8, 'Casa Maternal', '1 año', '2023-11-30 23:18:15'),
(9, 'Prejardin', '1 año', '2023-11-30 23:18:22'),
(10, 'Jardin', '1 año', '2023-11-30 23:18:26'),
(11, 'Transición M', '1 año', '2023-12-05 12:36:07'),
(17, 'Transición T', '1 Año', '2023-12-05 12:37:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

DROP TABLE IF EXISTS `materias`;
CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `materia` varchar(100) NOT NULL,
  `id_profesor` int(11) NOT NULL,
  `per_ini` date NOT NULL,
  `per_fin` date NOT NULL,
  `id_grado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `materia`, `id_profesor`, `per_ini`, `per_fin`, `id_grado`, `fecha`) VALUES
(1, 'Matematicas', 4, '2023-08-19', '2023-09-01', 3, '2023-12-04 15:39:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

DROP TABLE IF EXISTS `paises`;
CREATE TABLE `paises` (
  `ID` int(3) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`ID`, `NOMBRE`) VALUES
(1, 'ALBANIA'),
(2, 'ALEMANIA'),
(3, 'ARABIA SAUDITA'),
(4, 'ARGENTINA'),
(5, 'AUSTRALIA'),
(6, 'AUSTRIA'),
(7, 'BANGLADESH'),
(8, 'BARBADOS'),
(9, 'BÉLGICA'),
(10, 'BELICE'),
(11, 'BOLIVIA'),
(12, 'BRASIL'),
(13, 'BULGARIA'),
(14, 'CAMBOYA'),
(15, 'CANADÁ'),
(16, 'CHILE'),
(17, 'CHINA'),
(18, 'CHIPRE'),
(19, 'COLOMBIA'),
(20, 'COREA DEL SUR'),
(21, 'COSTA DE MARFIL'),
(22, 'COSTA RICA'),
(23, 'CROACIA'),
(24, 'CUBA'),
(25, 'CURAZAO'),
(26, 'DINAMARCA'),
(27, 'ECUADOR'),
(28, 'EGIPTO'),
(29, 'EL SALVADOR'),
(30, 'EMIRATOS ÁRABES UNIDOS'),
(31, 'ESLOVAQUIA'),
(32, 'ESLOVENIA'),
(33, 'ESPAÑA'),
(34, 'EEUU'),
(35, 'ESTONIA'),
(36, 'FILIPINAS'),
(37, 'FINLANDIA'),
(38, 'FRANCIA'),
(39, 'GEORGIA'),
(40, 'GRECIA'),
(41, 'GUATEMALA'),
(42, 'GUYANA'),
(43, 'HAITÍ'),
(44, 'HONDURAS'),
(45, 'HONG KONG'),
(46, 'HUNGRÍA'),
(47, 'INDIA '),
(48, 'INDONESIA'),
(49, 'IRLANDA'),
(50, 'ISLANDIA'),
(51, 'ISRAEL'),
(52, 'ITALIA'),
(53, 'JAMAICA'),
(54, 'JAPÓN'),
(55, 'LETONIA'),
(56, 'LÍBANO'),
(57, 'LITUANIA'),
(58, 'LUXEMBURGO'),
(59, 'MADAGASCAR'),
(60, 'MALASIA'),
(61, 'MALTA'),
(62, 'MARRUECOS'),
(63, 'MAURITANIA'),
(64, 'MÉXICO'),
(65, 'MOLDAVIA'),
(66, 'MYANMAR'),
(67, 'NICARAGUA'),
(68, 'NORUEGA'),
(69, 'NUEVA ZELANDA'),
(70, 'PAÍSES BAJOS'),
(71, 'PAKISTÁN'),
(72, 'PARAGUAY'),
(73, 'PERÚ'),
(74, 'POLONIA'),
(75, 'PORTUGAL'),
(76, 'PUERTO RICO'),
(77, 'QATAR'),
(78, 'REINO UNIDO'),
(79, 'REPÚBLICA CHECA'),
(80, 'REPÚBLICA DE BELARÚS'),
(81, 'REPÚBLICA DOMINICANA'),
(82, 'RUMANIA'),
(83, 'RUSIA'),
(84, 'SERBIA'),
(85, 'SINGAPUR'),
(86, 'SRI LANKA'),
(87, 'SUDÁFRICA'),
(88, 'SUECIA'),
(89, 'SUIZA'),
(90, 'SURINAME'),
(91, 'TAILANDIA'),
(92, 'TRINIDAD Y TOBAGO'),
(93, 'TÚNEZ'),
(94, 'TURQUÍA'),
(95, 'UCRANIA'),
(96, 'URUGUAY'),
(97, 'VENEZUELA'),
(98, 'VIETNAM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Profesor'),
(3, 'Alumno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

DROP TABLE IF EXISTS `profesores`;
CREATE TABLE `profesores` (
  `id` int(11) NOT NULL,
  `cedula` varchar(100) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `curp` varchar(150) NOT NULL,
  `edad` varchar(50) NOT NULL,
  `fecha_na` date NOT NULL,
  `id_especialidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `cedula`, `nombres`, `apellidos`, `correo`, `curp`, `edad`, `fecha_na`, `id_especialidad`, `fecha`) VALUES
(4, '94477536', 'Carlos Alberto', 'Triana Vera', 'cavtriana@hotmail.com', '3142112214', '42', '1981-11-30', 1, '2023-12-04 15:34:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_rol` int(11) NOT NULL,
  `imagen` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `correo`, `password`, `fecha`, `id_rol`, `imagen`) VALUES
(5, 'Administrador', 'admin@gmail.com', '$2y$05$rSGStdVtYXAeIMxNwVR1suYBn4LT7zwImjLKvEMTT7Rxx1kKlCA8W', '2023-08-19 22:40:13', 1, ''),
(23, 'ctriana', 'cavtriana@hotmail.com', '$2y$05$NHN.nFxwlCZWyFrQHV1Mxu2jHoeK/LMgyw7TieB4DieCiq31dJEYO', '2023-12-04 15:20:59', 2, ''),
(24, 'Sarenas', 'sofiaarenasbustamante@gmail.com ', '$2y$05$MmmW5.qru8r7Wio8.zUWN.66rkSzkgTVdNtfzBzyBlJZiGJKTQuC.', '2023-12-01 17:23:19', 1, ''),
(25, 'Sgarcia', 'sarigar08@gmail.com ', '$2y$05$XTvr2phoX.bMMlZck0VjfOqZDRoI5acHqxUrKlX1RpL7KAQxfXMYC', '2023-12-01 17:24:15', 1, ''),
(26, 'Rhincapie', 'ruben@igocolombia.co ', '$2y$05$qp5zmZtATOhWFURNTkXLz.aNB44PbXW79uiAsgoVQTBRBTC3ZSiHm', '2023-12-01 17:24:49', 1, ''),
(27, 'Nsoza', 'colegiotalentos_@hotmail.com ', '$2y$05$rqoeExSrOfpVGhIJ1E2YGOYiFZGi.VwKuQ4riMl2gsbRJBNvKyHKO', '2023-12-01 17:25:40', 1, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acudientes`
--
ALTER TABLE `acudientes`
  ADD PRIMARY KEY (`documento`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `barrios`
--
ALTER TABLE `barrios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eps`
--
ALTER TABLE `eps`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
