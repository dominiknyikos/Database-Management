CREATE TABLE jatekos (
  id int,
  nev varchar(22) NOT NULL,
  orszagKod varchar(3) NOT NULL,
  CONSTRAINT pk_jatekos PRIMARY KEY (id)
);

CREATE TABLE merkozes (
  id int,
  datum date NOT NULL,
  kezdes time NOT NULL,
  fordulo varchar(3) NOT NULL,
  jatekos1Id int NOT NULL,
  jatekos2Id int NOT NULL,
  jatszma1 int NOT NULL,
  jatszma2 int NOT NULL,
  CONSTRAINT pk_merkozes PRIMARY KEY (id),
  CONSTRAINT fk_jatekos1 FOREIGN KEY (jatekos1Id) REFERENCES jatekos(id),
  CONSTRAINT fk_jatekos2 FOREIGN KEY (jatekos2Id) REFERENCES jatekos(id)
);