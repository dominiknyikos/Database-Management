A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

1. feladat:
create database papirgyujtes default charachter set utf8 collate utf8_hungarian_ci;
3. feladat:
select nev, osztaly, leadasok.idopont, mennyiseg from tanulok inner join leadasok on tanulok.tazon=leadasok.tanulo where osztaly like "1%";
4. feladat:
select idopont, avg(mennyiseg) from leadasok group by idopont;
5. feladat:
select distinct tanulok.osztaly from tanulok inner join leadasok on tanulok.tazon=leadasok.tanulo where leadasok.idopont="2016.10.28" order by 1;
6. feladat:
select osztaly, sum(mennyiseg)/10000 as mazsa from tanulok inner join leadasok on tanulok.tazon=leadasok.tanulo group by 1 order by 2 desc;
7. feladat:
select nev, osztaly, sum(leadasok.mennyiseg) as összesen from tanulok inner join leadasok on tanulok.tazon=leadasok.tanulo group by 1 order by 3 desc;