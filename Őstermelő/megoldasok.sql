A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

1. feladat:
create database ostermelo default character set utf8 collate utf8_hungarian_ci;
3. feladat:
select DISTINCT partnerek.telepules from partnerek;
4. feladat:
select count(sorsz) as alkalmak from kiszallitasok inner join partnerek on partnerek.id=kiszallitasok.partnerid where partnerek.telepules="Vác";
5. feladat:
select max(kiszallitasok.karton) as legtobb from kiszallitasok where datum BETWEEN "2016-05-01" and "2016-05-31";
6. feladat:
select partnerek.telepules from partnerek  group by 1 having count(partnerek.id)>1;
7. feladat:
select  gyumolcslevek.gynev as ital , sum(kiszallitasok.karton)*6 as doboz from gyumolcslevek inner join kiszallitasok on gyumolcslevek.id=kiszallitasok.gyumleid group by 1
order by 2 desc limit 3;