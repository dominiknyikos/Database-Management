  CREATE TABLE IF NOT EXISTS `diak` (
  `om` varchar(11) NOT NULL DEFAULT '',
  `neve` varchar(26) DEFAULT NULL,
  `szuletett` date DEFAULT NULL,
  `anyja` varchar(23) DEFAULT NULL,
  `varos` varchar(19) DEFAULT NULL,
  `iskola` varchar(8) DEFAULT NULL,
  `netfit` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`om`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `iskola` (
  `om` varchar(8) NOT NULL DEFAULT '',
  `neve` varchar(69) DEFAULT NULL,
  `vezeto` varchar(17) DEFAULT NULL,
  `cim` varchar(19) DEFAULT NULL,
  `telefon` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`om`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `meres` (
  `id` varchar(9) NOT NULL DEFAULT '',
  `bmi` decimal(4,2) DEFAULT NULL,
  `testzsir` decimal(3,1) DEFAULT NULL,
  `hasizom` int(2) DEFAULT NULL,
  `torzsemeles` decimal(3,1) DEFAULT NULL,
  `fekvotamasz` int(2) DEFAULT NULL,
  `szoritoero` decimal(4,2) DEFAULT NULL,
  `tavolugras` int(3) DEFAULT NULL,
  `hajlekonysag` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;