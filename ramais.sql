-- Adminer 4.8.1 MySQL 10.4.24-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `aeroportos`;
CREATE TABLE `aeroportos` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `cod` varchar(25) NOT NULL,
  `cidade` varchar(25) NOT NULL,
  `uf` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `aeroportos` (`id`, `cod`, `cidade`, `uf`) VALUES
(1,	'PMW',	'Palmas',	'TO'),
(2,	'GYN',	'Goiania',	'GO'),
(3,	'SEDE',	'São Paulo',	'SP');

DROP TABLE IF EXISTS `ramais`;
CREATE TABLE `ramais` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `fk_aeroporto` int(12) NOT NULL,
  `numero_ramal` varchar(30) NOT NULL,
  `setor` varchar(30) NOT NULL,
  `nome` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_aeroporto` (`fk_aeroporto`),
  CONSTRAINT `ramais_ibfk_1` FOREIGN KEY (`fk_aeroporto`) REFERENCES `aeroportos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `ramais` (`id`, `fk_aeroporto`, `numero_ramal`, `setor`, `nome`) VALUES
(2,	1,	'3701',	'GERENCIA',	'JULIANO'),
(3,	1,	'3705',	'SUPERVISÃO ',	'EULAIR / ALEX'),
(4,	1,	'3708',	'AEROPORTO',	'FISCAL TPS'),
(5,	1,	'3715',	'AEROPORTO',	'FISC.PAT.1'),
(6,	1,	'3725',	'AEROPORTO',	'AUDITORIO'),
(7,	1,	'3726',	'AEROPORTO',	'SPE'),
(8,	1,	'3735',	'AEROPORTO',	'FISC.PAT.2'),
(9,	1,	'3736',	'AEROPORTO',	'SALA EMBARQUE'),
(10,	1,	'3739',	'AEROPORTO',	'MONITORAM.'),
(11,	1,	'3744',	'AEROPORTO',	'SCI OPERAC'),
(12,	1,	'3745',	'AEROPORTO',	'APH - EMERGÊNCIA'),
(13,	1,	'3746',	'AEROPORTO',	'SCI CHEFIA'),
(14,	1,	'3758',	'AEROPORTO',	'POSTO ACESSO'),
(15,	1,	'3759',	'SUPERVISÃO SPE',	'LEANDRO'),
(16,	1,	'3767',	'AEROPORTO',	'SECURITY SATA'),
(17,	1,	'3785',	'CREDECIAMENTO',	'WILLIAN / SDNEY'),
(18,	1,	'3814',	'ADM',	'ROGERSON / HELLOISA HELENA'),
(19,	1,	'3816',	'T.I',	'BRUNO CARVALHO'),
(20,	1,	'3820',	'OPERAÇÕES ',	'APOC'),
(21,	1,	'3821',	'T.I',	'ERALDO'),
(22,	1,	'3824',	'AEROPORTO',	'APOC'),
(23,	1,	'3841',	'ENG. ELETRICA',	'ARICLENES / MARCO'),
(24,	1,	'3843',	'AEROPORTO',	'GUARITA FISCAL'),
(25,	1,	'3853',	'ENG. CIVIL ',	'JOÃO  / GUILHERME'),
(26,	1,	'3857',	'SAFETY / QSSMA',	'BRUNO / MOYSES'),
(27,	1,	'4010',	'AEROPORTO',	'CAMP ANTEN'),
(28,	1,	'4011',	'AEROPORTO',	'INSPECAO'),
(29,	1,	'4016',	'AEROPORTO',	'SALA DE EMBARQUE'),
(30,	1,	'4023',	'AEROPORTO',	'SALA DESMB'),
(31,	1,	'4026',	'AEROPORTO',	'POSTO SEGU'),
(32,	1,	'4029',	'AEROPORTO',	'SALA EMBARQUE'),
(33,	1,	'4071',	'AEROPORTO',	'BALCAO-INFOR'),
(34,	1,	'3775',	'ANVISA',	'ANVISA'),
(35,	1,	'3778',	'ANVISA',	'ANVISA'),
(36,	1,	'3779',	'ANVISA',	'ANVISA'),
(37,	1,	'3714',	'CIA AEREA',	'LATAM'),
(38,	1,	'3727',	'CIA AEREA',	'TAM CARGO'),
(39,	1,	'3731',	'CIA AEREA',	'MANUTENÇÃO LATAM'),
(40,	1,	'3747',	'CIA AEREA',	'GERENC GOL'),
(41,	1,	'3751',	'CIA AEREA',	'GOL CUT'),
(42,	1,	'3761',	'CIA AEREA',	'LATAM LL'),
(43,	1,	'3772',	'CIA AEREA',	'TAM CARGAS'),
(44,	1,	'3783',	'CIA AEREA',	'LATAM'),
(45,	1,	'3794',	'CIA AEREA',	'GOL'),
(46,	1,	'3800',	'CIA AEREA',	'GOL'),
(47,	1,	'3803',	'CIA AEREA',	'GOL'),
(48,	1,	'3806',	'CIA AEREA',	'TAM CARGA'),
(49,	1,	'3813',	'CIA AEREA',	'LATAM'),
(50,	1,	'3844',	'CIA AEREA',	'TAM CARGAS'),
(51,	1,	'3871',	'CIA AEREA',	'AZUL'),
(52,	1,	'3872',	'CIA AEREA',	'AZUL'),
(53,	1,	'3713',	'LOJA',	'AERO ACAI'),
(54,	1,	'3865',	'LOJA',	'UNIDAS'),
(55,	1,	'4038',	'ELO',	'ELO 2'),
(56,	1,	'4039',	'ELO',	'ELO 3'),
(57,	1,	'4040',	'ELO',	'ELO 4'),
(58,	1,	'3740',	'POSTO',	'POSTO BR'),
(59,	1,	'3702',	'SEGURANÇA',	'PM-TO'),
(60,	1,	'3789',	'SEGURANÇA',	'GD - GRUPO DE DECISÃO'),
(61,	1,	'3791',	'SEGURANÇA',	'GA - GRUPO DE APOIO'),
(62,	1,	'3793',	'SEGURANÇA',	'GN - GRUPO DE NEGOCIAÇÃO'),
(65,	1,	'4045',	'SEGURANÇA',	'PAFAVIDA'),
(66,	1,	'4046',	'SEGURANÇA',	'PAFAVIDA'),
(67,	1,	'4049',	'SEGURANÇA',	'PAFAVIDA'),
(68,	1,	'4050',	'SEGURANÇA',	'PAFAVIDA'),
(69,	1,	'4051',	'SEGURANÇA',	'PAFAVIDA'),
(70,	1,	'4053',	'SEGURANÇA',	'PAFAVIDA'),
(71,	1,	'4054',	'SEGURANÇA',	'PAFAVIDA'),
(72,	1,	'4055',	'SEGURANÇA',	'PAFAVIDA'),
(73,	1,	'4056',	'SEGURANÇA',	'PAFAVIDA'),
(74,	1,	'3809',	'TERCEIRIZADA',	'INSOLO'),
(75,	1,	'3827',	'TERCEIRIZADA',	'IC SUPPLY'),
(76,	1,	'3838',	'TERCEIRIZADA',	'RCS'),
(77,	1,	'3868',	'TERCEIRIZADA',	'ESTACIONAMENTO'),
(78,	1,	'3899',	'TERCEIRIZADA',	'JUSTIZ (MARIA)'),
(79,	1,	'3707',	'NAVBRASIL',	'GERENTE NAV'),
(80,	1,	'3716',	'NAVBRASIL',	'APOIO NAV'),
(81,	1,	'3719',	'NAVBRASIL',	'APP PJ'),
(82,	1,	'3732',	'NAVBRASIL',	'TWR ADM'),
(83,	1,	'3733',	'NAVBRASIL',	'TWR PJ'),
(84,	1,	'3734',	'NAVBRASIL',	'TI NAVBRASIL'),
(85,	1,	'3750',	'NAVBRASIL',	'AIS NAV'),
(86,	1,	'3753',	'NAVBRASIL',	'JOSE MNT NAV'),
(87,	1,	'3754',	'NAVBRASIL',	'TEO MNT NAV'),
(88,	1,	'3755',	'NAVBRASIL',	'METEORO'),
(89,	1,	'3756',	'NAVBRASIL',	'AUTO AT AIS'),
(90,	1,	'3811',	'NAVBRASIL',	'ARTHUR NAV'),
(91,	1,	'3812',	'NAVBRASIL',	'WALMERI MNT'),
(92,	1,	'3832',	'NAVBRASIL',	'FERNANDA NAV'),
(93,	1,	'4013',	'NAVBRASIL',	'VOR-DME'),
(94,	2,	'62 9820-6649',	'Plantão T.I',	'Saulo / Ciro'),
(95,	1,	'63 3218-2446 / 47',	'AERO',	'Hangar'),
(98,	2,	'(62) 3265-1500',	'Central',	'APOC'),
(99,	3,	'(11) 91080-5494',	'T.I',	'Irineu Fernandes Alves');

-- 2022-06-27 20:11:12
