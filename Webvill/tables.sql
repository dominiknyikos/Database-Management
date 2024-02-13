CREATE TABLE kategoriak (
  kazon int,
  knev varchar(40),
  CONSTRAINT pk_kazon PRIMARY KEY (kazon)
);

CREATE TABLE termekek (
  tazon int,
  kazon int,
  tnev varchar(50),
  fesz varchar(10),
  telj int,
  foglalat varchar(5),
  elettartam int,
  ar int,
  CONSTRAINT pk_tazon PRIMARY KEY (tazon)
);

CREATE TABLE rendelesek (
  razon int,
  rdatum date,
  tazon int,
  db int,
  CONSTRAINT pk_razon PRIMARY KEY (razon)
);