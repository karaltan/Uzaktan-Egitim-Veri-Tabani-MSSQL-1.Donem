--group by

--------------------------------------------

SELECT * FROM kisiler GROUP BY ülke --hatalı kullanım

SELECT ülke FROM kisiler GROUP BY ülke
select distinct ülke FROM kisiler

--------------------------------------------
select * from kisiler order by ülke asc
--------------------------------------------
SELECT COUNT (id), ülke FROM kisiler GROUP BY ülke
--------------------------------------------
--ülkeler bazındaki ortalama maaş nedir?
SELECT ülke, AVG(maaş) FROM kisiler GROUP BY ülke
--ülkeler bazındaki toplam maaş nedir?
SELECT COUNT (id) as [ÇALIŞAN SAYISI],ÜLKE, SUM(maaş) as [TOPLAM MAAŞ] FROM kisiler GROUP BY ülke
--ülkeler bazındaki maksimum maaş nedir?
SELECT COUNT (id) as [ÇALIŞAN SAYISI],ülke, MAX(maaş) as [MAX MAAŞ] FROM kisiler GROUP BY ülke
--ülkeler bazındaki minimum maaş nedir?
SELECT COUNT (id) as [ÇALIŞAN SAYISI],ülke, MIN(maaş) as [MAX MAAŞ] FROM kisiler GROUP BY ülke
-----------------------------------------------------------
--ÖRNEK: maaş ortalamasını bayanlar ve erkekler olarak görmek isteseydik:
select cinsiyet, AVG(maaş) from kisiler where cinsiyet=0 --bayanlar
select AVG(maaş) from kisiler where cinsiyet=1 --erkekler

select AVG(maaş) from kisiler 

SELECT cinsiyet, AVG(maaş) AS sayı FROM kisiler GROUP BY cinsiyet
