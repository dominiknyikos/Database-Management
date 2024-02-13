CREATE TABLE szobak (
  szazon int,
  sznev varchar(6),
  agy int,
  potagy int,
  CONSTRAINT pk_szobak PRIMARY KEY (szazon)
);

CREATE TABLE vendegek (
  vsorsz int,
  vnev varchar(16),
  irsz int,
  CONSTRAINT pk_vendegek PRIMARY KEY (vsorsz)
);

CREATE TABLE foglalasok (
  fsorsz int,
  vendeg int,
  szoba int,
  erk date,
  tav date,
  fo int,
  CONSTRAINT pk_foglalasok PRIMARY KEY (fsorsz)
);