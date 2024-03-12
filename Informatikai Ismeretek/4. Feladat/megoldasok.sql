A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

1. feladat:
create database maratonvalto DEFAULT CHARACTER set utf8 collate utf8_hungarian_ci;

3. feladat:
insert into eredmenyek values (1044,4,15765);

4. feladat:
select fnev as futo, szulev from futok where ffi=0 order by 1;

5. feladat:
select fnev as futo, 2016-szulev as kor from futok where 2016-szulev>42 order by 2 desc,szulho desc;

6. feladat:
select fnev as futo, ido from eredmenyek inner join futok on eredmenyek.futo=futok.fid where ffi=1 order by 2 limit 10;

7. feladat:
select csapat as csapat, sum(ido) as csapatido from futok inner join eredmenyek on futok.fid=eredmenyek.futo group by csapat order by 2;