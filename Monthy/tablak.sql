CREATE TABLE epizodok (
  id int NOT NULL,
  nev varchar(255) DEFAULT NULL,
  sorozat varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE tipusok (
  id int NOT NULL,
  tipus varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE forgatokonyv (
  id int NOT NULL,
  epizodid int DEFAULT NULL,
  resz varchar(255) DEFAULT NULL,
  tipusid int DEFAULT 1,
  szinesz varchar(255) DEFAULT NULL,
  karakter varchar(255) DEFAULT NULL,
  reszletek text NOT NULL,
  felvetel_datuma date NOT NULL,
  lejatszas_datuma date NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FK_forgatokonyv_tipusok_id FOREIGN KEY (tipusid)
  REFERENCES tipusok (id),
  CONSTRAINT FK_scripts_epizodok_id FOREIGN KEY (epizodid)
  REFERENCES epizodok (id)
);