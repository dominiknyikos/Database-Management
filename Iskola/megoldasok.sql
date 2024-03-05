A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

1. feladat:
create database beiskolazas default character set utf8 collate utf8_hungarian_ci;
3. feladat:
alter table jelentkezesek add PRIMARY KEY(diak);
alter table jelentkezesek add INDEX (tag);
4. feladat:
update diakok set kpmagy=43 where oktazon=0143302;
5. feladat:
select nev from diakok where hozott>39 and kpmagy=50 and kpmat=50 order by 1;
6. feladat:
select tagozatok.agazat as agazat, count(jelentkezesek.tag) as jelentkezoszam, max(hozott)-min(hozott) as terjedelem from jelentkezesek inner join tagozatok on jelentkezesek.tag=tagozatok.akod inner join diakok on jelentkezesek.diak=diakok.oktazon where hely=1 and nyek=1 group by 1 order by 2 desc;
7. feladat:
select diakok.nev as nev, tagozatok.agazat as agazat, tagozatok.nyek as nyek, jelentkezesek.hely as hely, (diakok.hozott+diakok.kpmagy+diakok.kpmat) as osszpont from jelentkezesek inner join tagozatok on tagozatok.akod=jelentkezesek.tag inner join diakok on diakok.oktazon=jelentkezesek.diak order by 5 desc, 4 asc;