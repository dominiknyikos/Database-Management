Katica büfé
/* 1. feladat:  */
create database katica default CHARACTER set utf8 collate utf8_hungarian_ci;
/* 3. feladat:  */
alter table kategoria add primary key(id);
/* 4. feladat:  */
select * from forgalom inner join kategoria on forgalom.kategoriaId=kategoria.id;
/* 6. feladat:  */
insert into kategoria VALUES (3, "Ajándéktárgyak");
/* 7. feladat:  */
update forgalom set termek="Gyros tál" where termek="Gyrostál";
/* 8. feladat:  */
select termek, vevo from forgalom where kiadva=0 order by vevo;
/* 9. feladat:  */
select kategoriaNev as Kategória, sum(nettoar*mennyiseg) as "Nettó bevétel", sum(nettoar*mennyiseg)*0.27 as "Forgalmi Adó" from forgalom inner join kategoria where forgalom.kategoriaId=kategoria.id group by kategoriaNev;