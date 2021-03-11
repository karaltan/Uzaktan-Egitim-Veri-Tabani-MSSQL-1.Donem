-- AS KOMUTU(ALIAS NAME): alanlar takma isim konur, sasdece görünümü etkiler,
-- gerçekte alan adý deðiþtirmez
-- alter table ..... gibi deðil

SELECT * FROM ogrenciler

-- alaný, adýsoyadý, lysdurumunu göster
-- o zaman * yerine gösterilecek alanlar yazýlýr 
-- ALANLARIN ARASINA VÝRGÜL KONUR

select alan AS ALANI,adýsoyadý AS [ÝSÝM SOYÝSÝM],lysdurumu AS LYS_DURUM from ogrenciler

-- AS KULLANMADAN TAKMA ÝSÝM VERMEK
select alan ALANI,adýsoyadý [ÝSÝM SOYÝSÝM],lysdurumu LYS_DURUM from ogrenciler

-- = KULLANARAK TAKMA ÝSÝM VERMEK
select ALANI=alan,[ÝSÝM SOYÝSÝM]=adýsoyadý,LYS_DURUM=lysdurumu from ogrenciler

-- TABLOYA ALIAS KULLANMAK
select OGR.ALAN,OGR.ADISOYADI from ogrenciler AS OGR