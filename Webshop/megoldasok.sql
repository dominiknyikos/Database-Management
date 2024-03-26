-- 1. feladat
create database webshop default CHARACTER set utf8 collate utf8_hungarian_ci;
-- 3. feladat
alter table szamlafej add primary key(id);
alter table szamlatetel add primary key(id);
-- 4. feladat
select megnevezes as "termék neve", ar as "termék ára" from termekek order by 2;
-- 5. feladat
update termekek set ar=ar*0.95 where ar>5000;
-- 6. feladat
select sum(mennyiseg*bruttoegysegar) as "bruttó árbevétel" from szamlatetel inner join szamlafej on szamlatetel.szamlafejid=szamlafej.id where teljesites between '2018.01.01' and '2018.01.15'
-- 7. feladat
select nev, telepules from vevok left join szamlafej on vevok.id=szamlafej.vevoid where vevok.id not in (select szamlafej.vevoid from szamlafej) order by nev;
-- 8. feladat
select megnevezes, sum(szamlatetel.mennyiseg*szamlatetel.bruttoegysegar) as bevetel from termekek inner join szamlatetel on termekek.id=szamlatetel.termekid group by megnevezes order by 2 desc;