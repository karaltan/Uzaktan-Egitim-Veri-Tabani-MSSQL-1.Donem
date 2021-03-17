select * from OGRENCILER
select * from DERSLER
select * from DERS_OGRENCI
--virgülden sonra 2 tablo yazarsam ne olur?
select * from OGRENCILER , DERS_OGRENCI
select * from DERSLER D inner join DERS_OGRENCI DÖ on D.id=DÖ.ders_id

SELECT * FROM OGRENCILER Ö 
INNER JOIN DERS_OGRENCI DÖ ON Ö.id=DÖ.ogrenci_id 
INNER JOIN DERSLER D ON D.id=DÖ.ders_id
