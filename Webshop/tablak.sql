Create table termekek (
	id int not null AUTO_INCREMENT PRIMARY key,
    megnevezes varchar(40) not null UNIQUE,
    ar numeric(10,0)
);

create table vevok (
	id int not null AUTO_INCREMENT PRIMARY key,
	nev varchar(100) not null,
	iranyitoszam varchar(4),
	telepules varchar(50),
	utcahazszam varchar(100)
);

create table szamlafej (
	id int not null AUTO_INCREMENT PRIMARY key,
	szamlaszam varchar(30) not null unique,
	kelt datetime not null,
	teljesites datetime not null,
	vevoid int not null
);

create table szamlatetel (
	id int not null AUTO_INCREMENT PRIMARY key,
	szamlafejid int not null,
	termekid int not null,
	mennyiseg int not null,
	mennyisegiegyseg varchar(20) not null,
	bruttoegysegar numeric(10,0) not null,
	afaszazalek int not null
);